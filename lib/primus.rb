require "primus/version"

module Primus
  class Reorder
    def reorder(hash)
      take_odd_keys(hash)
      array.sort! { |x,y| y <=> x }
      array.each { |c| string << c.upcase }
      string
    end

  private

    def take_odd_keys(hash)
      hash.each_with_index { |(key,value), index| array << key if index.odd? }
    end

    def array
      @array ||= []
    end

    def string
      @string ||= ""
    end

  end
end
