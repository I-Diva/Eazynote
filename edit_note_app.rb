module EasyNote
  class EditNote
    def initialize
      puts "Supply the note with its extension: "
      @note = gets.chomp
      openFile
    end

    def openFile
      array = []
      File.readlines(@note,"r+").each do |line|
        array << line.split("\r\n")
      end
      puts array[2]
    end
  end
end

EasyNote::EditNote.new