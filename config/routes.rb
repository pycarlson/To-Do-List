ToDo::Application.routes.draw do
  root :to => "tasks#index"
  
  resources :tasks

  put '/tasks/:id/toggle' => 'tasks#toggle'
end
