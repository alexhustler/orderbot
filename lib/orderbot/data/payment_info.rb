module OrderBot
  class PaymentInfo < Base
    attr_accessor :payment_type,
      :transaction_id,
      :payment_date,
      :authorization_code,
      :last_four_digits
  end
end