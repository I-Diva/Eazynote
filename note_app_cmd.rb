require 'rubygems'
require 'sqlite3'
require './note_app'
include Eazynote
def start
  puts 'Please Enter the Your(Author) name: '
  author_name = gets.chomp
  $author = NotesApplication.new author_name
  ask
end

def create
  puts 'Enter your note: '
  text = gets.chomp
  $author.create text
  ask
end

def name
  puts $author.name
  ask
end

def ask
  puts
  puts 'Continue?(y/n): '
  answer = gets.chomp.downcase
  puts

  if answer == 'y'
    puts 'What do you want to do?: '
    puts 'Choose from the following: '
    puts ["\t c to create"]

    action = gets.chomp.downcase

  case action
  when 'c' then create

    else 
	puts "No other till further notice"
    end

  end
end

start
