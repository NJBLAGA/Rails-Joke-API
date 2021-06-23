Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    get '/jokes', to: 'jokes#index'
    post '/jokes', to: 'jokes#create'
    get '/jokes/random', to: 'jokes#random'
    get '/jokes/:id', to: 'jokes#show'
    put '/jokes/:id', to: 'jokes#update'
    delete '/jokes/:id', to: 'jokes#destroy'
    scope '/auth' do
      post '/sign_up', to: 'users#create'
      post '/sign_in', to: 'users#sign_in'
    end
  end
end
