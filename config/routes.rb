Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  direct(:github) { "https://github.com/evan-duncan/exposing-nsbm" }
  root 'dashboard#index'
end
