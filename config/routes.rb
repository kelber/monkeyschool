Rails.application.routes.draw do
  devise_for :users
	# ATENCAO SE COLOCAR resources ele SÓ FUNCIONA ROTAS RESTful 
  
  root 'welcome#index'


  get 'home/index'
  get 'home/sobre'
  

  get 'html/index'



  get 'ruby/index'
  get 'ruby/aplicacoes'

 
##############################################################
# Aplicacao xingaAi
#
  resources :posts do
    member do
    get "like", to: "posts#upvote"
    get "dislike", to: "posts#downvote"
    end
  	resources :comments , dependent: :destroy
  end







end
