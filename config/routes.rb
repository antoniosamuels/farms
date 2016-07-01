Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/store'

end
