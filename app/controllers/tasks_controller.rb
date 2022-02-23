class TasksController < ApplicationController
  def index
    @tasks = Task.all    
    render json: @tasks.to_json
  end

  def create 
    @task = Task.create(task_params)
    render json: @task.to_json
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    render json: @task.to_json
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render json: @task.to_json
  end


  private
    def task_params
      params.require(:task).permit(:title)
    end

end
