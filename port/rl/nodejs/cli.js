#!/usr/bin/env node
var ARGF = require('argf');
var argv = require('yargs')
  .usage('rl - Reverse lines')
  .option('delimiter', {
    alias: 'd',
    type: 'string',
    describe: 'Delimit lines by DELIM',
    default: '',
  })
  .help('help')
  .version(function() { return '0.2.0' })
  .argv;

var argf = new ARGF(argv._);
argf.forEach(function(line) {
  line = line.replace(/\n$/, '');
  line = line.split(argv.delimiter).reverse().join(argv.delimiter);
  console.log(line);
});
