class Admin::SkillsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_skill, only: [:show, :edit, :update, :destroy]
  layout 'admin/application'

  def index
    @skills = Skill.order("updated_at DESC").paginate(:page => params[:page])
  end

  def show
  end

  def new
    @skill = Skill.new
  end

  def edit
  end

  def create
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to admin_skills_url, notice: 'Successfully created.' }
        format.json { render action: 'show', status: :created, location: @skill }
      else
        format.html { render action: 'new' }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to admin_skills_url, notice: 'Successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to admin_skills_url, notice: 'Successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def search
    if params[:q]
      @skills = Skill.where("name LIKE ?", "%" + params[:q] + "%").paginate(:page => params[:page])
    else
      redirect_to action: index
    end
  end

  private
  def set_skill
    @skill = Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:category_id, :name, :description, :position, :level)
  end
end
