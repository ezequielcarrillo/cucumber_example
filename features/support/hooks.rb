require 'rspec'
require 'rspec/expectations'
require 'watir'
require 'page-object'
require 'require_all'

# Std lib
require 'uri'
require 'json'
require 'yaml'

browser = Watir::Browser.new :chrome

Before do
  @browser = browser
end

Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
  puts "Starting scenario: #{scenario.name}"
end


After do |scenario|
  if scenario.failed?
      @@filename = Time.now
      browser.screenshot.save ("results/#{scenario.name}#{@@filename}.png")
    else # not using chatham formatter, let's encode instead: http://stackoverflow.com/a/6269921
      #do something
  end
end

World(PageObject::PageFactory)



