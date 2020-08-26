Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html