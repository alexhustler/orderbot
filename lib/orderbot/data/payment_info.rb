module OrderBot
  class PaymentInfo < AbstractData
    attr_accessor :payment_type,
      :transaction_id,
      :payment_date,
      :authorization_code,
      :last_four_digits

    def to_h
      hash = super.except("LastFourDigits")
      hash["lastFourDigits"] = last_four_digits
      hash
    end
  end
end
