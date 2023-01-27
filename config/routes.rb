# frozen_string_literal: true

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: redirect('/api/welcome')
  scope :api do
    get 'user/login' => 'user#login'

    post 'login/account' => 'login#account'
    post 'login/outLogin' => 'login#out_login'

    get 'welcome' => 'welcome#welcome'
    get 'currentUser' => 'welcome#current_user'
    get 'list' => 'welcome#list'
    get 'rule' => 'welcome#rule'

    get 'admin/sub-page' => 'admin#index'
  end
end
