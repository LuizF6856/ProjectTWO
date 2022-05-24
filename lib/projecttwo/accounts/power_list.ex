defmodule Projecttwo.PowerList do
  def to_integer(numbers) do
    numbers
    |> String.codepoints()
    |> Enum.map(&String.to_integer/1)
    |> power_of_list()
  end

  defp power_of_list([]), do: []
  defp power_of_list([h | numbers]), do: [h * h] ++ power_of_list(numbers)
end
