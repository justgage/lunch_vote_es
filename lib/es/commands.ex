defmodule Es.Commands do

  defmodule NewLunchVenue do
    defstruct [:name, :place]
  end

  defmodule OpenVoting do
    defstruct [:id, :venue_id, :date]
  end
end
