Rails.application.routes.draw do
  # devise_for :users
  # get 'my_portfolio', to: 'users#my_portfolio'
  scope "(:locale)", locale: /en|ar/ do
    devise_for :users
    get 'my_portfolio', to: 'users#my_portfolio'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'pages#welcome'
    resources :checkups do
      resources :comments
    end
    # get 'my_portfolio', to: 'users#my_portfolio'
  end
end
