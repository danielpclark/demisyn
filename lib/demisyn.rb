require "demisyn/version"

module Demisyn
  class << self
    def lonely_operator?
      major, minor, _ = RUBY_VERSION.split('.')
      major.to_i.>=(2) && minor.to_i.>=(3)
    end
  end

  refine String do
    def ~()
      eval gsub(/ /, ".")
    end 

    case Demisyn.send :lonely_operator?
    when true
      def -@
        eval gsub(/ /, "&.")
      end
    end
  end

  refine Array do
    def ~()
      eval join(".") 
    end

    case Demisyn.send :lonely_operator?
    when true
      def -@
        eval join("&.")
      end
    end
  end
end
