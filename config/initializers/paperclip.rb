Paperclip::Attachment.default_options[:storage] = :s3
Paperclip::Attachment.default_options[:bucket] = ENV['S3_BUCKET']
Paperclip::Attachment.default_options[:s3_permissions] = :public_read
Paperclip::Attachment.default_options[:s3_credentials] = {
  access_key_id: ENV['AWS_ID'],
  secret_access_key: ENV['AWS_KEY']
}
# Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
