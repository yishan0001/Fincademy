Fintech::Application.routes.draw do

  match 'courses/excel' => 'courses#excel'
  match '/home' => 'static_pages#home'
  match '/equity_track' => 'static_pages#equity_track'

  resources :courses
  root :to => 'courses#index'

end
