module OrderBot
  class Engine < ::Rails::Engine
    config.orderbot = ActiveSupport::OrderedOptions.new
    config.orderbot.wsdl_url = "http://69.93.17.126/OrderBotService1.asmx?WSDL"
    config.orderbot.username = nil
    config.orderbot.password = nil
  end
end
