function main(lines) {
  var line = lines[0];
  console.log(toSwapCase(line));
}

function toSwapCase(s) {
  var letters = [];
  for (var i = 0; i < s.length; i++) {
    letters.push (s[i] === s[i].toLowerCase()
      ? s[i].toUpperCase()
      : s[i].toLowerCase())
  }
  return letters.join('');
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
