class Admin::HerosController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_hero, only: [:show, :edit, :update, :destroy]
  layout 'admin/application'

  def index
    @heros = Hero.paginate(:page => params[:page])
  end

  def show
  end

  def new
    @hero = Hero.new
  end

  def edit
  end

  def create
    @hero = Hero.new(hero_params)

    respond_to do |format|
      if @hero.save
        format.html { redirect_to admin_heros_url, notice: 'Successfully created.' }
        format.json { render action: 'show', status: :created, location: @hero }
      else
        format.html { render action: 'new' }
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end 
    end 
  end 

  def update
    respond_to do |format|
      if @hero.update(hero_params)
        format.html { redirect_to admin_heros_url, notice: 'Successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end 
    end 
  end

  def destroy
    @hero.destroy
    respond_to do |format|
      format.html { redirect_to admin_heros_url, notice: 'Successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
  def set_hero
    @hero = Hero.find(params[:id])
  end 

  def hero_params
    params.require(:hero).permit(:title, :description)
  end
end
