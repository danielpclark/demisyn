require "demisyn/version"

module Demisyn
  class << self
    def lonely_operator?
      major, minor, _ = RUBY_VERSION.split('.')
      major.to_i.>=(2) && minor.to_i.>=(3)
    end
  end

  refine String do
    case Demisyn.send :lonely_operator?
    when true
      def ~()
        eval gsub(/ /, "&.")
      end
    when false
      def ~()
        eval gsub(/ /, ".") rescue nil
      end
    end 
  end

  refine Array do
    case Demisyn.send :lonely_operator?
    when true
      def ~()
        eval join("&.")
      end
    when false
      def ~()
        eval join(".") rescue nil
      end
    end
  end
end
