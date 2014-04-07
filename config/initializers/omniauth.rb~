OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
provider :google_oauth2,
'148766782815-70hg5n2pbcv9vh36tr1r80o8nkrjincs.apps.googleusercontent.com',
'DkrTre0Dtlwhf0bAUZw-Lkuz',{client_options: {ssl: {ca_file: Rails.root.join("lib/assets/cacert.pem").to_s}}}
end
