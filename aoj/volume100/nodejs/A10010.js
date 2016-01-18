function main(lines) {
  for (var i = 0;; i++) {
    var tokens = lines[i].split(/\s+/);
    var a  = parseInt(tokens[0], 10);
    var b  = parseInt(tokens[2], 10);
    var op = tokens[1];
    if (op == '?')
      break;

    console.log(calculate(op, a, b));
  }
}

function calculate(op, a, b) {
  switch (op) {
    case '+': return a + b;
    case '-': return a - b;
    case '*': return a * b;
    case '/': return Math.floor(a / b);
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
