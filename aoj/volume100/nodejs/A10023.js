function main(lines) {
  for (var i = 0;;) {
    var cards = lines[i++];
    if (cards === '-')
      break;

    var noShuffles = parseInt(lines[i++], 10);
    for (var si = 0; si < noShuffles; si++) {
      var h = parseInt(lines[i++], 10);
      cards = shuffle(cards, h);
    }
    console.log(cards);
  }
}

function shuffle(cards, h) {
  return cards.substr(h, cards.length-h) + cards.substr(0, h);
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
