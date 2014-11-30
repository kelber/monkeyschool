Rails.application.routes.draw do
	# ATENCAO SE COLOCAR resources ele SÓ FUNCIONA ROTAS RESTful 
  
  root 'welcome#index'


  get 'home/index'
  get 'home/sobre'
  

  get 'html/index'



  get 'ruby/index'
  get 'ruby/aplicacoes'
end
