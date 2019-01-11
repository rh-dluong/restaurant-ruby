#### Food Finder ####
#
# Launch this Ruby file form the command line
# to get started
#

APP_ROOT = File.dirname(__FILE__)

#require "#{APP_ROOT}/lib/guide"
$:.unshift( File.join(APP_ROOT, 'lib') )
require 'guide'
guide = Guide.new('restaurants.txt')
guide.launch!
