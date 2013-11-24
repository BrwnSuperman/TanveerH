Brianpetro::Application.routes.draw do
  get "contact" => 'contact#new', as: 'contact'
  post "contact" => 'contact#create', as: 'contact'
  resources :resources

  resources :dones

  resources :commits

  resources :entries

  get 'qscores/upvote/:id' => 'qscores#upvote'

	root to: 'entries#index'

end
