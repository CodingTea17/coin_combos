
RSpec.describe("Coin#reduce_sum") do
  it ("takes as many quarters out of an amount as possible and returns the remainder") do
    amount = Coin.new(89)
    expect(amount.reduce_sum(25)).to eq(14)
  end
end
