class Web::GamesController < Web::ApplicationController
  def index
    @games = Game.all
  end

  def add
    @game = Game.new
  end

  def create
    Game.create!(game_params)
    redirect_to game_list_path
  rescue ActiveRecord::RecordInvalid
    @game = Game.new(game_params)
    render :add
  end

  private
  def game_params
    params.require(:game).permit(:name, :description)
  end
end
