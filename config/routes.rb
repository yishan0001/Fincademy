Fintech::Application.routes.draw do

  match 'courses/excel' => 'courses#excel'

  resources :courses
  root :to => 'courses#index'

end
