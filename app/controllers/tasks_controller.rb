class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    puts "*********** update"
    puts params[:chosen_id]
    puts params[:dropped_id]
  end
end
