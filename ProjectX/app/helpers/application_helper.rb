# frozen_string_literal: true

# :nodoc:
module ApplicationHelper
  def active?(controller, action)
    params[:action] == action &&
      params[:controller] == controller ? 'active' : nil
  end
end
