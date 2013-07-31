Bob = function() {};

Bob.prototype.hey = function(speech) {
  return this.respond(speech);
};

Bob.prototype.respond = function(speech) {
  switch(speech) {
    case "Tom-ay-to, tom-aaaah-to.":
      return "Whatever";
    case "WATCH OUT!":
      return "Woah, chill out!";
    case "Does this cryogenic chamber make me look fat?":
      return "Sure";
    case "Let's go make out behind the gym!":
      return "Whatever";
    case "1, 2, 3 GO!":
      return "Woah, chill out!";
    case "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!":
      return "Woah, chill out!";
    case "":
      return "Fine, be that way.";
  }
};

module.exports = Bob;

