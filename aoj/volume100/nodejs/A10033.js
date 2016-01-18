function main(lines) {
  var noStacks = parseInt(lines[0], 10);
  var stacks = new Array(noStacks);
  for (var si = 0; si < noStacks; si++)
    stacks[si] = [];
  for (var i = 1;; i++) {
    var operation = lines[i];
    if (operation.match(/^quit/)) {
      break;
    } else if (operation.match(/^push/)) {
      var args = operation.split(/\s+/);
      var index = parseInt(args[1], 10) - 1;
      var block = args[2];
      stacks[index].push(block);
    } else if (operation.match(/^pop/)) {
      var args = operation.split(/\s+/);
      var index = parseInt(args[1], 10) - 1;
      var block = stacks[index].pop();
      console.log(block);
    } else if (operation.match(/^move/)) {
      var args = operation.split(/\s+/);
      var src = parseInt(args[1], 10) - 1;
      var dst = parseInt(args[2], 10) - 1;
      stacks[dst].push(stacks[src].pop())
    }
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
