Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'# i had this as yohohoho not realizing the repsec was legit checking it for an exact name lol
end
