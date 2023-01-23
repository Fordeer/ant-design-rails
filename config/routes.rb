# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: redirect('/api/welcome')
  scope :api do
    get 'user/login' => 'auth#login'
    get 'currentUser' => 'auth#current'
    post 'login/account' => 'auth#account'
    post 'login/outLogin' => 'auth#out'

    get 'welcome' => 'welcome#index'
    get 'admin/sub-page' => 'admin#index'
    get 'list' => 'list#index'
    get 'rule' => 'list#rule'
  end
end
