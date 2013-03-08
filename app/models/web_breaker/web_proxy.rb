module WebBreaker


  module WebProxy

    def self.filter_request(host, path)
      return yield if disabled?

      service = ExternalService.find_by_host(host)

      if !service || service.enabled?
        yield
      else
        raise ServiceDisabledError
      end
    end

    def self.disable
      __disabled__ = @disabled
      @disabled = true
      result = yield
      @disabled = __disabled__
      result
    end

    def self.disabled?
      !!@disabled
    end

  end
end
