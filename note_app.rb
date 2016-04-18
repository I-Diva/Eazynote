module EasyNote
  # create a class for the "createnote" feature within the Easynote Namespace
  class CreateNote
    def initialize
	  @title = note_title
	  @speaker = note_speaker_name
	  @note_date = app_date
	  @content = note_content
	  save_note
    end

    def print_note
	  puts @title
	  puts @content
	  puts @speaker
	  puts @note_date
    end

    private
	
    def note_title
	  puts 'Note title: '
	  gets.chomp
	end

    def note_speaker_name
	  puts "Speaker:"
	  gets.chomp
    end

    def app_date
	  Time.now
	end

    def note_content
	  puts "Note content:"
	  gets.chomp
	end

    def save_note
	  file = File.new("input.txt", "w+")
	  file.syswrite 'Title: ' << @title
	  file.syswrite "\n"
	  file.syswrite 'Speaker: ' << @speaker
	  file.syswrite "\n"
	  file.syswrite 'Date: '
	  file.syswrite @note_date
	  file.syswrite "\n"
	  file.syswrite 'Content: ' << @content
	  file.syswrite "\n"
	  file.close
	end
  end
end
EasyNote::CreateNote.new()
