defmodule Es.CurrentVoting do
  alias Es.Events
  use Commanded.Event.Handler, name: "CurrentVoting"

  def handle(event = %Events.NewLunchVenue{}, _metadata) do
    # ... process the event
    :ok
  end
end
