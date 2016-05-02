module EasyNote
  # create a class for the "createnote" feature within the Easynote Namespace
  class CreateNote
  	@@date = Time.now.strftime("%m/%d/%Y")
  	@@time = Time.now.strftime("%I:%M%p")
	def initialize
	  @title = note_title
	  @speaker = note_speaker_name
	  @content = note_content
	  save_note
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

    def note_content
	  puts "Note content:"
	  gets.chomp
	end

    def save_note
	  file = File.new(@title << " .txt", "w+")
	  file.syswrite 'Title: ' << @title
	  file.syswrite "\n"
	  file.syswrite 'Speaker: ' << @speaker
	  file.syswrite "\n"
	  file.syswrite 'Date: ' << @@date
	  file.syswrite "\n"
	  file.syswrite 'Time: ' << @@time
	  file.syswrite "\n"
	  file.syswrite 'Content: ' << @content
	  file.syswrite "\n"
	  file.close
	end
  end
  class SearchNote
  end
end
EasyNote::CreateNote.new()
