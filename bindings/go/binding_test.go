package tree_sitter_firsttry_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_firsttry "github.com/tree-sitter/tree-sitter-firsttry/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_firsttry.Language())
	if language == nil {
		t.Errorf("Error loading My first try at a TS grammar grammar")
	}
}
