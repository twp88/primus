require "primus/version"

module Primus
  class Reorder
    def call(hash)
      is_hash_empty?(hash)
      sort_array
      convert_to_upcase_string
    end

  private

    def is_hash_empty?(hash)
     raise RuntimeError.new("This hash is empty") if hash.empty?
     take_odd_keys(hash)
    end

    def take_odd_keys(hash)
      hash.each_with_index { |(key,value), index| array << key if index.odd? }
    end

    def sort_array
      array.sort! { |x,y| y <=> x }
    end

    def convert_to_upcase_string
      array.each { |c| string << c.upcase }
      string
    end

    def array
      @array ||= []
    end

    def string
      @string ||= ""
    end

  end
end
