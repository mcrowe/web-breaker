Rails.application.routes.draw do

  mount WebBreaker::Engine => "/web_breaker"
end
