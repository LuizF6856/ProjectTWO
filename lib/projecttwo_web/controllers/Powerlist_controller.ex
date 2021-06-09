defmodule ProjecttwoWeb.PowerController do
    use ProjecttwoWeb, :controller
    alias Projecttwo.PowerList

    def list(conn, %{"numbers" => numbers}) do 
        json conn, %{powerlist: PowerList.power_of_list(numbers)}
    end
end 
