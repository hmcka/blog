Before do
    @browser = Watir::Browser.new
  @browser.goto "http://localhost:4567/setup"
  
end

After do
  # @browser.close
end
