Sec::Application.routes.draw do

  root :to => 'home#index'
  resources :intranet
  resources :home

  namespace :core do
    resources :usuarios do
      get "resetasenha"
      resources :senhas
    end
    resources :login
    resources :perfil
    resources :modulos do
      resources :sistemas
    end
    resources :grupos do
      resources :grupo_sistemas
      resources :usuario_grupos
    end
    
  end

end
