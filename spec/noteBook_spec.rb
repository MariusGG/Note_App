require "notebook"

describe NoteBook do
  let(:notebook) { NoteBook.new}

    context '#initialize note book' do
      it "is initialize with a empty log" do
        expect(notebook.log).to eq []
      end
    end

end
