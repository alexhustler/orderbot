module OrderBot
  class Address < Base
    attr_accessor :first_name,
      :last_name,
      :company_name,
      :address1,
      :address2,
      :address3,
      :city,
      :state,
      :postal_code,
      :country,
      :phone_number,
      :email_address
  end
end
