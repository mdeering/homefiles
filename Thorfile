class Default < Thor

  desc 'setup', 'Setup all homefiles and environment variables that go along with them.'
  def setup
    [:bash, :git, :ruby, :tmux, :vim].each do |config|
      invoke "#{config}:setup"
    end
  end

end
