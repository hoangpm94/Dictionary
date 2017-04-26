Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 #root 'dictionary#index'
 root 'data#scrape'

 #get '/post',to: 'gallery#show'

 # get    '/contact', to: 'static_pages#contact'
  #get 'about' => 'pages#about',as: :about
end
