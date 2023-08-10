
# Sluggish Octopus

ARR = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']

def bubble_sort()

    arr = ARR.dup

    sorted = false
    count = 0

    while !sorted
        sorted = true
        count += 1
        arr.each_with_index{|ele, idx|
            if idx == arr.length-1
                next
            end
            if ele.length > arr[idx+1].length
                sorted = false
                arr[idx], arr[idx+1] = arr[idx+1], arr[idx]
            end
        }
        p "Gone through loop #{count} times"
    end

    p arr[-1]

end

bubble_sort

def merger(left_arr, right_arr)
    res = []
    while !left_arr.empty? && !right_arr.empty?
        if left_arr.first > right_arr.first
            res << right_arr.shift
        else
            res << left_arr.shift
        end
    end
    res + left_arr + right_arr
end

def merge_sort(arr)
    return arr if arr.length <= 1

    mid = arr.length/2
    left_arr = arr[0...mid]
    right_arr = arr[mid..-1]
    p "went through recurssion"

    return merger(merge_sort(left_arr), merge_sort(right_arr))
end

p merge_sort(ARR.dup)

def clever_octopus
    arr = ARR.dup
    longest_fish = ""

    arr.each{|ele|
        if ele.length > longest_fish.length
            longest_fish = ele
        end
    }

    p longest_fish

end

clever_octopus

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up"]

def slow_dance(direction, tiles_array)
    tiles_array.each_with_index{|tile, idx|
        return idx if tile == direction
    }
end

p slow_dance("left-up", tiles_array)


new_tiles_data_structure = {"up" => 0, "right-up" => 1, "right" => 2, 
                            "right-down" => 3, "down" => 4, "left-down" => 5, 
                            "left" => 6,  "left-up" => 7}
def fast_dance(direction, new_tiles_data_structure)
    return new_tiles_data_structure[direction]
end

p fast_dance("left-up", new_tiles_data_structure)