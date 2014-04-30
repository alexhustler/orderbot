module OrderBot
  class Base
    def initialize(options)
      options.each do |prop, value|
        self.public_send "#{prop}=", value
      end
    end

    def to_h
      instance_values.collect{|name, value| [name, value.is_a?(Base) ? value.to_h : value ]}.to_h.symbolize_keys
    end
  end
end
