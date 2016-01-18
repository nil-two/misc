function main(lines) {
  var nums = lines[0].split(/\s+/);
  var a = parseInt(nums[0], 10);
  var b = parseInt(nums[1], 10);

  var area      = a * b;
  var perimeter = 2*a + 2*b;
  console.log(area, perimeter);
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
