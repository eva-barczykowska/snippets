
require_relative './switch.xml'
require 'nokogiri'


doc = Nokogiri::XML(xml) # what exactly does this do? build node structure so that we can search it?
elem = doc.xpath('//XCUIElementTypeSwitch')
puts elem
