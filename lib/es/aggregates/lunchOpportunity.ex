defmodule Es.Aggregates.LunchOpportunity do
  require Logger
  defstruct [:account_number, :balance]

  # public command API

  @def """
  This will take a command and return an Es.Event or an {:error, "reason"}
  """
  def execute(own_state, command)

  def execute(%__MODULE__{}, command) do
    # returns an event struct or {:error, "reason"}
    {:error, "unknown command #{inspect(command)}"}
  end

  @def """
  Apply will take an event that has happened and save it to it's own
  state
  """
  def apply(own_state, event)

  def apply(state = %__MODULE__{}, event) do
    Logger.error("#{__MODULE__} received an unknown event #{inspect(event)}")
    # Returns it's updated state struct
    state
  end
end
