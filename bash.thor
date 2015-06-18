class Bash < Thor

  include Thor::Actions

  desc 'setup', 'Setup bashrc and directory strucutre that I like for loading configs.'
  def setup
    # Assume that we are going to have to force this or remove any existing file
    create_link "#{ENV['HOME']}/.bash", "#{Dir.pwd}/bash"
    create_link "#{ENV['HOME']}/.bashrc", "#{Dir.pwd}/bash/bashrc"
  end

end
