class NoticeboardsController < ApplicationController


def create
	@notice = Noticeboard.new(params[:noticeboard])
	if @notice.save
			flash[:success] = "Saved Noticeboard!"
			redirect_to root_path
		else
			flash[:failed] = "Could Not Save Noticeboard"
			redirect_to root_path
		end

end
	def update
		@notice = params[:noticeboard]
		if @notice.save
			flash[:success] = "Saved Noticeboard!"
			redirect_to root_path
		else
			flash[:failed] = "Could Not Save Noticeboard"
			redirect_to root_path
		end
	end
  end