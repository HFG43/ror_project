class PlayersController < ApplicationController
    before_action :set_player, only: %i[ show update destroy ]
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActionController::ParameterMissing, with: :parameter_missing
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        @players = Player.all
        render json: @players
    end

    def show
       render json: @player
    end

    def update
        if @player.update(player_params) #Ver params
          render json: @player
        else
          render json: @player.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @player.destroy
    end

    private
    def set_player
      @player = Player.find(params[:id])
    end

    def player_params
        params.require(:player).permit(:position, :school, :birthdate, :club_id, :team_id) ##REVISAR PARAMS
    end

    def record_not_found
        render json: { error: 'Player not found' }, status: :not_found
    end

    def parameter_missing
        render json: { error: 'Missing parameter' }, status: :unprocessable_entity
    end

    def record_invalid(exception)
        render json: { error: exception.record.errors.full_messages.join(',') }, status: :unprocessable_entity
    end
end
