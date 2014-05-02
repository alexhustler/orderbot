module OrderBot
  class SubmitOrderResponse < AbstractResponse
    def successful?
      @data[:pl_submit_order_response][:pl_submit_order_result][:order_process_result][:is_success]
    rescue
      false
    end

    def order_id
      @data[:pl_submit_order_response][:pl_submit_order_result][:order_process_result][:order_bot_order_id]
    end

    def error_message
      @data[:pl_submit_order_response][:pl_submit_order_result][:order_process_result][:message]
    end
  end
end
