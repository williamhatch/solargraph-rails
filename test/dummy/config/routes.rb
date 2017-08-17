Rails.application.routes.draw do
  mount Solargraph::Rails::Engine => "/solargraph-rails"
end
