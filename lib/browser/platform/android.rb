# frozen_string_literal: true

module Browser
  class Platform
    class Android < Base
      def match?
        ua =~ /Android/
      end

      def name
        "Android"
      end

      def id
        :android
      end

      def version
        ua[/Android[\ _]([\d.]+)/, 1]
      end
    end
  end
end
