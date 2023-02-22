class LibrariesController < ApplicationController

    def index
        if current_user
            library = current_user.libraries
            render json: library.as_json
        else
            render json: [], status: :unauthorized
        end
    end

    def show
        user = User.find_by(id: params[:id])
        library = user.libraries
        render json: library.as_json
    end

    def create
        game = Library.new(
            user_id: current_user.id,
            game_id: params[:game_id],
            title: params[:title],
        )
        user = User.find_by(id: current_user.id)
        if user.libraries.find_by(game_id: params[:game_id])
            render json: {errors: game.errors.full_messages}, status: :unprocessable_entity
        else
            game.save
            render json: {game: game}
        end
    end

    def destroy
        if current_user
            game = current_user.libraries.find_by(id: params[:id])
            game.destroy
            render json: {message: "Game removed from library", game: game}
        else
            render json: [], status: :unauthorized
        end
    end
    
end
