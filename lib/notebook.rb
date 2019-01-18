class NoteBook

  attr_accessor :logged_notes
  def initialize
    @logged_notes = []
  end

  def add_new_note(title, message)
    @logged_notes << { title: title, message: message }
  end

  def show_all_notes
    array = []
    raise "The log is currently empty" if @logged_notes == []
     @logged_notes.each do | k, v|
       array << "#{ k[:title] } " "#{k[:message]}"
     end
     array.join(", ")
  end

end
