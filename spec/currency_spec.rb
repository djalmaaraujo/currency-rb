require_relative '../lib/currency'

describe Currency do
  let(:currency) { Currency.new :BRL, :USD, 4 }

  describe "#new" do
    it "returns a new currency object" do
      currency.should be_an_instance_of Currency
    end

    it "throws an ArgumentError when not pass 2 parameters" do
      lambda { Currency.new :BRL }.should raise_exception ArgumentError
    end
  end

  describe "currency" do
    it "returns the correct currency" do
      currency.currency.should eql :BRL
    end

    it "returns the corect value" do
      currency.number.should eql 4
    end

    it "returns the conversion of two currences" do
      currency.getConversion.should > 1.97
    end
  end
end