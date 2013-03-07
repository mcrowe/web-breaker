# Patch Net::HTTP so that all http requests are filtered through WebProxy.
#
class Net::HTTP

  alias __request__ request

  def request(request, body = nil, &block)
    host = address
    path = request.path

    WebBreaker::WebProxy.filter_request(host, path) do
      __request__(request, body, &block)
    end
  end

end