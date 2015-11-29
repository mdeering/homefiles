PRIMARY_TEMPLATE_PATH = File.expand_path('~/.rails/templates')

def source_paths
  [PRIMARY_TEMPLATE_PATH]
end

Dir.glob("#{PRIMARY_TEMPLATE_PATH}/**/*", File::FNM_DOTMATCH).each do |file|
  next unless File.file?(file)
  source = file.gsub(/#{PRIMARY_TEMPLATE_PATH}\//, '')
  copy_file source, force: true
end

[
  'app/assets/javascripts/application.js',
  'app/assets/stylesheets/application.css',
  'app/helpers/application_helper.rb',
  'app/views/layouts/application.html.erb'
].each do |file|
  remove_file file
end

after_bundle do
  # generate 'responders:install'
  generate 'cucumber:install'
  generate 'devise:install'
  generate 'rspec:install'
  generate 'simple_form:install', '--bootstrap'

  rake 'db:migrate'

  run 'guard init inch livereload rails rspec rubocop yardstick'
  run 'rubocop -D --rails -a'
end
