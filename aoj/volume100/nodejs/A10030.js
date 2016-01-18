function main(lines) {
  var items = {};
  lines[1].split(/\s+/).forEach(function(item) {
    items[item] = true;
  });

  var noContains = 0;
  lines[3].split(/\s+/).forEach(function(item) {
    if (items[item]) noContains++;
  });
  console.log(noContains);
}

var chunks = [];
process.stdin.on('data', function(chunk) {
  chunks.push(chunk)
});
process.stdin.on('end', function() {
  var lines = chunks.join('').split('\n');
  main(lines);
});
