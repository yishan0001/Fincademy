Fintech::Application.routes.draw do

  match 'courses/excel' => 'courses#excel'
  match '/home' => 'static_pages#home'
  match '/equity_track' => 'static_pages#equity_track'
  match '/tracks' => 'static_pages#tracks'

  resources :courses
  root :to => 'static_pages#home'

end
