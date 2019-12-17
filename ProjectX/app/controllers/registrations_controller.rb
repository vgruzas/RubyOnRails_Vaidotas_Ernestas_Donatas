# frozen_string_literal: true

# :nodoc:
class RegistrationsController < Devise::RegistrationsController

  before_action :super?, only: [:new]

  skip_before_action :require_no_authentication, only: [:new, :create, :cancel]

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username, :firstname, :lastname)
  end

end
