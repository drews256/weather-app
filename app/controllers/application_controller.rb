class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true

  before_action :persist_last_visited_path, :authenticate_user!, except: [:home]

  def home
  end

  private

  def persist_last_visited_path
    unless
      Rails.configuration.ignored_paths.include?(request.path) || request.xhr?
      session[:persist_last_visited_path] = request.path
    end
  end

  def after_sign_in_path_for(resource)
    if session[:last_visited_path].present?
      session[:last_visited_path]
    else
      root_path
    end
  end
end
