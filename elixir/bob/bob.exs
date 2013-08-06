defmodule Teenager do
  import String, only: [upcase: 1, ends_with?: 2]

  def hey(speech) do
    cond do
      shouting?(speech) ->
        "Woah, chill out!"
      question?(speech) ->
        "Sure."
      silence?(speech) ->
        "Fine. Be that way."
      true ->
        "Whatever."
    end
  end

  defp shouting?(speech) do
    if !silence?(speech) do
      upcase(speech) == speech
    else
      false
    end
  end

  defp question?(speech) do
    ends_with?(speech, "?")
  end

  defp silence?(speech) do
    speech == ""
  end
end

