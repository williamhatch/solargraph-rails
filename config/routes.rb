Solargraph::Rails::Engine.routes.draw do
  post '/suggest' => 'api#suggest'
end
