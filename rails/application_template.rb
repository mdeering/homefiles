PRIMARY_TEMPLATE_PATH = File.expand_path('~/.rails/templates')

def source_paths
  [PRIMARY_TEMPLATE_PATH]
end

# Copy over all files that exist in the template
Dir.glob("#{PRIMARY_TEMPLATE_PATH}/**/*", File::FNM_DOTMATCH).each do |file|
  next unless File.file?(file)
  source = file.gsub(/#{PRIMARY_TEMPLATE_PATH}\//, '')
  copy_file source, force: true
end

# Clean up files we are not going to need or replace
[
  'app/assets/javascripts/application.js',
  'app/assets/stylesheets/application.css',
  'app/helpers/application_helper.rb',
  'app/views/layouts/application.html.erb'
].each do |file|
  remove_file file
end

after_bundle do

  # Initialize some of the gems that we brought over.
  # generate 'responders:install'
  generate 'cucumber:install'
  generate 'devise:install'
  generate 'rspec:install'
  generate 'simple_form:install', '--bootstrap'

  # Part of the template brought over migrations for users and such
  # lets run those now
  rake 'db:create:all'
  rake 'db:migrate'

  run 'guard init inch livereload rails rspec rubocop yardstick'
  # Auto correct any
  run 'rubocop -D --rails -a'

  uncomment_lines 'spec/rails_helper.rb', /Rails\.root\.join/
end
