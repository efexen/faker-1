defmodule Faker.Color do
  @moduledoc """
  Functions for generating different color representations.
  """

  @doc """
  Return random RGB hex value.
  """
  @spec rgb_hex() :: binary
  def rgb_hex do
    :io_lib.format("~2.16.0B~2.16.0B~2.16.0B", Tuple.to_list(rgb_decimal))
    |> :erlang.iolist_to_binary
  end

  @doc """
  Return random RGB decimal value.
  """
  @spec rgb_decimal() :: {byte, byte, byte}
  def rgb_decimal do
    {
      :crypto.rand_uniform(0, 256),
      :crypto.rand_uniform(0, 256),
      :crypto.rand_uniform(0, 256)
    }
  end
end
