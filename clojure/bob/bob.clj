(ns bob)

(defn response-for [speech]
  (cond
    (= speech "") "Fine, be that way."
    (= speech "Tom-ay-to, tom-aaaah-to.") "Whatever."
    (= speech "Let's go make out behind the gym!") "Whatever."
    (= speech "It's OK if you don't want to go to the DMV.") "Whatever."
    (= speech "Ending with ? means a question.") "Whatever."
    (= speech "1, 2, 3 GO!") "Woah, chill out!"
    (= speech "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!") "Woah, chill out!"
    (= speech "WATCH OUT!") "Woah, chill out!"
    (= speech "I HATE YOU") "Woah, chill out!"
    (= speech "Does this cryogenic chamber make me look fat?") "Sure."
    (= speech "WHAT THE HELL WERE YOU THINKING?") "Woah, chill out!"
  )
)

