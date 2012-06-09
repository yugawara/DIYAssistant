#!/usr/bin/env ruby

require 'rubygems'
require 'rasem'
img = Rasem::SVGImage.new(1000,1000) do
  circle 20, 20, 5
  circle 50, 50, 5
  line 20, 20, 50, 50
end

puts img.output
