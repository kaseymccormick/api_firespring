# debugging
require "pry"
# web application library and domain-specific language
require "sinatra"
require "sinatra/reloader"
require "sinatra/json"
# dealing with api request
require 'net/http'
require 'rubygems'
require 'json'
require 'uri'

# controllers
require_relative"controllers/main"


uri = URI.parse("https://my.firespring.com/api/v1/websites/2546/orders/1770953")

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
request = Net::HTTP::Get.new(uri.request_uri)


request.basic_auth("2676d01ba72843269d41e10632509f33", " ")
response = http.request(request)

result = response.body
  
format_result = JSON.parse(result, symbolize_names: true) #=> {key: :value}
  
puts format_result[:priceSubtotal]