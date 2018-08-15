# LunchVote

Get all setup:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Create the Event Sourcing table in PG with: `mix do event_store.create, event_store.init`
  * Start Phoenix endpoint with `mix phx.server`


Now you can visit [`localhost:7878`](http://localhost:7878) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Guides

* Docs on Commanded: https://github.com/commanded/commanded
