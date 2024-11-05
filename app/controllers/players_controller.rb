class PlayersController < ApplicationController
    before_action :set_player, only: %i[ show update destroy ]
    
    def index
        @players = Player.all
        render json: @players
    end

    def show
       render json: @player
    end

    def update end

    def destroy
        @player.destroy
    end

    private
    def set_player
      @player = Player.find(params[:id])
    end
end
