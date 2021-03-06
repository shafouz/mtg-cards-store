const { environment } = require('@rails/webpacker')
const erb = require('./loaders/erb')

environment.loaders.prepend('erb', erb)

const webpack = require('webpack');
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery'
}));

module.exports = environment
