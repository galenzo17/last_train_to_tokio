defmodule LastTrainToTokio do
  @moduledoc """
  Documentation for `LastTrainToTokio`.
  """

  @doc """
  Train conductor greeting.

  ## Examples

      iex> LastTrainToTokio.hello()
      "Tsugi wa Shibuya desu. Doors will open on the left."

  """
  def hello do
    "Tsugi wa Shibuya desu. Doors will open on the left."
  end

  @doc """
  Last train announcement.

  ## Examples

      iex> LastTrainToTokio.last_train()
      "Saishū densha desu. This is the last train to Tokyo. Thank you for using JR Yamanote Line."

  """
  def last_train do
    "Saishū densha desu. This is the last train to Tokyo. Thank you for using JR Yamanote Line."
  end
end
