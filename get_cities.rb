# encoding: utf-8
require 'did_you_mean'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.stats.gov.cn/tjsj/tjbz/xzqhdm/201504/t20150415_712722.html'))
doc.xpath('//div/div[1]/div[3]/div[1]/div/div/div/p[@class="MsoNormal"]').each do |link|
  puts link.content
  puts link.content.strip.split(/\s+/)
  array = link.content.strip.split(/\s+/)
  puts array
end
