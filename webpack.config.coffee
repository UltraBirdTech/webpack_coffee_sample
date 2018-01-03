webpack = require('gulp-webpack').webpack
path    = require 'path'

current = process.cwd()

module.exports = {
    entry:
      sample: './assets/coffee/sample.coffee'
      'common/sample': './assets/coffee/common/sample.coffee'
 
    output: 
      filename: '[name].js'

    resolve: {
      modules: [path.join(current, './assets/coffee'), 'node_modules']
      extensions: ['.js', '.coffee'] 
    }

    module:  
      loaders: [
        { 
          test: /\.coffee$/,
          loader: 'coffee-loader'
        }    
      ]
}
