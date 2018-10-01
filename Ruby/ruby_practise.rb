
dial_book = {
    "bangalore" => "212",
    "coimbatore" => "111"
  }
  
  def show_all_cities(allCity)
    allCity.each {|k,v| puts k}
  end

  def show_city_code(hash_array, city_name)
    hash_array[city_name]
  end
  
  loop do
  
    puts "Do you want to lookup the city names ? (Y/N)"
  
    result = gets.chomp
  
    if result != 'Y' && result != 'y'
      break
    end
  
    puts "Which city you want to select?"
    show_all_cities(dial_book);

    city_name = gets.chomp;

    if dial_book.include?(city_name)
        puts "There are code for #{city_name}, that is #{show_city_code(dial_book, city_name)}"
    else
        puts "Sorry your chosen city is not in the list"
    end

end

