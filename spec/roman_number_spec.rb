require 'spec_helper'

describe RomanNumber do

  let(:numeral) { "I" }
  subject { described_class.new(numeral) }

  describe "#to_decimal" do
    context "single I" do
      it "returns one" do
        expect(subject.to_decimal).to eq 1
      end
    end

    context "multiple I" do
      let(:numeral) { "II" }

      it "returns 2 when II is passed" do
        expect(subject.to_decimal).to eq 2
      end
    end

    context "V" do
      let(:numeral) { "V" }

      it "returns 5" do
        expect(subject.to_decimal).to eq 5
      end
    end

    context "VI" do
      let(:numeral) { "VI" }

      it "returns 6" do
        expect(subject.to_decimal).to eq 6
      end
    end


    context "VII" do
      let(:numeral) { "VII" }

      it "returns 7" do
        expect(subject.to_decimal).to eq 7
      end
    end

    context "exceptional cases" do
      context "IV" do
        let(:numeral) { "IV" }

        it "returns 4" do
          expect(subject.to_decimal).to eq 4
        end
      end

      context "LXXIV" do
        let(:numeral) { "LXXIV" }
        it "returns 74" do
          expect(subject.to_decimal).to eq 74
        end
      end
    end
  end
end