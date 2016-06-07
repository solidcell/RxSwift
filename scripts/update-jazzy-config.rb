#!/usr/bin/env ruby

require 'yaml'

def swift_classes(directory)
  filepaths = Dir["RxSwift/#{directory}/*"]
  swift_files = filepaths.select { |file| file =~ /.*\.swift$/ }
  basenames = swift_files.map { |f| File.basename(f, ".swift") }
  basenames
end

def category(name)
  {
    'name' => name,
    'children' => swift_classes(name),
  }
end

category_names = %w(Subjects Disposables Schedulers)
categories = category_names.map { |name| category(name) }
config = { "custom_categories" => categories }

File.open('.jazzy.yml','w') do |h|
   h.write config.to_yaml
end
