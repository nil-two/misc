function main(lines) {
  var r = parseFloat(lines[0]);

  var area      = Math.PI * Math.pow(r, 2);
  var perimeter = Math.PI * 2 * r;
  console.log([
    area.toFixed(6),
    perimeter.toFixed(6),
  ].join(' '));
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
