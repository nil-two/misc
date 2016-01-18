function main(lines) {
  var noWords = parseInt(lines[0], 10);
  var words   = [];
  for (var wi = 0; wi < noWords; wi++) {
    words.push(lines[wi+1]);
  }
  words.sort();
  console.log(words[0]);
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
