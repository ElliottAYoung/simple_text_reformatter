require "simple_text_reformatter/currency_formatter"
require "simple_text_reformatter/phone_number_formatter"
require "simple_text_reformatter/version"

module SimpleTextReformatter
  class Error < StandardError; end

  def self.format_as_phone_number(string)
    SimpleTextReformatter::PhoneNumberFormatter.new(string).reformat
  end

  def self.format_as_currency(string)
    SimpleTextReformatter::CurrencyFormatter.new(string.to_s).reformat
  end
end
