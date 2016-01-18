function main(lines) {
  var n = parseInt(lines[0], 10);
  var cube = Math.pow(n, 3);
  console.log(cube);
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
