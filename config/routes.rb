Rails.application.routes.draw do

  get('/' => 'welcome#index', as: 'root')
  get('/recipes/search' => 'recipes#search')
  post('/remove_recipe' => 'collections#remove_recipe')
  resources :users, :collections, :recipes

  # Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
