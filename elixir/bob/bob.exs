defmodule Teenager do
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
    if String.length(speech) > 0 do
      String.upcase(speech) == speech
    else
      false
    end
  end

  defp question?(speech) do
    String.ends_with?(speech, "?")
  end

  defp silence?(speech) do
    speech == ""
  end
end

