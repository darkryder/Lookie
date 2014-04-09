OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
provider :google_oauth2,
'Nope',
'You won"t get it from here',{client_options: {ssl: {ca_file: Rails.root.join("lib/assets/cacert.pem").to_s}}}
end
