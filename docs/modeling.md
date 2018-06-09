import Code from 'react-syntax-highlighter'
import { githubGist } from 'react-syntax-highlighter/styles/hljs'

import { levenshtein, memoization, tree } from './snippets.js'

## Modelagem

O problema foi resolvido computando o número de operações de edição necessárias (equivalente
à distância Levenshtein) para cada palavra do dicionário. Em seguida é verificado se este
número é menor do que o número requerido, sendo este menor, a palavra é adicionada em uma árvore
binária.
Depois disso a árvore é percorrida em ordem, imprimindo as palavras armazenadas.

Para o número de operações foi utilizado o algorítimo recursivo para a distância Levenshtein:
<Code language="c" style={githubGist}>{levenshtein}</Code>

Para evitar recalcular valores previamente calculados, foi utilizada uma matriz como memória, onde
os dois parâmetros de tamanho da função são usados como índices. Resultando em algo similar a:
<Code language="c" style={githubGist}>{memoization}</Code>

As operações da árvore são apresentadas abaixo em forma de pseudo-código:
<Code language="c" style={githubGist}>{tree}</Code>
