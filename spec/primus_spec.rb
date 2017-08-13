require "spec_helper"

describe Primus do
  let(:subject) { Primus::Reorder.new }

  let(:hash) do
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
      expect(subject.call(hash)).to eq "HFDB"
    end
  end
end
