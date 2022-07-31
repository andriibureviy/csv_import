Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: redirect('/insurances')
  resources :insurances do
    collection do
      post :import
    end
  end
end
