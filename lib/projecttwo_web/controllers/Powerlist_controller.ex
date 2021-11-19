defmodule ProjecttwoWeb.PotenciaController do
    use ProjecttwoWeb, :controller
    alias ProjecttwoWeb.PowerList

    def list(conn, %{"numbers" => numbers}) do 
        json conn, %{powerlist: PowerList.list(numbers)}
    end
end 
