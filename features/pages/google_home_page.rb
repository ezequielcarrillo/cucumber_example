class GoogleHomePage
  include PageObject

  page_url("https://google.com")

  text_field(:search_box,:id=>"lst-ib")

  def loading_done
    self.text_field.wait_until_present
  end

  def searchFor(query_search)
    self.loading_done
    self.search_box = query_search
    self.search_box_element.send_keys :enter
  end
end
