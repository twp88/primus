# frozen_string_literal: true

require 'primus/version'

# Takes a hash and returns string of reverse order odd keys
class Primus
  def self.call(hash)
    raise 'This hash is empty' if hash.empty?
    array = hash.each_with_index.map { |(key), index| key.upcase if index.odd? }.compact
    array.sort.reverse.join('')
  end
end

# add rubo cop, frozen string, revise sort each with index, each_slice,
# slice_each, call this without caiing .new
