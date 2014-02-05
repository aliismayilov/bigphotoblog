S3DirectUpload.config do |c|
  c.access_key_id = ENV['AWS_ID']
  c.secret_access_key = ENV['AWS_KEY']
  c.bucket = ENV['S3_BUCKET']
  c.region = nil
  c.url = nil
end
