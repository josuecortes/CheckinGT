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
    

    resources :empresas do
    	resources :empresa_modulos
    	resources :aquaviarios
    	resources :usuario_master
    	resources :portos
    	resources :rodoviarios
    end
    
    resources :ufs
  
    resources :tipo_solucoes

  	resources :status_parametrizacaos

    resources :tipo_dcs

		resources :termo_fds

		resources :status_termo_fds 

  	resources :patio_portos 

		resources :tipo_unidades 
		
		resources :termo_vistoria_detalhes 

		resources :termo_vistoria 

		resources :termo_lacres 

		resources :selo_fiscals 

		resources :fiel_depositarios 

		resources :tipo_detalhes 

		resources :tipo_eventos 

		resources :status_selo_fiscal_tipos 

		resources :status_desembaracos 

		resources :status_processamentos 

		resources :status_unidade_cargas 

		resources :status_dads 
			
  end

	namespace :aquaviario do
		resources :dads do
			get "enviar"
			resources :unidade_cargas do
				resources :dcs
			end
		end
	end

	namespace :porto do
		resources :registro_entradas
		resources :unidade_cargas do
			resources :solicitar_saidas
		end
	end

  namespace :rodoviario do
    resources :unidade_cargas do
      resources :notas do
      	resources :nota_detalhes
      end
    end
  end

end
