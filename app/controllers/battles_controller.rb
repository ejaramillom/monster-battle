class BattlesController < ApplicationController
  def index
      @battles = Battle.all
  end

  def show; end

  def create; end

  def update; end

  def delete; end
end
