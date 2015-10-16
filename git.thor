class Git < Thor

  include Thor::Actions

  source_root File.expand_path(File.dirname(__FILE__), 'git')

  desc 'setup', 'Setup git environment.'
  def setup
    email = ENV['EMAIL_ADDRESS'] || ask('What email address would you like to associate with git?', default: 'example@example.com'.gsub(/example/, ENV['USERNAME']))
    name  = ENV['FULL_NAME']     || ask('What is the full name associate with git?')
    template 'git/.gitconfig',        '~/.gitconfig',        email: email, name: name
    template 'git/.gitignore_global', '~/.gitignore_global'
    template 'git/.gitmessage',       '~/.gitmessage'
  end

end
