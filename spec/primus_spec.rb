require "spec_helper"

describe Primus do
  let(:subject) { Primus::Reorder.new }

  let(:empty_hash) { {} }
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
    it "returns one capitlized letter" do
      expect(subject.call(short_hash)).to eq "B"
    end
  end

  context "when passing primus a short hash" do
    it "returns one capitlized letter" do
      expect { subject.call(empty_hash) }.to raise_error(RuntimeError, "This hash is empty")
    end
  end
end
