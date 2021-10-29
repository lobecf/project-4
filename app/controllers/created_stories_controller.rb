class CreatedStoriesController < ApplicationController
    def index
        render json: CreatedStory.all
    end

    def create
        user = User.find_by(id: session[:user_id])
        created_story = user.created_stories.build(created_params)
        created_story.save
        render json: created_story, status: :created

    end

    def show
        created_story = find_created

        if created_story
            render json: created_story, methods: [:create_story]
        else
            not_found
        end
    end

    def update
        created_story = find_created
        if created_story
            created_story.update(created_params)
            render json: created_story
        else
            not_found
        end
    end

    def destroy
        created_story = find_created
        if created_story
            created_story.destroy
            head :no_content
        else
            not_found
        end
    end

    private
    def created_params
        params.permit(:name, :main_character, :options_type, :settings_type, :live_type)
    end

    def not_found
        render json: { error: "Story not found" }, status: :not_found
    end

    def find_created
        CreatedStory.find_by(id: params[:id])

    end

    

end
