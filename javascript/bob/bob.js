Speech = function(words) {
  this.words = words;
};

Speech.prototype.shouting = function() {
  if(this.silence()) {
    return false;
  }

  return this.words === this.words.toUpperCase();
};

Speech.prototype.question = function() {
  return this.words[this.words.length - 1] === '?';
};

Speech.prototype.silence = function() {
  return this.words.trim() === '';
};

Bob = function() {};

Bob.prototype.hey = function(speech) {
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

