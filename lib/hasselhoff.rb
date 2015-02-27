require 'hasselhoff/version'
require 'desktop'

# Looking for freedom...
module Hasselhoff
	include Desktop

	module_function

	def set_random_hoff
		path = images.sample

		script = <<SCRIPT
tell application "System Events"
	set theDesktops to a reference to every desktop

	repeat with i from 1 to (count theDesktops)
		set picture of item i of the theDesktops to "#{path}"
	end repeat
end tell
SCRIPT

		`osascript -e '#{script}'`

		#osx = OSX.new
		#image = HTTP.uri?(path) ? WebImage.new(path) : LocalImage.new(path)
		#osx.desktop_image = image
	end

	private

	module_function

	def images
		Dir.glob("#{path_to_resources}/*")
	end

	def path_to_resources
		File.join(File.dirname(File.expand_path(__FILE__)), '../img')
	end
end
