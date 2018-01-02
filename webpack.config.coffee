webpack = require('gulp-webpack').webpack
path    = require 'path'

current = process.cwd()

module.exports = {
    output: 
      filename: 'app.js'

    resolve: {
      extenions: ['', '.js', '.coffee'] 
      root: path.join(current, './assets/coffee')
    }

    module:  
      loaders: [
        { 
          test: /\.coffee$/,
          loader: 'coffee-loader'
        }    
      ]
}
