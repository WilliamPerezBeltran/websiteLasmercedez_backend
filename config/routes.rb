Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :image_fakes
    end
  end
	resources :headers, only: [:index,:show, :update, :destroy]
  get "up" => "rails/health#show", as: :rails_health_check
  
end

