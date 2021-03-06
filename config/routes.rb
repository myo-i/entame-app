Rails.application.routes.draw do
  devise_for :users 
  root to: 'ideas#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ideas do
    resources :tweets, only: [:index, :new, :create, :show, :destroy] do 
      collection do
        get 'search'
      end
    end
  end
end
