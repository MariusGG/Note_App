# frozen_string_literal: true

require 'notebook'

describe NoteBook do
  let(:notebook) { NoteBook.new }

  context '#initialize note book' do
    it 'is initialize with a empty log' do
      expect(notebook.logged_notes).to eq []
    end
  end

  it 'adds new notes' do
    notebook.add_new_note('title', 'message')
    expect(notebook.logged_notes).to eq [{ title: 'title', message: 'message' }]
  end

  it 'shows all notes' do
    notebook.add_new_note('note1', 'peanutbutter')
    notebook.add_new_note('note2', 'jelly')
    expect(notebook.show_all_notes).to eq 'note1: peanutbutter, note2: jelly'
  end

  it 'throws an error to say the notes log is empty' do
    notebook.logged_notes = []
    expect(notebook.logged_notes).to be_empty
    expect { notebook.show_all_notes }.to raise_error 'The log is currently empty'
  end
end
