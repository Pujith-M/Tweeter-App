class Users::OmniauthController < ApplicationController
  # google callback
  def google_oauth2
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user
      # set_flash_message(:notice, :success, kind: 'Google') if is_navigational_format?
      if is_navigational_format?
        flash[:notice] = 'Successfully sign-in with Google'
      end
    else
      flash[:error] = 'There was a problem signing you in through Google. Please register or try signing in later.'
      redirect_to new_user_registration_url
    end 
  end
  
  def failure
    flash[:notice] = 'There was a problem signing you in. Please register or try signing in later.' 
    redirect_to new_user_registration_url
  end
  
end
