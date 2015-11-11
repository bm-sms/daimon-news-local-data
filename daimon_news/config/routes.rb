DaimonNews::Engine.routes.draw do
  root 'welcome#index'
  resources :posts
end
