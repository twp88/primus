require "primus/version"

module Primus
  class Reorder
    def reorder(hash)
      take_odd_keys(hash)
      sort_array
      convert_to_upcase_string
      string
    end

  private

    def take_odd_keys(hash)
      hash.each_with_index { |(key,value), index| array << key if index.odd? }
    end

    def sort_array
      array.sort! { |x,y| y <=> x }
    end

    def convert_to_upcase_string
      array.each { |c| string << c.upcase }
    end

    def array
      @array ||= []
    end

    def string
      @string ||= ""
    end

  end
end
