module OrderBot
  class OrderLine < Base
    attr_accessor :line_number,
      :product,
      :description,
      :quantity,
      :price
  end
end
