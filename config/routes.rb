Appamonth::Application.routes.draw do
  post "/email/create", to: "welcome#create", as: :create_email
  root to: "welcome#index"
end
