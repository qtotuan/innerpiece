class PuzzlesController < ApplicationController
  skip_before_action :login_required, :only => [:index]
end
