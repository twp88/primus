# frozen_string_literal: true

require 'primus/version'

module Primus
  class Reorder
    def call(hash)
      hash_empty?(hash)
      take_odd_keys(hash)
    end

    private

    def hash_empty?(hash)
      raise 'This hash is empty' if hash.empty?
    end

    def take_odd_keys(hash)
      array = hash.each_with_index.map { |(key), index| key.upcase if index.odd? }.compact
      array.sort.reverse.join('')
    end
    # add rubo cop, frozen string, revise sort each with index, each_slice,
    # slice_each, call this without caiing .new
  end
end
