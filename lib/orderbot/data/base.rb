module OrderBot
  class Base
    def initialize(options)
      options.each do |prop, value|
        self.public_send "#{prop}=", value
      end
    end

    def to_h
      instance_values.map{|key, value| [key.classify, value]}.to_h
    end
  end
end
