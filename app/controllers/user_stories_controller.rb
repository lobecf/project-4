class UserStoriesController < ApplicationController
    def show 
        user_story = UserStory.find_by(id: params[:id])
        render json: user_story
    end
    
    def create 
        user_story = UserStory.create(user_story_params)
        render json: user_story, status: :created
        
    end

    private
    def user_story_params
        params.permit(:main_character, :options_type, :settings_type, :live_type, :user_id, :story_id)
    end

end
