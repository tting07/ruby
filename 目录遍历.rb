require "find"

def traverse(file_path)
	if File.directory?(file_path)
		Dir.foreach(file_path) do |file_name|
			if file_name != "." and file_name != ".."
				traverse(file_path)		
			end
		end
	end
end

if __FILE__ == $0
	file_path = 'c:/temp'
	Find.find(file_path) do |file_name|
		p file_name
	end
end