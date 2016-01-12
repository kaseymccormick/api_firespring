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
# curl -u api-key: "https://my.firespring.com/api/v1/websites/2546/orders/1770953" \
#     -X GET \
#     -H "Content-type: application/json" \
#     -d '[]'
# 
# ------------------------------------
#   My try
# -----------------------------------
url = "https://my.firespring.com/api/v1/websites/2546/orders/1770953"
uri = URI.parse(url)
data = []

headers = {"Content-Type" => "application/json"}

http = Net::HTTP.new(uri.host,uri.port)
req = Net::HTTP::Get.new(uri)
req.basic_auth '2676d01ba72843269d41e10632509f33', 'https://my.firespring.com/api/v1/websites/2546/orders/1770953'


response = http.get(uri.path,data.to_json,headers)
    puts response.code
    puts response.body
    
#----------------------------
# error that occurs
#-------------------------
# undefined method `keys' for "[]":String (NoMethodError)



    

