module EasyNote
  # create a class for the "createnote" feature within the Easynote Namespace
  class CreateNote
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
      puts 'Speaker:'
      gets.chomp
    end

    def note_content
      puts 'Note content:'
      gets.chomp
    end

    def save_note
      c = 'Title: ' << @title << "\n"
      c += 'Speaker: ' << @speaker << "\n"
      c += 'Date: ' << Time.now.strftime('%m/%d/%Y') << "\n"
      c += 'Time: ' << Time.now.strftime('%I:%M%p') << "\n"
      c += 'Content: ' << @content << "\n"
      file = File.new(@title << '.txt', 'w+')
      file.syswrite c
      file.close
    end
  end
end
EasyNote::CreateNote.new
