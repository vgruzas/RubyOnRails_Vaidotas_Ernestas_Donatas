class ApplicationController < ActionController::Base

  before_action :load_authors

  def load_authors
    @authors = ['Donatas', 'Vaidotas', 'Ernest'].map{|i| "#{i}"}.join(", ")
  end
end
