/**
 * @file My first try at a TS grammar
 * @author R.G. Esteves <rgesteves@gmail.com>
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "firsttry",

  rules: {
    // TODO: add the actual grammar rules
    source_file: $ => "hello"
  }
});
