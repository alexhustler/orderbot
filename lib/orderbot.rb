module OrderBot
  autoload :Client, 'orderbot/client'
  autoload :Configuration, 'orderbot/configuration'
  autoload :Version, 'orderbot/version'

  autoload :Base, 'orderbot/data/base'
  autoload :Order, 'orderbot/data/order'
  autoload :OrderLine, 'orderbot/data/order_line'
  autoload :Address, 'orderbot/data/address'
  autoload :PaymentInfo, 'orderbot/data/payment_info'
end

require 'orderbot/engine'
