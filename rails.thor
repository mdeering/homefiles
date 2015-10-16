class Rails < Thor

  include Thor::Actions

  source_root File.expand_path(File.dirname(__FILE__), 'git')

  desc 'setup', 'Setup rails environment.'
  def setup
    create_link "#{ENV['HOME']}/.railsrc", "#{Dir.pwd}/rails/railsrc"
    create_link "#{ENV['HOME']}/.rails",   "#{Dir.pwd}/rails"
  end

end
