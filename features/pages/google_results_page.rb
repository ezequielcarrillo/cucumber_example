class GoogleResultsPage
  include PageObject


  link(:images_results,:class=>"qs", :text=>'Imágenes')
  div(:header,:id=>"hdtbSum")
  element(:images_container, :class=>'hd')
  element(:results_container, :id=>'rg')


  def loading_done
    self.header_element.wait_until_present
  end

  def click_on_link(link_name)
    self.loading_done
    self.images_results_element.click
  end

  def verify_results
    self.loading_done
    self.images_container.exists?
  end

  def verify_results_images()
    self.loading_done
    self.results_container_element.exists?
  end

end