module ApplicationHelper

  def hide_omniauth_login
    unless !!current_lender
      link_to "Lender Login in with Google", lender_google_oauth2_omniauth_authorize_path
    end
  end

  def hide_omniauth_signup
    unless !!current_lender
      link_to "Sign up with Google", lender_google_oauth2_omniauth_authorize_path
    end
  end

end
