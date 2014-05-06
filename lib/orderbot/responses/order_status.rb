module OrderBot
  class OrderStatus
    def initialize(data)
      @data = data
    end

    def order_int_id
      @data[:order_number]
    end

    def status
      @data[:status]
    end

    def completed_date
      @data[:completed_date]
    end
  end
end
