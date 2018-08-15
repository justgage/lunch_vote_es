defmodule Es.Commands do

  defmodule newLunchVenue do
    defstruct [:id, :name, :place]
  end

  defmodule OpenVoting do
    defstruct [:id, :venue_id, :date]
  end
end
