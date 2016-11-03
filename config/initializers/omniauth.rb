Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 'b8a60536f08218936c45', '260f4c48b08fd9318ffc11f8a3ccb1c96e148279'
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET']
end
