require 'money'
require 'money/bank/google_currency'

class Currency
  attr_accessor :currency, :currency2, :number, :new_currency

  def initialize currency, currency2, number
    @currency = currency
    @currency2 = currency2
    @number = number

    Money.default_bank = Money::Bank::GoogleCurrency.new
  end

  def getConversion
    n = @number.to_money(@currency)

    n.exchange_to(@currency2) * @number
  end
end