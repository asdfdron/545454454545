#-------------------------------------------------------------------------------
#
# Layers Panel
# Version beta 0.10.2
#
#-------------------------------------------------------------------------------
#
# Thomas Hauchecorne, Chips Architecture
# contact@chips-architecture.com
#
# OSX support by Thomas Thomassen
#
#-------------------------------------------------------------------------------
#
# All rights reserved.
# THIS SOFTWARE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES; 
# INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND 
# FITNESS FOR A PARTICULAR PURPOSE.
#
#-------------------------------------------------------------------------------
#
# BY USING THIS SOFTWARE, YOU AGREE TO SEND ANONYMOUS DATA
# (Completely anonymous data, used to enhance the plugin)
#
#-------------------------------------------------------------------------------

require 'sketchup.rb'
require 'extensions.rb'

#-------------------------------------------------------------------------------

lp_ext = SketchupExtension.new 'Layers Panel', 'jbb_layers_panel/layers_panel.rb'

lp_ext.creator     = 'Thomas Hauchecorne, Chips Architecture'
lp_ext.version     = 'beta 0.10.2'
lp_ext.copyright   = 'Thomas Hauchecorne © 2014'
lp_ext.description = 'Replaces Sketchup\'s layers window, with nesting/sorting/grouping/locking features.'

Sketchup.register_extension lp_ext, true


path = File.dirname( __FILE__ ) + "/layers_panel.rb"
if File.exists?(path)
	File.delete(path)
end#if

path = File.dirname( __FILE__ ) + "/Layers Panel.rb"
if File.exists?(path)
	File.delete(path)
end#if
