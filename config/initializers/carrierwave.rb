CarrierWave.configure do |config|
  config.storage = :aws
  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.aws_bucket = ENV['AWS_BUCKET_NAME']
  config.aws_acl = :public_read
  config.fog_attributes = {'Cache-Control' => 'max-age=3600'}

  config.aws_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: 'ap-northeast-1',
    config: AWS.config(use_ssl: false)
  }
end

