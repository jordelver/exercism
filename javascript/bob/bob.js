Speech = function(words) {
  this.words = words;
};

Speech.prototype.shouting = function() {
  var regex = /[A-Z]{2,}/;

  return regex.test(this.words);
};

Speech.prototype.question = function() {
  var regex = /\?$/

  return regex.test(this.words);
};

Speech.prototype.silence = function() {
  return this.words === '';
};

Bob = function() {};

Bob.prototype.hey = function(speech) {
  return this.respond(speech);
};

Bob.prototype.respond = function(speech) {
  var speech = new Speech(speech);

  if(speech.shouting()) {
    return "Woah, chill out!"
  } else if(speech.question()) {
    return "Sure"
  } else if(speech.silence()) {
    return "Fine, be that way."
  } else {
    return "Whatever";
  }
};

module.exports = Bob;

