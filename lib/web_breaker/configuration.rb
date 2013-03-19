module WebBreaker
  class Configuration

    attr_accessor :enabled

    def initialize
      @enabled = true
    end

    def enabled?
      !!@enabled
    end

  end
end