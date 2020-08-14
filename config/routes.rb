Rails.application.routes.draw do
  get '/birds' => 'birds#index'
  get '/birds/:id' => 'bird#show'
end
