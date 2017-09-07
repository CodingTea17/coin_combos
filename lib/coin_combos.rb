class Coin
  def initialize(amount)
    @amount = amount*100
    @coins = {"quarter" => 25, "dime" => 10, "nickel" => 5, "penny" => 1}
    # @coins = [25, 10, 5, 1]
  end



  def change
    @coins.each do |key, value|
      remainder = (@amount%value)
      @coins[key] = ((@amount - remainder) / value)
      @amount = remainder
    end
  end


  # def monster
  #   @coins.map do |coin|
  #     remainder = (@amount%coin)
  #     num_of_coins = (@amount - remainder) / coin
  #     @amount = remainder
  #     num_of_coins
  #   end
  # end
end
