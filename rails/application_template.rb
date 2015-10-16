PRIMARY_TEMPLATE_PATH = File.expand_path('~/.rails/templates')

def source_paths
  [PRIMARY_TEMPLATE_PATH]
end

Dir.glob("#{PRIMARY_TEMPLATE_PATH}/**/*", File::FNM_DOTMATCH).each do |file|
  next unless File.file?(file)
  source = file.gsub(/#{PRIMARY_TEMPLATE_PATH}\//, '')
  copy_file source, force: true
end

after_bundle do
  generate 'simple_form:install', '--bootstrap'
end
