module CommentsHelper
	def activityID (activity)
		@activity_id=params[:id]
	end
	def creatorID (user)
		@creator_id=current_user.id
	end
end
