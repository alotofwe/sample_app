CarrierWave.configure do |config|
  config.asset_host = ENV['STORAGE_HOST']
end
