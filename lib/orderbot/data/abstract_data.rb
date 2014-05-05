module OrderBot
  class AbstractData
    def initialize(options)
      options.each do |prop, value|
        self.public_send "#{prop}=", value
      end
    end

    def to_h
      instance_values.map{|key, value| [key.camelize, value]}.to_h
    end
  end
end
