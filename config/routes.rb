Rails.application.routes.draw do

  post '/users', to: 'users#create'
  post '/tickets', to: 'tickets#create'
  post '/places', to: 'places#create'
  post '/events', to: 'events#create'
  post '/users_tickets', to: 'users_tickets#create'

  get '/users', to: 'users#show'
  get '/tickets', to: 'tickets#show'
  get '/places', to: 'places#show'
  get '/events', to: 'events#show'
  get '/users_tickets', to: 'users_tickets#show'

  patch '/users', to: 'users#update'
  patch '/tickets', to: 'tickets#update'
  patch '/places', to: 'places#update'
  patch '/events', to: 'events#update'
  patch '/users_tickets', to: 'users_tickets#update'

  delete '/users', to: 'users#destroy'
  delete '/tickets', to: 'tickets#destroy'
  delete '/places', to: 'places#destroy'
  delete '/events', to: 'events#destroy'
  delete '/users_tickets', to: 'users_tickets#destroy'

  get '/users/more_tickets_boughts', to: 'users#more_tickts_boughts'
  get '/places/more_assistance', to: 'places#more_assistance'
  get '/events/more_bought_less_paid', to: 'events#more_bought_less_paid'
  get '/tickets/most_expensives', to: 'tickets#most_expensives'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
