class Stack
    def initialize
      @my_array = []
    end
  
    def push(el)
      @my_array.push(el)
      el
    end
  
    def pop
      @my_array.pop
    end
  
    def peek
      @my_array[-1]
    end
end

class Queue
    def initialize
      @my_array = []
    end
  
    def enqueue(el)
      @my_array.push(el)
      el
    end
  
    def dequeue
      @my_array.shift
    end
  
    def peek
      @my_array[-1]
    end
end

class Map

    def initialize
      @my_map = Array.new() {Array.new()}
    end
  
    def set(key, value)
        idx = @my_map.each_with_index{|sub_arr, idx| return idx if sub_arr[0] == key}
        if idx
            @my_map[idx][1] = value
        else
            @my_map << [key, value]
        end
    end
  
    def get(key)
      @my_map.each{|sub_arr| return sub_arr[1] if sub_arr[0] == key}
    end
  
    def delete(key)
      idx = @my_map.each_with_index{|sub_arr, idx| return idx if sub_arr[0] == key}
      @my_map.delete_at(idx)
    end
end