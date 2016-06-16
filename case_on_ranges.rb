require 'uri'
require 'net/http'

#登录open test
url = URI("http://223.252.223.155:8184/api/pirate/doLogin?appId=4af286eccd824bcd88f92b718ed28944&appKey=4f401e2d09304232ab6923f9c38e068a&sourceNo=1000241633&loginName=15013551003&mobile=&outCustomerId=15013551003&merchantNo=1000241633&channel=H5")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["cache-control"] = 'no-cache'
request["postman-token"] = '461be134-f407-70fb-f00f-ff468a597efe'

response = http.request(request)
puts response.read_body


#生成收银台地址
url = URI("http://223.252.223.155:8184/api/widgets/cash_desk")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["cache-control"] = 'no-cache'
request["postman-token"] = '1c5b3300-da35-b17a-1344-cde3ae9f74c7'
request["content-type"] = 'application/x-www-form-urlencoded'
request.body = "appId=4af286eccd824bcd88f92b718ed28944&mobile=&loginName=15013551003&sourceNo=1000241633&outTradeNo=1463370319729&merchantNo=1000241633&childMerchantNo=1000241633&orderName=%22%E6%B5%8B%E8%AF%95%E8%AE%A2%E5%8D%95%22&amount=200&orderDesc=%22%E6%B5%8B%E8%AF%95%E8%AE%A2%E5%8D%95%22&orderUrl=&orderNotifyUrl=http%3A%2F%2Fopenplatform-luochun-sit%3A8184%2Fpay%2Fmerchant_pay_result&orderFrontNotifyUrl=http%3A%2F%2Fwww.wjjr.cc&productNo=8000&productName=%22%E6%B5%8B%E8%AF%95%E4%BA%A7%E5%93%81%22&openWidgetUrl=&scenesCode=020200002&urlKey=cash_desk_pc&channel=PC&outCustomerId=15013551003&extendParams=123456"

response = http.request(request)
puts response.read_body

#访问收银台
url = URI("http://106.2.100.249:8182/widgets/cash_desk?appId=4af286eccd824bcd88f92b718ed28944&urlKey=cash_desk_pc&loginName=15013551003&sourceNo=1000241633&token=91da6348190d671dea03cbf3a6acf8e0ab878276&transCode=A76DF1221AFC0D0E846865E321CBE9C2&timestamp=1463373295234&signature=9c9aff67515ffdc85bb1ada7f31f910d")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["cache-control"] = 'no-cache'
request["postman-token"] = '1400ea4d-b9f9-395a-857c-faae412b4fbd'

response = http.request(request)
puts response.read_body