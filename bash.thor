class Bash < Thor

  include Thor::Actions

  desc 'setup', 'Setup bashrc and directory strucutre that I like for loading configs.'
  def setup
    # Assume that we are going to have to force this or remove any existing file
    create_link "#{ENV.fetch('HOME')}/.bash",   "#{Dir.pwd}/bash"
    create_link "#{ENV.fetch('HOME')}/.bashrc", "#{Dir.pwd}/bash/bashrc"
    create_link "#{ENV.fetch('HOME')}/bin",     "#{Dir.pwd}/bin"
    email     = ENV['EMAIL_ADDRESS'] ||= ask('What is your default email address?', default: 'example@example.com'.gsub(/example/, ENV['USER']))
    full_name = ENV['FULL_NAME']     ||= ask('What is full name? (ex: John Doe)')
    create_file "#{ENV.fetch('HOME')}/.bash/user.private.bash", "export EMAIL_ADDRESS='#{email}'\nexport FULL_NAME='#{full_name}'"
  end

end
