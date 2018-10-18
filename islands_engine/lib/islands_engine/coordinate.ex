defmodule IslandsEngine.Coordinate do
  # First created this struct of coordinate
  # Referencing itself
  alias __MODULE__
  @board_range 1..10

  # @enforce_keys makes sure that both keys are present.
  @enforce_keys [:row, :col]
  defstruct [:row, :col]

  def new(row, col) when row in @board_range and col in @board_range,
    do: {:ok, %Coordinate{row: row, col: col}}

  def new(_row, _col), do: {:error, :invalid_coordinate}
end
