# Looking at the tree-sitter parsing famework

> WARNING: Please note this is very much for self-study and to ensure reproducibility of the build/test, not meant to be useful beyond that.

## Building

To set up the environment you can do
```sh
nix develop
```
which will pull the `tree-sitter` CLI (and `node`) from the nixpkgs/unstable forge.  

> TODO: Should probably get the C compiler toolchain as well, just in case.

```sh
tree-sitter generate
tree-sitter build
```

## Testing

```sh
tree-sitter test
```

The tests are located in the `test/corpus` directory, and are
specified in the [tree-sitter test syntax](https://tree-sitter.github.io/tree-sitter/creating-parsers/5-writing-tests.html).  For testing on a single file (say, e.g. "input.test"), you can do:

```sh
tree-sitter parse input.test
```
which should output the parse tree in the s-expression syntax `tree-sitter` uses.
