# frozen_string_literal: true

class NoteBook
  attr_accessor :logged_notes
  def initialize
    @logged_notes = []
  end

  def add_new_note(title, message)
    @logged_notes << { title: title, message: message }
  end

  def show_all_notes
    raise 'The log is currently empty' if @logged_notes == []

    array = []
    @logged_notes.each do |k, _v|
      array << "#{k[:title]}: " "#{k[:message]}"
    end
    array.join(', ')
  end
  
end
