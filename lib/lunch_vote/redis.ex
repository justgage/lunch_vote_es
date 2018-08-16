defmodule LunchVote.Redis do
  def command(command) do
    Redix.command(random_conn(), split(command))
  end

  def set_json(model, id, map = %{}) do
    with {:ok, json} <- Poison.encode(map) do
      Redix.command(random_conn(), ["HSET", namespace(model), id, json])
    end
  end

  def get_json(model, id) do
    case Redix.command(random_conn(), ["HGET", namespace(model), id]) do
      {:ok, item} -> {:ok, decode_nilable_json(item)}
      e = {:error, _} -> e
      error -> {:error, error}
    end
  end

  defp decode_nilable_json(json) do
    case json do
      nil -> nil
      item -> Poison.decode!(item)
    end
  end

  def get_json_all(model) do
    case Redix.command(random_conn(), ["HGETALL", namespace(model)]) do
      {:ok, values} ->
        # These values come as a flat list of strings. I'm
        # turning them into a maps
        values
        |> Enum.chunk_every(2)
        |> Enum.map(fn [k, v] ->
          {k, decode_nilable_json(v)}
        end)
        |> Enum.into(%{})

      e ->
        e
    end
  end

  def namespace(model) do
    "LunchVote:#{model}"
  end

  defp split(command) do
    String.split(command, " ")
  end

  defp random_conn() do
    num = rem(System.unique_integer([:positive]), 5)
    :"redix_#{num}"
  end
end
