module Spree
  module TestingSupport
    module Controllers
      ENV['ENDPOINT_KEY'] ||= '123'

      def auth
        { 'HTTP_X_AUGURY_TOKEN' => ENV['ENDPOINT_KEY'], 'CONTENT_TYPE' => 'application/json' }
      end

      def json_response
        @json_response ||= JSON.parse(last_response.body)
      end

      def app
        described_class
      end
    end
  end
end

