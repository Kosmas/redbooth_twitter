Rails.application.routes.draw do
  get '/signin', to: 'sessions#new', as: 'signin'
  get '/auth/:provider/callback', to: 'sessions#create', as: 'signup'
  get '/', to: 'sessions#index', as: :root
end
