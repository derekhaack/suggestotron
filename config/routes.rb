Rails.application.routes.draw do
  root 'topics#index'

  resources :topics do
    resources :votes 
     
     member do
     post 'vote'
        

      end
  		
  	
  		scope "(:locale)", locale: /en|es|de/ do
     
      end
end
        get '/topic' => 'topic#new'
        get '/vote' => 'votes#new'
        put '/votes' => 'votes#update'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end