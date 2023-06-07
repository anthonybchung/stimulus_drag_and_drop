class DragsController < ApplicationController

  def update
    puts "*********** update"
    puts params[:chosen_id]
    puts params[:dropped_id]
    Drag.new.drag_down(params[:chosen_id],params[:dropped_id])
    redirect_to tasks_path
  end
end
