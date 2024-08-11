class BattlesController < ApplicationController
  before_action :set_battle, only: %i[show]
  def index
    @battles = Battle.all
  end

  def show
    render json: { message: @battle }, status: :ok
  end

  def create; end

  def update; end

  def delete; end

  private

  def set_battle
    @battle = Battle.find(params[:id])
  end
end
