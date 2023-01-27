# frozen_string_literal: true

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # Part 1: Page routes (GET only)
  # Automatically create backend page routes from the frontend page routes declarations
  antd_pages Rails.root.join('config', 'routes.ts')

  # Part 2: API routes (GET, POST, PUT, DELETE)
  # The rest are real API routes that are Fetch/XHR-ed by the frontend or other API consumers
  scope :api do
    get 'currentUser' => 'auth#current_user'
    post 'login/account' => 'auth#login'
    post 'login/outLogin' => 'auth#logout'
    get 'rule' => 'list#rule'
  end
end