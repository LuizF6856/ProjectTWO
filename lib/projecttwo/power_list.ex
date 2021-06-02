defmodule ProjecttwoWeb.PowerList do 
    def list(numbers) do
      listpower = Regex.split(~R//, numbers) -- ["",""]
        |> Enum.map(&String.to_integer/1)
          
        for x <- listpower, do: x*x
    end
end
