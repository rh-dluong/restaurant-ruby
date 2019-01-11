require 'restaurant'
class Guide

  def initialize(path=nil)
    # locate the restaurant text file at path
    Restaurant.filepath = path
    if Restaurant.file_exists?
      puts "Found restaurant file"
    # or create a new file
    elseif Restaurant.create_file
      puts "Create restaurant file."
    # exit if create fails
    else 
      puts "Exiting.\n\n"
      exit!
    end
  end

  def launch!
    introduction
    # action loop
    #  what do you want to do? (list, find, add, quit)
    # repeat until user quits
    conclusion
  end

  def introduction
    puts "\n <<< Welcome to the Food Finder >>>\n\n"
    puts "This is an interactive guide to help you find the food you crave.\n\n"
  end

  def conclusion
   puts "\n<<< Goodbye and Bon Appetit! >>> \n\n\n"
  end

end
