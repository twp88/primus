require "spec_helper"

describe Primus do
  let(:subject) { Class.new { extend Primus } }
  
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

  context "when passing primus a long hash"
  it "retuns a capitlized string" do
    expect(subject.reorder(hash)).to eq "HFDB"
  end
end
