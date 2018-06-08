import React, { Fragment } from 'react'
import { render } from 'react-dom'

import 'katex/dist/katex.min.css'
import Header from './header.md'
import Intro from './intro.md'
import Modeling from './modeling.md'
import Analysis from './analysis.md'
import Experiments from './experiments.md'
import Conclusion from './conclusion.md'

const Article = () => (
  <Fragment>
    <Header />
		<Intro />
    <Modeling />
    <Analysis />
    <Experiments />
    <Conclusion />
  </Fragment>
)

render(<Article />, document.querySelector('article'))
