module OrderBot
  class OrderStatusResponse < AbstractResponse
    def successful?
      @data[:pl_get_order_status_response][:pl_get_order_status_result][:message] == "Success"
    rescue
      false
    end

    def orders
      @data[:pl_get_order_status_response][:pl_get_order_status_result][:orders].collect do |order_data|
        OrderStatus.new(order_data[1])
      end
    end

    def error_message
      @data[:pl_get_order_status_response][:pl_get_order_status_result][:message]
    end
  end
end
