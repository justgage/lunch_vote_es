# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lunch_vote,
  ecto_repos: [LunchVote.Repo]

# Configures the endpoint
config :lunch_vote, LunchVoteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/lU2I09A3xRZmDZfRP8DFnp8Iz/2hxbjO+eU7+v9Cw04C5oIzHhPv25k8AUd24uL",
  render_errors: [view: LunchVoteWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LunchVote.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :commanded,
  event_store_adapter: Commanded.EventStore.Adapters.EventStore
