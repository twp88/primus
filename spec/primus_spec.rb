require 'spec_helper'
require './lib/primus'

describe Primus do
  include Primus

  context 'when passing primus a long hash' do
    let(:long_hash) do
      {
        'a' => 'This',
        'b' => 'is',
        'c' => 'a',
        'd' => 'longish',
        'e' => 'hash',
        'f' => 'for',
        'g' => 'testing',
        'h' => 'purposes',
        'i' => '!'
      }
    end

    it 'returns a capitlized string' do
      expect(call(long_hash)).to eq 'HFDB'
    end
  end

  context 'when passing primus a short hash' do
    let(:short_hash) { { 'a' => 'Indeed', 'b' => 'a', 'c' => 'short_hash' } }

    it 'returns one capitlized letter' do
      expect(call(short_hash)).to eq 'B'
    end
  end

  context 'when passing primus an empty hash' do
    let(:empty_hash) { {} }

    it 'returns an error message' do
      expect { call(empty_hash) }
        .to raise_error(RuntimeError, 'This hash is empty')
    end
  end
end
