Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tasks do
        put 'assign_task', to: 'tasks#assign_task' 
      end
      resources :projects do
        get '/get_all_tasks', to: 'projects#get_all_tasks'
      end
    end
  end
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

   devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
