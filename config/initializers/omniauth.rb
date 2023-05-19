Rails.application.config.middleware.use OmniAuth::Builder do
    client_id = "0cebf209-5dac-4ce9-a4f1-d379c7221eba"
    tenet_id = "f99bd4e3-9b85-4899-87d0-75ad4473ef9f"
    provider :azure_activedirectory, client_id, tenet_id
    # other providers here
    provider :developer unless Rails.env.production?
  end