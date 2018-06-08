(load "line.lisp")

(include "io.h")
(include "tree.h")
(include <stdbool.h>)
(include <stddef.h>)
(include <stdlib.h>)
(include <string.h>)

(function compare ((Node* node) (uint16_t cost) (char* word)) -> bool
	(if (< cost node->cost) (return false))
	(if (> cost node->cost) (return true))
	(return (> (strcmp word node->word) 0)))

(function insert ((Node* root) (uint16_t cost) (char* word)) -> Node*
	(when (== root NULL)
		(decl ((Node* node = (malloc (sizeof Node)))))
		(set node->cost cost)
		(set node->word word)
		(set node->left NULL)
		(set node->right NULL)
		(return node))
	
	(line)
	(if (compare root cost word)
		(set root->right (insert root->right cost word))
		(set root->left (insert root->left cost word)))
	(return root))

(function traverse ((Node* node)) -> void
	(if (== node NULL) (return))

	(line)
	(traverse node->left)
	(writeWord node->word)
	(traverse node->right)

	(line)
	(free node->word)
	(free node))
