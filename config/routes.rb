Rails.application.routes.draw do

  post 'add', to: 'products#add'

  get '/', to: 'products#index'

end
