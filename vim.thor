class Vim < Thor

  include Thor::Actions

  desc 'setup', 'Setup vim and its requirements.'
  def setup
    create_link "#{ENV['HOME']}/.vim",   "#{Dir.pwd}/vim"
    create_link "#{ENV['HOME']}/.vimrc", "#{Dir.pwd}/vim/vimrc"
    inside "#{ENV['HOME']}/.vim}" do
      run('git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle')
      run('vim +BundleInstall +qall')
    end
  end

end
