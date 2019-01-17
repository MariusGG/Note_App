class NoteBook

  attr_accessor :logged_notes
  def initialize
    @logged_notes = []
  end

  def add_new_note(title, message)
    new_note = { title: title, message: message }
    @logged_notes << new_note
  end
end
