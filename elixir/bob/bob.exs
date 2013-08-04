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

  def shouting?(speech) do
    if String.length(speech) > 0 do
      String.upcase(speech) == speech
    else
      false
    end
  end

  def question?(speech) do
    String.ends_with?(speech, "?")
  end

  def silence?(speech) do
    speech == ""
  end
end

