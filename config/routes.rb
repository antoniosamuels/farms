Rails.application.routes.draw do
  resources :farms

  root 'welcome#index'
  # get 'welcome/store'

end
