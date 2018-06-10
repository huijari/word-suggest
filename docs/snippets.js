export const levenshtein = `levenshtein(text, textLength, query, queryLength) {
	if (textLength == 0) return queryLength
	if (queryLength == 0) return textLength
	if (text[textLength - 1] == query[queryLength - 1]) cost = 0 // igualdade
	else cost = 1 // substituição
	return min(levenshtein(text, textLength - 1, query, queryLength) + 1, // deleção
	           levenshtein(text, textLength, query, queryLength - 1) + 1, // inserção
	           levenshtein(text, textLength - 1, query, queryLength - 1) + cost)
}`

export const memoization = `levenshtein(text, textLength, query, queryLength) {
	if (memory[textLength][queryLength].calculated)
		return memory[textLength][queryLength].value
	// process
	memory[textLength][queryLength] = result
	return result
}`

export const tree = `insert(node, value) {
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

export const sum = `m = \\sum_i len(palavra_i)`

export const time = [
  { value: 1026, avg: 1.7 },
  { value: 9399, avg: 2 },
  { value: 56796, avg: 3.5 },
  { value: 2313288, avg: 48.8 },
  { value: 81955923, avg: 1855 },
  { value: 111208929, avg: 2525 },
  { value: 144306692, avg: 3027 },
  { value: 826563262, avg: 20166 },
  { value: 1267912690, avg: 34196 },
  { value: 1559053090, avg: 40477 }
]
