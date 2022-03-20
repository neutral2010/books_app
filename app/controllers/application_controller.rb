# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = %i[
      email password password_confirmation remember_me
      name postal_code address self_description
    ]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  private

  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end
end
