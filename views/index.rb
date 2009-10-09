class App
  module Views
    class Index < Mustache
      def title
        "The Index"
      end

      def content
        "Welcome! Mustache lives."
      end
    end
  end
end
