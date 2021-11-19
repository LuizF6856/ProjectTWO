defmodule Projecttwo.PowerList do 
    def power_of_list(numbers) do
      listpower = Regex.split(~R//, numbers) -- ["",""]
        |> Enum.map(&String.to_integer/1)
          
        for x <- listpower, do: x*x
    end
end
