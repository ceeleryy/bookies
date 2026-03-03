if Rails.env.development? || Rails.env.test?
    # This tells Ruby where the Homebrew certificates live on Apple Silicon Macs
    cert_path = "/opt/homebrew/etc/openssl@3/cert.pem"
    
    if File.exist?(cert_path)
      ENV['SSL_CERT_FILE'] = cert_path
    end
  end