import {
	VictoryAxis,
	VictoryChart,
	VictoryContainer,
	VictoryLabel,
	VictoryLine
} from 'victory'
import { InlineMath } from 'react-katex'

import { time } from './snippets.js'

## Análise Experimental

Para cada caso de teste disponibilizado, o programa foi executado 10 vezes e o tempo médio
coletado. No gráfico abaixo é mostrado a relação de tempo por <InlineMath math="m*n"/>
(número de caracteres no dicionário * número de caracteres na busca). E de fato vemos que
a proporção segue um padrão linear.

<VictoryChart containerComponent={<VictoryContainer responsive={false}/>}>
	<VictoryLine data={time} x="value" y="avg" />
	<VictoryAxis label="m * n" tickCount={4} />
	<VictoryAxis
		dependentAxis
		label="Time (s)"
		axisLabelComponent={<VictoryLabel dx={-60}/>}
		tickCount={2}
		tickFormat={t => (t/1000).toFixed(1)} />
</VictoryChart>
