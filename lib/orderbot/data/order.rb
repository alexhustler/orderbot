module OrderBot
  class Order < Base
    attr_accessor :order_number,
      :customer_number,
      :customer_order_number,
      :customer_po,
      :order_date,
      :auto_allocate,
      :partial_ship,
      :split_ship,
      :shipping_service,
      :bill_third_party,
      :account_number,
      :saturday_delivery,
      :residential,
      :insure_packages,
      :insure_threshold,
      :email_confirmation_address,
      :packing_list_comment,
      :order_processing_variation,
      :subtotal,
      :shipping,
      :handling,
      :discount,
      :tax,
      :total,
      :shipping_address,
      :billing_address,
      :payment,
      :order_lines

    def add_order_line(order_line)
      @order_lines ||= []
      @order_lines << order_line
    end

    def to_h
      hash = super.except("OrderLine")
      hash["ShippingAddress"] = shipping_address.to_h
      hash["BillingAddress"] = billing_address.to_h
      hash["Payment"] = payment.to_h
      hash["OrderLines"] = { "PLOrderLine" => (order_lines || []).map(&:to_h) }
      hash
    end
  end
end
