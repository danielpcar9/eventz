class ApplicationController < ActionController::Base
  helper :all
  allow_browser versions: :modern
end
