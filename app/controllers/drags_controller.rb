class DragsController < ApplicationController

  def update
    puts "*********** update"
    puts params[:chosen_id]
    puts params[:dropped_id]
  end
end
