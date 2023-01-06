class Api::V1::ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show ]
  before_action :authenticate_user!

  # GET /api/v1/projects
  def index
    projects = current_user.projects
    json_response(projects)
  end

  # GET /api/v1/projects/1
  def show
    project = Api::V1::ProjectSerializer.serialize(@project)
    json_response(project)
  end

  #get all tasks
  def get_all_tasks
    project = Project.find(params[:project_id])
    tasks = project.tasks
    json_response tasks
  end

  def create
    @project = current_user.projects.new(project_params)
    if @project.save
      json_response @project
    else
      json_response @project.errors, :unprocessable_entity
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      user = User.find(params[:id])
      @project = user.projects
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :description, :status, :start_date, :end_date)
    end
end
