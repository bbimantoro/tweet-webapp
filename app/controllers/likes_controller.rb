class LikesController < ApplicationController
    # Set the authenticate_user method as a before_action  
    before_action :authenticate_user
    # Add a new action named create
    def create
        @like = Like.new(
            user_id: @current_user.id,
            post_id: params[:post_id]
        )
        @like.save
        redirect_to("/post/#{params[:post_id]}")
    end
    
    def destroy
        @like = Like.find_by(
            user_id: @current_user.id,
            post_id: params[:post_id],
        )
        @like.destroy
        redirect_to("/post/#{params[:post_id]}")
    end
    
end