module OrderBot
  class Client
    def initialize
      @client = Savon.client(wsdl: config.wsdl_url)
      @authenticated = false
    end

    def submit_order()
      authenticate
      @client.call(:pl_submit_order, message: {
        #TODO
      }).body
    end

    def get_order_status()
      authenticate
      @client.call(:pl_get_order_status, message: {
        #TODO
      }).body
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

      if result[:test_login_response][:test_login_result] == "Login Fail!"
        #TODO
      else
        #TODO
        @authenticated = true
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
