defmodule Es.Router do
  use Commanded.Commands.Router
  alias Es.Aggregates
  alias Es.Events
  alias Es.Commands

  dispatch Commands.NewLunchVenue, to: Aggregates.LunchOpportunity, identity: :name
end
