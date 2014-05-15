module OrderBot
  class OrderStatusResponse < AbstractResponse
    def successful?
      @data[:pl_get_order_status_response][:pl_get_order_status_result][:message] == "Success"
    rescue
      false
    end

    def orders
      order_data = @data[:pl_get_order_status_response][:pl_get_order_status_result][:orders][:pl_order_status_header]
      if order_data.is_a?(Hash)
        [ OrderStatus.new(order_data) ]
      else
        order_data.collect{|data| OrderStatus.new(data)}
      end
    end

    def error_message
      @data[:pl_get_order_status_response][:pl_get_order_status_result][:message]
    end
  end
end
