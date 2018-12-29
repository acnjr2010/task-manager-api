class Api::V1::TasksController < ApplicationController
  before_action :authenticate_with_token!

  def index
    tasks = current_user.tasks
    render json: { tasks: tasks }
  end

  def show
    task = current_user.tasks.find(params[id])
    render json: task, status: 200
  end

  def create
    task = current_user.tasks.build(task_params)

    task.save

    render json: task, status: 201
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :deadline, :done)
  end
end
