class TasksController < ApplicationController
  before_action :set_task, only: [:show, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[:id].to_i)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create(task_strong_params)
    redirect_to task_path(task)
  end

  def destroy
    # @task = Task.find(params[:id].to_i)
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_strong_params
    params.require(:task).permit(:title, :description, :completed)
  end

  def set_task
    @task = Task.find(params[:id].to_i)
  end


end
