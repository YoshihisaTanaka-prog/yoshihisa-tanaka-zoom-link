class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.admin
      redirect_to admin_path
    else
      redirect_to current_user.url
    end
  end

end
