class App
  module Views
    class Layout < Mustache
      def title 
        @title || "Trust the Stache"
      end
    end
  end
end
