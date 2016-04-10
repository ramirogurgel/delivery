class HomeController < ApplicationController
 require 'net/http'
 require 'uri'
 require 'open-uri'
 require 'cgi'
 require 'addressable/uri'
 require 'json'
 require 'nokogiri'
 require 'open_uri_redirections'
	def index
		
    end

    def map
        require 'nokogiri'
        require 'open-uri'
        require 'open_uri_redirections'
    	@adr_mark = Geocoder.search(params[:adrress])
    	@full_adr = params[:adrress]
    	uri_domain  = 'https://www.deliveras.gr'
    	uri_path = '/search.php'
        cuisine = ['cuisine'].first
    	lat = @adr_mark.first.coordinates.first.to_s
    	lon = @adr_mark.first.coordinates.last.to_s
    	@uri_string = 
    	uri_domain +
        uri_path +
        "?" +
        "lat=" +
        lat +
        "&" +
        "lng=" +
        lon
        @hash = Gmaps4rails.build_markers(@adr_mark) do |adrress, marker|
        marker.lat adrress.latitude
        marker.lng adrress.longitude
       end   
    end

    def pitsas
    require 'nokogiri'
    require 'open-uri'

   url = 'http://www.pizzafan.gr/el/menu/pizzas'

   data = Nokogiri::HTML(open(url))

    @pitsa_img = data.css('.item_img')
    @pitsa = data.css('.pizza_wrapper')
    @pitsa_url = data.css('a.inline-url')
    end

    def salads
    require 'nokogiri'
    require 'open-uri'

   url = 'http://www.pizzafan.gr/el/menu/salads'

   data = Nokogiri::HTML(open(url))

    @pitsa_img = data.css('.item_img')
    @pitsa = data.css('.pizza_wrapper')
    @pitsa_url = data.css('a.inline-url')
    end

    def pasta
    require 'nokogiri'
    require 'open-uri'

   url = 'http://www.pizzafan.gr/el/menu/pasta'

   data = Nokogiri::HTML(open(url))

    @pitsa_img = data.css('.item_img')
    @pitsa = data.css('.pizza_wrapper')
    @pitsa_url = data.css('a.inline-url')
    end

    def extras
    require 'nokogiri'
    require 'open-uri'

   url = 'http://www.pizzafan.gr/el/menu/extras'

   data = Nokogiri::HTML(open(url))

    @pitsa_img = data.css('.item_img')
    @pitsa = data.css('.pizza_wrapper')
    @pitsa_url = data.css('a.inline-url')
    end

    def smartbox
    require 'nokogiri'
    require 'open-uri'

   url = 'http://www.pizzafan.gr/el/menu/combo/smartbox'

   data = Nokogiri::HTML(open(url))

    @pitsa_img = data.css('.item_img')
    @pitsa = data.css('.pizza_wrapper')
    @pitsa_url = data.css('a.inline-url')
    end

    def burgers
    require 'nokogiri'
    require 'open-uri'

   url = 'http://www.goodysdelivery.gr/gr/menu/extreme-burgers/'

   data = Nokogiri::HTML(open(url))

    url = 'http://www.goodysdelivery.gr/gr/menu/extreme-burgers/'

    data = Nokogiri::HTML(open(url))
    @md = data.css('.product') 
    end


    private

def params_adrress
	params.require(:adrress).permit(:adrress,)
end
end
