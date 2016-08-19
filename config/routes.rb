Rails.application.routes.draw do
  scope '/api' do
    resources: :jobs
  end
  resources :jobs
  get 'home/index'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
