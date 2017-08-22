require "primus/version"

module Primus
  class Reorder
    def call(hash)
      is_hash_empty?(hash)
      sort_array(take_odd_keys(hash))
    end

    private

    def is_hash_empty?(hash)
     raise RuntimeError.new("This hash is empty") if hash.empty?
    end

    def take_odd_keys(hash)
      hash.each_with_index.map { |(key,value), index| key.upcase if index.odd? }.compact
    end

    def sort_array(array)
      array.sort.reverse.join("")
    end
#add rubo cop, frozen string, revise sort each with index, each_slice, slice_each, call this without caiing .new
  end
end
