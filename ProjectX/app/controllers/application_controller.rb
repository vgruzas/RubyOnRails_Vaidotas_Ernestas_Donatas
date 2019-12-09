class ApplicationController < ActionController::Base

  before_action :load_authors
  helper_method :admin?

  def load_authors
    @authors = ['Donatas', 'Vaidotas', 'Ernest'].map{|i| "#{i}"}.join(", ")
  end


  def admin?
    current_user && current_user.is_super == true
  end

  def is_super?
    flash[:notice] = 'Access_Denied'
    redirect_back fallback_location: root_path unless admin?
  end

end
