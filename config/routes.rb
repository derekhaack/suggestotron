Rails.application.routes.draw do
  root 'topics#index'
  resources :topics do
  	member do
  		post 'upvote'

        get '/topic' => 'topic#new'
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
