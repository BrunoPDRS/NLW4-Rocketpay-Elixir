defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  @moduledoc """
    Pipe Operator passes result from previous line as the first parameter of the next one

    Stream has the same methods that Enum has. The difference is that Stream is a lazy operator that ensure the efficiency by executing the functions only when needed, avoiding eg.: multiple tuple(array) iterations
  """

  defp handle_file({:ok, file}) do
    file =
      file
      |> String.split(",")
      |> Stream.map(fn number -> String.to_integer(number) end)
      |> Enum.sum()
    {:ok, %{result: file}}
  end
  defp handle_file({:error, _reason}), do: {:error, %{message: "Invalid file"}}
end
