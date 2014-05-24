ToDo::Application.routes.draw do
  root :to => "tasks#index"
  
  resources :tasks, except: [:edit, :update, :show]

  post '/tasks/:id/toggle' => 'tasks#toggle'
end
