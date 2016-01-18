function main(lines) {
  var nums = lines[1].split(/\s+/).reverse();
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
