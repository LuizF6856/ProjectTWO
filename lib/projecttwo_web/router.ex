defmodule ProjecttwoWeb.Router do
  use ProjecttwoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ProjecttwoWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]  
    
    get "powerlist/:numbers", PotenciaController, :list
  end
end
