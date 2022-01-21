Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'animals/random' => 'animals#random'
      resources :animals
    end
  end
end
