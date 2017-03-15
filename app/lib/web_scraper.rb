require 'mechanize'

class WebScraper
  class << self

    def scrape

      url = "https://www.technischeunie.nl/"

      request = Mechanize.new

      page = request.get(url)
      form = page.forms.last

      customerNumber = form.fields[5]
      userName = form.fields[7]
      password = form.fields[9]

      customerNumber.value = "xx"
      userName.value = "x"
      password.value = "xx"


      page = form.submit

      raise "not implemented"

    end


  end
end
