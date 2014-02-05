RSpec.configure do |config|
  config.include Paperclip::Shoulda::Matchers
end

Paperclip::Attachment.default_options[:path] = ':class/:attachment/:style/:filename'
