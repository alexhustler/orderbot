module OrderBot
  class Base
    def initialize(options)
      options.each do |prop, value|
        self.public_send "#{prop}=", value
      end
    end

    def to_h
      instance_values.symbolize_keys
    end
  end
end
