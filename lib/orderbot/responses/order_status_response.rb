module OrderBot
  class OrderStatusResponse < AbstractResponse
    def successful?
      @data[:pl_get_order_status_response][:pl_get_order_status_result][:message] == "Success"
    rescue
      false
    end

    def statuses
      @data[:pl_get_order_status_response][:pl_get_order_status_result][:orders]
    end

    def error_message
      @data[:pl_get_order_status_response][:pl_get_order_status_result][:message]
    end
  end
end
