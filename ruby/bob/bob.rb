class Bob
  def hey(arg)
    case arg
    when "WATCH OUT!"
      "Woah, chill out!"
    when "Does this cryogenic chamber make me look fat?"
      "Sure."
    when "1, 2, 3 GO!"
      "Woah, chill out!"
    when 'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!'
      "Woah, chill out!"
    when "I HATE YOU"
      "Woah, chill out!"
    when "", nil
      "Fine. Be that way."
    else
      "Whatever."
    end
  end
end

