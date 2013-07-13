class WelcomeController < ApplicationController

  def index
  	@activity=Activity.order("shift_date desc").where("is_over = ? " , false).first
  	redirect_to @activity if @activity.present?
  end

end
