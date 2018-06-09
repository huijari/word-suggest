export const levenshtein =
`levenshtein(text, textLength, query, queryLength) {
	if (textLength == 0) return queryLength
	if (queryLength == 0) return textLength
	if (text[textLength - 1] == query[queryLength - 1]) cost = 0
	else cost = 1
	return min(levenshtein(text, textLength - 1, query, queryLength) + 1,
	           levenshtein(text, textLength, query, queryLength - 1) + 1,
	           levenshtein(text, textLength - 1, query, queryLength - 1) + cost)
}`

export const memoization =
`levenshtein(text, textLength, query, queryLength) {
	if (memory[textLength][queryLength].calculated)
		return memory[textLength][queryLength].value
	// process
	memory[textLength][queryLength] = result
	return result
}`

export const tree =
`insert(node, value) {
	if (node.empty) return Node(value)
	if (value < node.value) node.left = insert(node.left, value)
	else node.right = insert(node.right, value)
	return node
}
traverse(node) {
	if (node.notEmpty) {
		traverse(node.left)
		print(node.value)
		traverse(node.right)
	}
}`
