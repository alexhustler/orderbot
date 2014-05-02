module OrderBot
  class OrderLine < AbstractData
    attr_accessor :line_number,
      :product,
      :description,
      :quantity,
      :price
  end
end
