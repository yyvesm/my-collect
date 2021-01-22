def my_collect(array)
    i = 0
    collect = []
    while i < array.length
      collect << yield(array[i])
      i+=1
    end
    collect
  end




  my_collect(['ruby', 'javascript', 'python', 'objective-c']) do |lang|
    lang.upcase
  end

my_collect(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']) do |name|
    name.split(" ").first
end

