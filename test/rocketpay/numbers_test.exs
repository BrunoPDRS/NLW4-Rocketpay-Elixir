defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  @doc """
  describe "function_name/amount_of_args_expected"
  """
  describe "sum_from_file/1" do
    test "when given a file with numbers, returns it's sum" do
      response = Numbers.sum_from_file("numbers")
      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "when NOT given a file with numbers, returns an error" do
      response = Numbers.sum_from_file("file_that_does_not_exist")
      expected_response = {:error, %{message: "Invalid file"}}

      assert response == expected_response
    end
  end
end
