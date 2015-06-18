class Vim < Thor

  include Thor::Actions

  desc 'setup', 'Setup vim and its requirements.'
  def setup
    create_link "#{ENV['HOME']}/.vim",   "#{Dir.pwd}/vim"
    create_link "#{ENV['HOME']}/.vimrc", "#{Dir.pwd}/vim/vimrc"
  end

end
