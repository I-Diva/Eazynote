require 'firebase'
require 'sqlite3'
$db = SQLite3::Database.open "note.db"
module Eazynote
  # create a class note-taking application that uses modules for namespacing
  class NotesApplication
    attr_reader :name, :notes

    def initialize(author)
      error_handler author
      @name = author
      @notes = $db.execute("SELECT * FROM my_notes")
    end

    def create(note_content)
      check_note_input note_content
      sql = "INSERT INTO my_notes (`note_content`) VALUES ('#{note_content}')"
	  $db.execute(sql)
    end

    def get(note_id)
      check_note_id note_id
      @notes[note_id]
    end
  
    private

    def check_if_note_exists(note_id)
      return 'Note does not exist' if @notes[note_id].nil?
      nil
    end

    def check_note_input(note)
      raise 'Input should be a string' unless note.is_a? String
      nil
    end

    def check_note_id(note_id)
      raise 'Note Id must be an Integer' unless note_id.is_a? Integer
      nil
    end

    def error_handler(author)
      raise 'Input should be a string' unless author.is_a? String
      raise 'No Chars Allowed' if author =~ /[~!@#$%^&*(){}|:<>]+/
      raise 'Author name cannot be empty' if author.empty?
      raise RuntimeError if author.nil?
      nil
    end
  end
end
