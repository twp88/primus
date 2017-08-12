require "primus/version"

module Primus
  def reorder(hash)
  array = []
  string = ""
  hash.each_with_index { |(key,value), index| array << key if index.odd? }
  array.sort! { |x,y| y <=> x }
  array.each { |c| string << c.upcase }
  string
end
end
