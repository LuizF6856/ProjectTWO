defmodule ProjecttwoWeb.PowerController do
  use ProjecttwoWeb, :controller

  alias Projecttwo.PowerList

  def list(conn, %{"numbers" => numbers}) do
    conn
    |> put_status(:ok)
    |> json(%{powerlist: PowerList.to_integer(numbers)})
  end
end
