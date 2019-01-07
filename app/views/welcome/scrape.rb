require 'rubygems'
require 'nokogiri'

page = Nokogiri::HTML(open("Quotley.html"))
puts page.class   # => Nokogiri::HTML::Document
