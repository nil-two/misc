function main(lines) {
  var nums = lines[0].split(/\s+/).map(parseFloat);
  var a = nums[0];
  var b = nums[1];

  console.log([
    Math.floor(a / b),
    a % b,
    (a / b).toFixed(6),
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
