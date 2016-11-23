require 'net/http'
require 'json'

class Ruby < Thor

  include Thor::Actions

  desc 'setup', 'Setup ruby environment.'
  def setup
    create_file '~/.gemrc', 'gem: --no-document'
    unless File.exists?("#{ENV['HOME']}/.gem/credentials")
      rubygems_email    = ask('What is your rubygems.org email?', default: ENV['EMAIL_ADDRESS'] || 'example@example.com'.gsub(/example/, ENV['USERNAME']))
      rubygems_password = ask('What is your rubygems.org password?', echo: false)
      create_file "#{ENV['HOME']}/.gem/credentials", "---\n:rubygems_api_key: #{rubygems_api_key(rubygems_email, rubygems_password)}"
      chmod "#{ENV['HOME']}/.gem/credentials", 0600
    end
  end

  private

  def rubygems_api_key(email, password)
    uri = URI.parse('https://rubygems.org/api/v1/api_key.json')
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(uri.request_uri)
    request.basic_auth(email, password)
    response = http.request(request)
    JSON.parse(response.body)['rubygems_api_key']
  end

end
