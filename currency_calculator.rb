require "pry"

class CurrencyConverter
  attr_reader :currency_rate
  attr_reader :denomination

  def initialize amount, type = usd:
    @amount = amount
    @denomination = { usd: "$", gbp: "£" }
  end
def amount
  @amount
end

def denomination
  @denomination
end

def times(num)
  CurrencyConverter.new(@amount * num), @denomination)
end

def plus (c)
  CurrencyConverter.new(@amount + c.amount), @denomination)
end

def minus (c)
  CurrencyConverter.new(@amount - c.amount), @denomination)
end
end


a = CurrencyConverter.new(5, :usd)
b = CurrencyConverter.new(10, :usd)
c = CurrencyConverter.new(5, :gbp)

a.amount
a.denomination
a.times(4)
a.plus(b)
a.minus(a)
a.plus(c)
