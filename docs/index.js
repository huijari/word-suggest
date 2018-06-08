import React from 'react'
import { render } from 'react-dom'

import 'katex/dist/katex.min.css'
import Header from './header.md'

render(<Header />, document.querySelector('article'))
