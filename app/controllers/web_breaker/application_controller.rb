module WebBreaker
  class ApplicationController < ActionController::Base

    before_filter :ensure_web_breaker_enabled

    private

      def ensure_web_breaker_enabled
        raise ActionController::RoutingError.new('Not Found') unless WebBreaker.configuration.enabled?
      end

  end
end
