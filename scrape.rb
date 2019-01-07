require 'rubygems'
require 'nokogiri'

page = Nokogiri::HTML(open("quotley.html"))
puts page.class   # => Nokogiri::HTML::Document
