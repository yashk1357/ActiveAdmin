class AuthController < ApplicationController
  skip_before_action :verify_authenticity_token
    def callback
      auth = request.env['omniauth.auth']
      # Use the auth hash to retrieve user information or perform further actions
      # For example, you can access user details with `auth.info`.
      # Implement your logic here, such as creating a user session or generating an access token.
  
      render json: { message: 'Authentication successful',data: auth }
    end
  
    def failure
      # Handle authentication failure
      render json: { message: 'Authentication failed' }, status: :unauthorized
    end
  end
  