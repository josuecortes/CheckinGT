Sec::Application.routes.draw do

  namespace :core do resources :tipo_documento_eletronicos end

  namespace :core do resources :tipo_unidades end

  namespace :core do resources :termo_fiel_depositarios end

  namespace :core do resources :termo_vistoria_detalhes end

  namespace :core do resources :termo_vistoria end

  namespace :core do resources :termo_lacres end

  namespace :core do resources :rodoviarios end

  namespace :core do resources :selo_fiscals end

  namespace :core do resources :fiel_depositarios end

  namespace :core do resources :tipo_detalhes end

  namespace :core do resources :tipo_eventos end

  namespace :core do resources :status_termo_fiel_depositarios end

  namespace :core do resources :status_selo_fiscal_tipos end

  namespace :core do resources :status_desembaracos end

  namespace :core do resources :status_processamentos end

  namespace :core do resources :status_unidade_cargas end

  namespace :core do resources :status_dads end

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
    
    resources :empresas do
    	resources :empresa_modulos
    	resources :aquaviarios
    	resources :usuario_master
    	resources :portos
    end
    resources :ufs
   
    
    
  end
	
	namespace :aquaviario do	
		resources :dads do
			resources :unidade_cargas do
				resources :documento_eletronicos
			end
		end
	end

end
