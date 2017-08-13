require "spec_helper"

describe Primus do
  let(:subject) { Primus::Reorder.new }
  let(:short_hash) { { "a" => "Indeed", "b" => "a", "c" => "short_hash" } }

  let(:long_hash) do
    {
      "a" => "This",
      "b" => "is",
      "c" => "a",
      "d" => "longish",
      "e" => "hash",
      "f" => "for",
      "g" => "testing",
      "h" => "purposes",
      "i" => "!",
    }
  end

  context "when passing primus a long hash" do
    it "retuns a capitlized string" do
      expect(subject.call(long_hash)).to eq "HFDB"
    end
  end

  context "when passing primus a short hash" do
    expect(subject.call(short_hash)).to eq "B"
  end
end
