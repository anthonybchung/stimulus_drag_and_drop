# frozen_string_literal: true

class Drag

  # Dragging a row from higher to a lower position.
  # e.g: position 2 to 5.
  def drag_down(chosen,dropped)
    task_chosen = Task.find(chosen)
    chosen_position = Task.find(chosen).position
    dropped_position = Task.find(dropped).position

    puts "chosen: #{chosen}"
    puts "dropped: #{dropped}"
    puts "chosen_position: #{chosen_position}"
    puts "dropped_position: #{dropped_position}"
    range = Task.where('position > ? and position <= ?', chosen_position, dropped_position)
    task_chosen.position = dropped_position

    range.each do |row|
      puts "*************** row"
      puts "ID: #{row.id}"
      row_position = row.position
      puts "row_position: #{row_position}"
      row.position = row_position - 1
      row.save
      puts "row_position: #{row.position}"
    end

    task_chosen.save
  end
end
