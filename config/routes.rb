Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
    resources :users
    resources :budgets
    resources :incomes
    resources :expenses
    end
  end
end
