function main(lines) {
  var nums = lines[0].split(/\s+/).map(parseFloat).sort(function(a, b) {
    return a - b;
  });
  console.log(nums.join(' '));
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
