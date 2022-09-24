
TREE_SITTER_SRC=external/tree-sitter/lib/src/*.c

.PHONY: all
all: build

.PHONY: build
build: TreeSitterLib/TreeSitterLib.dll

TreeSitterLib/TreeSitterLib.dll: $(TREE_SITTER_SRC)
	@echo "Building TreeSitterLib.dll"
	@mkdir -p TreeSitterLib
	@iril -Iexternal/tree-sitter/lib/src -Iexternal/tree-sitter/lib/include -std=c99 $(TREE_SITTER_SRC) -o $@
