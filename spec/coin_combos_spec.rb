require('coin_combos')
require('pry')

RSpec.describe("Coin#change") do
  it ("will return an array containing the number of coins needed to make the least amount of change") do
    amount = Coin.new(0.99)
    expect(amount.change).to eq({"quarter"=>3, "dime"=>2, "nickel"=>0, "penny"=>4})
  end
end
