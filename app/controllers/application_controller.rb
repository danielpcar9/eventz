class ApplicationController < ActionController::Base
  layout ApplicationLayout
  helper :all
  allow_browser versions: :modern
end
