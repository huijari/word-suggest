#ifndef MOD_TREE
#define MOD_TREE

#include <stdint.h>

typedef struct Node Node;
struct Node {
	uint16_t cost;
	char* word;
	Node* left;
	Node* right;
};

/**
 * Inserts a new node into the tree
 * 
 * @param root The root of the original tree
 * @param cost Cost of the new node
 * @param word Word of the new node
 */
Node* insert(Node* root, uint16_t cost, char* word);

/**
 * Trasverses a tree in-order, printing the words and freeing the memory of nodes
 * 
 * @param tree Tree to be traversed
 */
void traverse(Node* tree);

#endif
