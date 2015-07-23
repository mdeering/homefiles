class Ruby < Thor

  include Thor::Actions

  desc 'setup', 'Setup ruby environment.'
  def setup
    create_file '~/.gemrc', 'gem: --no-document'
  end

end
