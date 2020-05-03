class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new # needed to instantiate the form_for
  end

  def create
    @task = Task.new(task_params)
    @task.save

    # no need for app/views/tasks/create.html.erb
    redirect_to task_path(@task)
  end


def show
  @task = Task.find(params[:id])
end

  private

  def task_params
    params.require(:task).permit(:done, :name)
  end
end
