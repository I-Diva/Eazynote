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
      content_to_write = 'Title: ' << @title << "\n"
      content_to_write += 'Speaker: ' << @speaker << "\n"
      content_to_write += 'Date: ' << Time.now.strftime('%m/%d/%Y') << "\n"
      content_to_write += 'Time: ' << Time.now.strftime('%I:%M%p') << "\n"
      content_to_write += 'Content: ' << @content << "\n"
      file = File.new(@title << '.txt', 'w+')
      file.syswrite content_to_write
      file.close
    end
  end
end
EasyNote::CreateNote.new
