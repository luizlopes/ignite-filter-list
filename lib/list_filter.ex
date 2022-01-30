defmodule ListFilter do
  def call(list) do
    list
    |> Enum.filter(&has_only_numbers?/1)
    |> Enum.map(&String.to_integer/1)
    |> Enum.filter(&is_odd_number?/1)
    |> length()
  end

  defp has_only_numbers?(string) do
    !Regex.match?(~r/\D/, string)
  end

  defp is_odd_number?(number) do
    rem(number, 2) == 1
  end
end
