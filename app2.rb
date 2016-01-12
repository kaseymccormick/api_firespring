require 'net/http'
require 'rubygems'
require 'json'
require 'uri'
require 'curb'


#
# ----------------------------------------------
#   Curl request some one else had 
# ---------------------------------------------
#
#     curl -s
#     -X POST
#     -H "Content-Type: application/json"
#     -d '[{"name": "tbone"}]'
#     api.turfgame.com/v4/users
# 
# ----------------------------------------------
#   Curl to ruby someone else did
# ---------------------------------------------
#
# url = "http://api.turfgame.com/v4/users"
# uri = URI.parse(url)
# data = [{"name" => "tbone"}]
#
# headers = {"Content-Type" => "application/json"}
#
# http = Net::HTTP.new(uri.host,uri.port)
#
# response = http.post(uri.path,data.to_json,headers)
#     puts response.code
#     puts response.body[6,10]

# -------------------------------------------
#    Curl request I was given
# ------------------------------------------
# curl -u 2676d01ba72843269d41e10632509f33: "https://my.firespring.com/api/v1/websites/2546/orders/1770953" \
#     -X GET \
#     -H "Content-type: application/json" \
#     -d '[]'
# 
# ------------------------------------
#   My try
# -----------------------------------
# url = "https://my.firespring.com/api/v1/websites/2546/orders/1770953"
# uri = URI.parse(url)
# data = []
#
# headers = {"Content-Type" => "application/json"}
#
# http = Net::HTTP.new(uri.host,uri.port)
# req = Net::HTTP::Get.new(uri)
# req.basic_auth '2676d01ba72843269d41e10632509f33', 'https://my.firespring.com/api/v1/websites/2546/orders/1770953'
#
#
# response = http.get(uri.path,data.to_json,headers)
#     puts response.code
#     puts response.body
#   
#----------------------------
# error that occurs
#-------------------------
# undefined method `keys' for "[]":String (NoMethodError)



# ------------------------
# someone elses curl attempt to ruby
# --------------------------------
#
# url = 'http://192.168.122.198 ...'
# uri = URI.parse(url)
# request = Net::HTTP::Get.new(uri.path)
# request['Accept'] = 'application/json'
# request.body = {'credentials' => {'username' => 'admin', 'password' => 'admin'}}
# response = Net::HTTP.get(uri)
#
# ------------------------------
# stack overflow answer to 401 error to above
# ------------------------------
# uri = URI.parse("http://192.168.122.198")
#
# http = Net::HTTP.new(uri.host, uri.port)
# request = Net::HTTP::Get.new(uri.request_uri)
# request.basic_auth("admin", "admin")
# response = http.request(request)


# ------------------------
# using firespring data in their attempt
# --------------------------------
#
url = "https://my.firespring.com/api/v1/websites/2546/orders/1770953"
uri = URI.parse(url)
request = Net::HTTP::Get.new(uri.path)
request['Accept'] = 'application/json'
request.body = {'credentials' => {'username' => '2676d01ba72843269d41e10632509f33', 'password' => 'https://my.firespring.com/api/v1/websites/2546/orders/1770953'}}
response = Net::HTTP.get(uri)

puts response
#
# ------------------------------
# using my data in their answer
# ------------------------------
# uri = URI.parse("https://my.firespring.com/api/v1/websites/2546/orders/1770953")
#
# http = Net::HTTP.new(uri.host, uri.port)
# request = Net::HTTP::Get.new(uri.request_uri)
# request.basic_auth("2676d01ba72843269d41e10632509f33", "https://my.firespring.com/api/v1/websites/2546/orders/1770953")
# response = http.request(request)


