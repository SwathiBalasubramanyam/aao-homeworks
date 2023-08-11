require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", "aysgdjsaj") }
  let(:dessert) {Dessert.new("sweet", 10, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("sweet")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("sweet", "10", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients << "sugar").to eq(["sugar"])
      expect(dessert.ingredients << "salt").to eq(["sugar", "salt"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.mix!).to eq(["salt", "sugar"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(1)).to eq(9)
      
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat(15)}.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect{dessert.titleize}.to eq("Aysgdjsaj")
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect{dessert.make_more}.to eq("Aysgdjsaj")
    end
  end
end