class Api::V1::TasksController < ApplicationController
  before_action :set_project, only: %i[ show get_project]
  before_action :set_task, only: %i[ assign_task]
  def index
    @tasks = current_user.tasks

    json_response @tasks
  end

  # Get PRoject details of single 
  def get_project
    @task.project
  end

  def show
    json_response @task
  end

  def create
    @task = current_user.tasks.new(task_params)
    if @task.save
      json_response @task, :created
    else
      json_response @task.errors, :unprocessable_entity
    end
  end

  def assign_task
    authorize @single_task
    if @single_task.update(assign_task_params)
      json_response @single_task
    else
      json_response @single_task.errors, :unprocessable_entity
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      project = Project.find(params[:id])
      @task = project.tasks
    end

    def set_task
      @single_task = Task.find(params[:task_id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :description, :status, :start_date, :end_date, :project_id)
    end

    def assign_task_params
      params.require(:task).permit(:assigned_user_id)
    end
end
