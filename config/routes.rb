Rails.application.routes.draw do
  resources :farms

  root 'farms#index'
  # get 'welcome/store'

end
