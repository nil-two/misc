function main(lines) {
  for (var i = 0;; i++) {
    if (lines[i] == '0')
      break;

    console.log('Case ' + (i+1) + ': ' + lines[i]);
  }
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
