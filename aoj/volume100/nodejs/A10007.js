function main(lines) {
  for (var i = 0;; i++) {
    if (lines[i] == '0 0')
      break;

    var nums = lines[i].split(/\s+/).sort(function(a, b) {
      return a - b;
    });
    console.log(nums.join(' '));
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
