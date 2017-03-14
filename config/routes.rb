Rails.application.routes.draw do
  root 'topics#index'
  resources :topics do
  	member do
    end
  		post 'upvote'
  	
  		scope "(:locale)", locale: /en|es|de/ do
     
      end
end
        get '/topic' => 'topic#new'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
