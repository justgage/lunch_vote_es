defmodule Es.Events do

  defmodule NewLunchVenue do
    defstruct [:id, :for, :date]
  end

  defmodule LunchVoteOpened do
    defstruct [:id, :for, :date]
  end
end
