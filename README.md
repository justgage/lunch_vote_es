# LunchVote

Get all setup:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Create the Event Sourcing table in PG with: `mix do event_store.create, event_store.init`
  * Start Phoenix endpoint with `mix phx.server`


Now you can visit [`localhost:7878`](http://localhost:7878) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).


# How to run commands:

```bash
$ iex -S mix
iex(1)> command = %Es.Commands.NewLunchVenue{name: "Elixir Lunch", place: "Kramerica"}
iex(2)> Es.Router.dispatch(command)
[debug] Locating aggregate process for `Es.Aggregates.LunchOpportunity` with UUID "Elixir Lunch"
[debug] Es.Aggregates.LunchOpportunity<Elixir Lunch@0> executing command: %Es.Commands.NewLunchVenue{name: "Elixir Lunch", place: "Kramerica"}
{:error,
 "unknown command %Es.Commands.NewLunchVenue{name: \"Elixir Lunch\", place: \"Kramerica\"}"}
```

## Guides

* Docs on Commanded: https://github.com/commanded/commanded
