# # # a = [2,4,6]

# # # for num in a 

# # # p num * 10

# # # end



# # # dogs = [{:name => "buzzie"}, {:name=> "max"}, {:name=> "harry"}]


# # # for dogs in dogs 

# # # p dogs[:name] 

# # # end


# # # dogs.each do |doggy|
  
# # #   puts doggy[:name]
  
# # # end


# # # 10.times do |i|
  

# # #   p i+2

  
# # # end




# # # 1. Think of three colors and store the colors, as strings, in an array named colors

# # colors = ['azul', 'blanco', 'negro']




# # # 2. Think of three names and store the names, as strings, in an array named names

# # nombres = ['margo', 'juacho', 'noe']

# # # 3. Create a new hash named colors_and_names with two keys, one key is named colors and the other is named names. Set the value of the colors key to the colors array and set the value of names to the names array. What did we just achieve?

# # colors_and_names = {
# #   :colors => colors,
# #   :named_names => nombres 
# # }

# # # 4. Loop thru each name in the names array and display it on the console.

# # for i in colors
# # p i
# # end
# # # 5. Loop thru each color in the colors array and display it on the console.

# # for i in nombres
# # p i
# # end

# # # 6. Loop thru each name within the colors_and_names hash and display it on the console.

# # colors_and_names[:named_names].each do |names|
# # p names

# # end

# # # 7. Loop thru each color within the colors_and_names hash and display it on the console.

# # colors_and_names[:colors].each do |colores|
# # p colores

# # end



# def sum (x, y)
#   result = x + y
# end

# sum 10,10










# # 1 - Sales Tax 
# # Make a ruby function that adds 8.8% tax if given a number. 
# If it's given a string it should puts a message asking for a number instead and return nil. 

# def tax(number)
#     if number.is_a? String
#       p "not a number"
#     else 
#      p result = number + (number * 0.088)
#     end
#   end
  
#   tax 100
  
  
  # 2 - Instance Counter
  # Make a ruby function that finds the letter that appears the most often within a string and returns it. 
  #  Take for instance if given "Bob is a very nice gardener" the program should puts "e".
  # Since the letter "e" appears 4 times.
  
#   def appears_most(word)
#     p split_word = word.delete(' ').split("")
#       repeated = []
#     split_word.each do |letters|
#       p repeated.push |letters|
#     end
#   end
  
#   appears_most("Bob is a very nice gardener")
  
  # 3 - Snake Eyes
  # Make a ruby function that rolls two dice 100 times and puts how many times it rolled snake eyes (two 1s). The rand function would be super helpful for this (https://ruby-doc.org/core-2.2.0/Random.html#method-i-rand ). 
  
  def rolls
    count = 0
    100.times do |i|
    x= rand(1..6)
    y= rand(1..6)
      if x==1 && y==1
      count +=1
      nil
    end
    end
    p count 
  end
  
  rolls

  
  
  
  
  
  # 1. Write a program that prints a multiplication table for numbers up to 12.
  # 2. Write a function that returns the largest number in an array.
  # 3. Write a function that checks whether an element occurs in an array.
  # 4. Write a function that returns the elements on odd positions in an array.
  # 5. Write three functions that compute the sum of the numbers in a list: using a for-loop, a while-loop and recursion.
  # 6. Write a function that concatenates two lists. [a,b,c], [1,2,3] → [a,b,c,1,2,3]
  # 7. Write a function that combines two lists by alternatingly taking elements, e.g. [a,b,c], [1,2,3] → [a,1,b,2,c,3].
  # 8. Write a function that takes an array of strings and prints them, one per line, in a rectangular frame. For example the list ["Hello", "World", "in", "a", "frame"] gets printed as:
  
  # *********
  # * Hello *
  # * World *
  # * in    *
  # * a     *
  # * frame *
  # *********