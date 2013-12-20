Deadmusic::Application.routes.draw do
  resources :events do
    resources :song_performances
  end
  root 'events#index'
end
