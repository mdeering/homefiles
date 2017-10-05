class Tmux < Thor

  include Thor::Actions

  desc 'setup', 'Setup tmux and its requirements.'
  def setup
    create_link "#{ENV.fetch('HOME')}/.tmux.conf", "#{Dir.pwd}/tmux/tmux.conf"
  end

end
