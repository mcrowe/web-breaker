require 'net/http'
require 'haml'
require 'simple_form'

require 'web_breaker/version'
require 'web_breaker/engine'
require 'web_breaker/configuration'
require 'web_breaker/errors'

module WebBreaker

  def self.configuration
    @configuration ||= WebBreaker::Configuration.new
  end

  def self.configure
    yield configuration if block_given?
  end

  # Disable web breaker within the passed block.
  #
  # Example:
  #
  #   WebBreaker.disabled do
  #     # Make http requests with web breaker disabled
  #     # ...
  #   end
  #
  def self.disabled
    __enabled__ = configuration.enabled
    configuration.enabled = false
    result = yield
    configuration.enabled = __enabled__
    return
  end
end
