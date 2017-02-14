class TasksController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def create
    task = Task.create(task_params)
    redirect_to tasks_path
  end

  def new
   @task = Task.new
 end

 def edit

 end

 def show
 end

 def update
  @task.update(task_params)
  redirect_to tasks_path

end

def destroy
      @task.destroy
    redirect_to tasks_path
end
def task_params
    # params[:restaurant] == params.require(:restaurant)
    params.require(:task).permit(:name, :status)
  end

  def set_restaurant
    @task = Task.find(params[:id])
  end
end
