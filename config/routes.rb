Rails.application.routes.draw do
  resource :nextday, :only => :show, :formats => [:json]
end
