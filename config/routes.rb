Rails.application.routes.draw do
  resources :widgets
  resources :votes
  resources :stars
  root 'topics#index'

  resources :topics do
    resources :votes, controller: 'votes'

     member do
       post 'vote'
      end

  		scope "(:locale)", locale: /en|es|de/ do

      end
  end


  get '/votes/new' => 'vote#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
