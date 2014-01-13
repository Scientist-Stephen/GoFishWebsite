require 'sass/plugin/rack'
require './my_app'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

run MyApp
