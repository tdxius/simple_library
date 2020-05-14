class ApplicationController < ActionController::Base
  include Pundit

  before_action :authenticate_user!

  layout 'application'
end
