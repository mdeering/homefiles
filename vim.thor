class Vim < Thor

  include Thor::Actions

  desc 'setup', 'Setup vim and its requirements.'
  def setup
    create_link "#{ENV.fetch('HOME')}/.vim",   "#{Dir.pwd}/vim"
    create_link "#{ENV.fetch('HOME')}/.vimrc", "#{Dir.pwd}/vim/vimrc"
    inside "#{ENV.fetch('HOME')}/.vim" do
      run('git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle')
      run('vim +BundleInstall +qall')
    end
  end

end
