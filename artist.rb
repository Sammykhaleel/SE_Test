
class Artists

    # importing the txt file and spliting it. 
    file = File.open("Artist_lists_small.txt", "rb")
    txt = file.read

    # array to hold our strings
    a = []

    # spliting the text  
    # a << txt.split('\n') #make each line an array
    # a= txt.split(/\r?\n/)  #make each sentence a string, i decided to use this 
    a<<txt.split(',')   #make each name a string
    
    # create new hash with keys and values.
    word_freq = Hash.new(0)
    # counter for each artist.
    i = 0
    while i < a.length
      a[i].each {|x| word_freq[x] += 1}
      i += 1
    end
   
    # initiate variable for the output.
    output = []
    # if statment to check the frequancy of the artist
    word_freq.each do |m, x|
     if x > 50
      output << "#{m} appears #{x} times"
      end
    end

 
  
    d= output.each {|x| p x}  #names are now keys with frequency values
    #writing in external file called test.rb.
    File.open('test.rb', 'w') do |file| 
      file.write(d) 
    end
    # print word_freq.keys

end

