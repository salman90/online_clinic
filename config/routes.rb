Rails.application.routes.draw do
  # devise_for :users
  # get 'my_portfolio', to: 'users#my_portfolio'
  scope "(:locale)", locale: /en|ar/ do
    devise_for :users, controllers: { registrations: "users/registrations",  }
    get 'my_portfolio', to: 'users#my_portfolio'
    get 'all_profiles', to: 'pages#all_profiles'
    # get '/:user' =>'pages#admin_checkups', as: 'admin_checkups'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'pages#home'
    resources :checkups do
      resources :comments
    end
    # get 'my_portfolio', to: 'users#my_portfolio'
  end
end
