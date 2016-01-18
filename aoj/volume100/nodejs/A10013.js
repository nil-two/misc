function main(lines) {
  for (var i = 0;; i++) {
    if (lines[i] == '0 0')
      break;
    
    var nums = lines[i].split(/\s+/);
    var h = parseInt(nums[0], 10);
    var w = parseInt(nums[1], 10);

    var edge   = repeat('#', w) + '\n';
    var inside = '#' + repeat('.', w-2) + '#\n'
    var rect   = [edge, repeat(inside, h-2), edge].join('');
    console.log(rect);
  }
}

function repeat(s, count) {
  return new Array(count+1).join(s);
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
