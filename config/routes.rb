Rails.application.routes.draw do
  resources :stars
  root 'topics#index'

  resources :topics do
    resources :vote

     member do
     post 'vote'
        

      end
  		
  	
  		scope "(:locale)", locale: /en|es|de/ do
     get 'vote/new' => 'vote#new'
     get 'votes/new' => 'votes#new'
      end
end
        get '/topic' => 'topic#new'
        get '/vote' => 'votes#new'
        get '/votes/new' => 'vote#new'
        get 'vote' => 'vote#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end