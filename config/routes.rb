Rails.application.routes.draw do

  # ATENCAO SE COLOCAR resources ele SÓ FUNCIONA ROTAS RESTful 
 
  devise_for :users
  devise_scope :user do
    get 'register', to: 'devise/registrations#new', as: :register
    get 'login',    to: 'devise/sessions#new', as: :login
    get 'logout',   to: 'devise/sessions#destroy', as: :logout
  end	
  
  root 'welcome#index'


  get 'home/index'
  get 'home/sobre'
  

  get 'html/index'

  get 'github/index'



  get 'ruby/index'
  get 'ruby/aplicacoes'
  get 'ruby/gems'
  get 'ruby/estilos'
  get 'ruby/dragonfly'
  get 'ruby/organograma'
  get 'ruby/testes'
  get 'ruby/active_record'
  get 'ruby/email'
  get 'ruby/deploy' 
##############################################################
# Aplicacao xingaAi
#


  resources :posts do 
    member do
    get "like", to: "posts#upvote"
    get "dislike", to: "posts#downvote"
    end
      
  	resources :comments , dependent: :destroy do
      member do
        patch :complete
     end
    end

      end



end
