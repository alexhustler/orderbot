module OrderBot
  class Configuration
    def self.configure
      yield ::Rails.configuration.orderbot
    end
  end
end
