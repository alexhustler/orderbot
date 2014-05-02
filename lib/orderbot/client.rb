module OrderBot
  class Client
    def initialize
      @client = Savon.client(wsdl: config.wsdl_url)
      @authenticated = false
    end

    def submit_order(order)
      authenticate
      data = @client.call(:pl_submit_order, message: {
        "args" => {
          "SystemId" => config.username,
          "Password" => config.password,
          "Orders" => { "PLOrder" => order.to_h }
        }
      }).body
      SubmitOrderResponse.new(data)
    end

    def get_order_status(order_numbers)
      authenticate
      data = @client.call(:pl_get_order_status, message: {
        "args" => {
          "SystemId" => config.username,
          "Password" => config.password,
          "OrderNumbers" => { "string" => order_numbers }
        }
      }).body
      OrderStatusResponse.new(data)
    end

    def get_inventory()
      authenticate
      @client.call(:pl_get_inventory, message: {
        #TODO
      }).body
    end

    def test_login(username, password)
      result = @client.call(:test_login, message: {
        username: username,
        password: password
      }).body

      if result[:test_login_response][:test_login_result] == "Login Success!"
        @authenticated = true
      else
        raise SecurityError.new("Cannot authenticate")
      end
    end

    private

    def authenticate
      unless @authenticated
        test_login(config.username, config.password)
      end
    end

    def config
      ::Rails.configuration.orderbot
    end
  end
end
