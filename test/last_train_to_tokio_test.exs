defmodule LastTrainToTokioTest do
  use ExUnit.Case
  doctest LastTrainToTokio

  test "train conductor greeting" do
    assert LastTrainToTokio.hello() == "Tsugi wa Shibuya desu. Doors will open on the left."
  end
end
