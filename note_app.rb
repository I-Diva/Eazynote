
module EasyNote
  class CreateNote
	def initialize
	  @title = getTitle
	  @speaker = getSpeakerName
	  @note_date = setDate
	  @content = getContent
	  saveNote
	end

	def printNote
	  puts @title
	  puts @content
	  puts @speaker
	  puts @note_date
	end

	private
	
	def getTitle
	  puts "Note title: "
	  gets.chomp
	end

	def getSpeakerName
	  puts "Speaker:"
	  gets.chomp
	end

	def setDate
	  time = Time.now
	end

	def getContent
	  puts "Note content:"
	  gets.chomp
	end

	def saveNote
	  file = File.new(@title<<".txt", "w+")
	  file.syswrite "Title: " << @title
	  file.syswrite "\n"
	  file.syswrite "Speaker: "<< @speaker
	  file.syswrite "\n"
	  file.syswrite "Date: "
	  file.syswrite @note_date
	  file.syswrite "\n"
	  file.syswrite "Content: "<< @content
	  file.syswrite "\n"
	  file.close
	end
  
  end

end
EasyNote::CreateNote.new()
