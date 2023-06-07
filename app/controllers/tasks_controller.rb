class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(position: :asc)
  end

  def create

  end
end
