Rails.application.routes.draw do
  root 'welcome#index'

  resources :posts, only: %i(index show)

  mount DaimonNews::Engine => '/admin/press'
end
