class ItemsController < ApplicationController

	def create
		@activity = Activity.find(params[:activity_id])
		@item = @activity.items.create(params[:item])
		redirect_to activity_path(@activity)
	end

	def update
		@item = Item.find(params[:id])
		@item.update_attributes(:payup=>true)
		redirect_to activity_path(@item.activity)
	end
		
	def destroy
		@item = Item.find(params[:id])
		activity = @item.activity
		@item.destroy unless activity.is_over?
		redirect_to activity_path(activity)
	end	

end
