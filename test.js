#!/usr/bin/env node

const { dim, green, red } = require('chalk')
const { execSync } = require('child_process')
const { unlinkSync } = require('fs')

const { name } = require('./package.json')

const min = 1
const max = 10

for (let i = min; i <= max; i++) {
  try {
    execSync(`build/${name} < tests/input${i}.txt > output.tmp`)
  } catch (e) {
    console.error(red(`Command failed in test ${i}`))
    exit()
  }

  try {
    execSync(`diff tests/output${i}.txt output.tmp`)
  } catch (e) {
    console.error(red(`Test ${i} failed`))
    console.error(e.stdout.toString('utf8'))
    exit()
  }

  console.log(dim(`Test ${i} passed`))
}

console.log(green('All tests passed'))
exit()

function exit() {
  try {
    unlinkSync('output.tmp')
  } catch {}
  process.exit()
}
