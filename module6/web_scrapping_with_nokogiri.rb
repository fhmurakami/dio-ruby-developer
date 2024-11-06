require 'net/http'
require 'nokogiri'

https = Net::HTTP.new('example.com', 443)
https.use_ssl = true

response = https.get('/')

doc = Nokogiri::HTML(response.body)
paragraphs = doc.css('p')

paragraphs.each do |p|
  puts '-' * 20
  puts p.text
  puts
end
