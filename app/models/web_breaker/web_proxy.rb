module WebBreaker


  module WebProxy

    def self.filter_request(host, path)
      return yield unless WebBreaker.configuration.enabled?

      service = ExternalService.find_by_host(host)

      if !service || service.enabled?
        yield
      else
        raise WebBreaker::ServiceDisabledError
      end
    end

  end
end
