require 'money'

Money.locale_backend = nil
Money.default_infinite_precision = false

module SimpleTextReformatter
  class CurrencyFormatter
    def initialize(currency_string)
      @currency_string = currency_string
    end

    def reformat
      amount = @currency_string.to_f * 100

      return Money.new(amount, 'USD').format
    end
  end
end
