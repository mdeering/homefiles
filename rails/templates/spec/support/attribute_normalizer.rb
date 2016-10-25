require 'attribute_normalizer'

RSpec.configure do |config|
  config.include AttributeNormalizer::RSpecMatcher, type: :model
end
