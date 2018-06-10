import { InlineMath } from 'react-katex'

import { sum, complexity } from './snippets'

## Análise de Complexidade

Para o cálculo da distância entre cada palavra e a busca, nós percorremos um espaço
equivalente a <InlineMath>len(palavra)*len(busca)</InlineMath>. Como precisamos fazer o cálculo
para cada palavra do dicionário podemos definir <InlineMath math={sum} />
e <InlineMath>n = len(busca)</InlineMath>, resultando em uma complexidade <InlineMath math="O(mn)" />.

A inserção de todos os elementos na árvore tem complexidade <InlineMath>O(nlogn)</InlineMath> no caso médio,
chegando a <InlineMath>O(n^2)</InlineMath> no pior caso. Mas considerando o número de resultados que de
fato são inseridos, esta etapa tem uma contribuição de tempo despresível.

A etapa final de impressão do resultado tem complexidade <InlineMath>O(n)</InlineMath>, também despresível.
