require 'pry'

module SimpleTextReformatter
  class PhoneNumberFormatter
    def initialize(base_phone_number_string)
      @base_phone_number_string = remove_region_code(base_phone_number_string.to_s)
    end

    def reformat
      numbers = @base_phone_number_string.scan(/\d/)

      if numbers.length < 10
        numbers.join
      else
        phone_number = sprintf "(%3s) %3s-%4s", numbers[0,3].join, numbers[3,3].join, numbers[6,4].join
        phone_number += " x#{numbers[10..-1].join}" if numbers[10..-1].any?

        return phone_number
      end
    end

    private

    def remove_region_code(str)
      if str.strip[0] == '1' && str.length > 10
        str[1..-1]
      else
        str
      end
    end
  end
end
