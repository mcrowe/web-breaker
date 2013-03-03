module WebBreaker
  class ExternalService < ActiveRecord::Base

    attr_accessible :enabled, :host, :name

    validates_presence_of :name
    validates_presence_of :host

    def enable
      update_attribute(:enabled, true)
    end

    def disable
      update_attribute(:disabled, false)
    end

  end
end
