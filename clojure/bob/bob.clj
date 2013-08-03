(ns bob)

(defn shouting? [word]
  (= word
    (clojure.string/upper-case word)))

(defn question? [word]
  (string?
    (re-find #"\?\z" word)))

(defn silence? [word]
  (= word ""))

(defn response-for [speech]
  (cond
    (silence? speech) "Fine, be that way."
    (shouting? speech) "Woah, chill out!"
    (question? speech) "Sure."
    :else "Whatever."))

