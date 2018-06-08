const path = require('path')
const HtmlWebpackPlugin = require('html-webpack-plugin')

const babel = {
  loader: 'babel-loader',
  options: {
    presets: [
      [
        'env',
        {
          targets: { browsers: 'last 2 chrome versions' }
        }
      ],
      'react'
    ]
  }
}

module.exports = {
  entry: './docs',
  output: {
    path: path.resolve(__dirname, 'docs/build'),
    filename: 'bundle.js'
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: [babel]
      },
      {
        test: /.md$/,
        use: [babel, '@mdx-js/loader']
      },
      {
        test: /.css$/,
        use: ['style-loader', 'css-loader']
      },
      {
        test: /.(woff|woff2|eot|ttf|otf|jpg)$/,
        use: 'file-loader'
      }
    ]
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: 'docs/template.html'
    })
  ]
}
