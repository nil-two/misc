function main(lines) {
  for (var i = 0;; i++) {
    if (lines[i] == '-1 -1 -1')
      break;

    var nums = lines[i].split(/\s+/);
    var m = parseInt(nums[0], 10);
    var f = parseInt(nums[1], 10);
    var r = parseInt(nums[2], 10);
    console.log(score(m, f, r));
  }
}

function score(m, f, r) {
  if (m == -1 || f == -1)
    return 'F';
  else if (m+f >= 80)
    return 'A';
  else if (m+f >= 65)
    return 'B';
  else if (m+f >= 50)
    return 'C';
  else if (m+f >= 30 && r >= 50)
    return 'C';
  else if (m+f >= 30)
    return 'D';
  else
    return 'F';
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
