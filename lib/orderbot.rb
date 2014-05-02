module OrderBot
  autoload :Client, 'orderbot/client'
  autoload :Configuration, 'orderbot/configuration'
  autoload :Version, 'orderbot/version'

  autoload :AbstractData, 'orderbot/data/abstract_data'
  autoload :Order, 'orderbot/data/order'
  autoload :OrderLine, 'orderbot/data/order_line'
  autoload :Address, 'orderbot/data/address'
  autoload :PaymentInfo, 'orderbot/data/payment_info'

  autoload :AbstractResponse, 'orderbot/responses/abstract_response'
  autoload :OrderStatusResponse, 'orderbot/responses/order_status_response'
  autoload :SubmitOrderResponse, 'orderbot/responses/submit_order_response'
end

require 'orderbot/engine'
