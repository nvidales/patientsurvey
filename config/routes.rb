Rails.application.routes.draw do
  devise_for :users
  get 'file/index'
  get 'survey/index'
  #get 'questions/index'
  get 'questions/thankyou' => 'questions#thankyou'

  get 'file/index' => 'file#index'
  resources :file

  resources :questions
  #get 'survey/index' => 'survey#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'questions#new'
end
