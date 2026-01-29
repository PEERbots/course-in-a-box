#!/usr/bin/env ruby
require 'yaml'
require 'fileutils'

# Path to the courses data file
DATA_FILE = '_data/courses.yml'
# Base directory for courses
COURSES_DIR = 'courses'

def sync_modules
  unless File.exist?(DATA_FILE)
    puts "Error: #{DATA_FILE} not found."
    return
  end

  courses = YAML.load_file(DATA_FILE)

  courses.each do |course|
    course_id = course['id']
    modules = course['modules']
    
    next if modules.nil? || modules.empty?

    modules.each do |mod|
      # Handle both string modules and object modules
      module_id = mod.is_a?(Hash) ? mod['id'] : mod
      module_title = mod.is_a?(Hash) ? mod['title'] : mod.capitalize

      next if module_id.nil?

      dir_path = File.join(COURSES_DIR, course_id, module_id)
      index_path = File.join(dir_path, 'index.md')

      # Create directory if it doesn't exist
      FileUtils.mkdir_p(dir_path)

      # Create index.md if it doesn't exist
      unless File.exist?(index_path)
        content = <<~FRONTMATTER
          ---
          title: #{module_title}
          layout: module_landing
          ---
        FRONTMATTER
        File.write(index_path, content)
        puts "Created: #{index_path}"
      else
        # If it exists, ensure it uses the correct layout
        file_content = File.read(index_path)
        if file_content.include?('layout: page') || file_content.include?('layout: "page"')
          updated_content = file_content.gsub(/layout: "?page"?/, 'layout: module_landing')
          File.write(index_path, updated_content)
          puts "Updated layout: #{index_path}"
        end
      end
    end
  end
end

sync_modules
