def merger(left_arr, right_arr)
    res = []
    while !left_arr.empty? && !right_arr.empty?
        if left_arr.first.length > right_arr.first.length
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

    return merger(merge_sort(left_arr), merge_sort(right_arr))
end

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']
p merge_sort(arr)