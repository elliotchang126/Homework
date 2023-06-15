FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']

def sluggish_octopus
    ele = ""
    FISH.each_with_index do |el1, i|
        FISH.each_with_index do |el2, j|
            el1.length > el2.length ? ele = el1 : ele = el2
        end
    end
    ele
end

def merge_sort(arr, &prc)
    prc ||= Proc.new { |a, b| a <=> b}
    return arr if arr.length < 2

    mid = arr.length / 2
    left = merge_sort(arr[0...mid], &prc)
    right = merge_sort(arr[mid..-1], &prc)

    merge(left, right, &prc)
end

def merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
        case prc.call(left[0], right[0])
        when 1
            merged << left.shift
        when 0
            merged << left.shift
        when -1
            merged << right.shift
        end
    end
    merged + left + right
end

def dominant_octopus(arr)
    prc = Proc.new { |a, b| a.length <=> b.length }
    merge_sort(arr, &prc)[0]

end

def clever_octopus(arr)
    biggest = arr[0]
    arr.each do |ele|
        biggest = ele if ele.length > biggest.length
    end
    biggest
end

# def dancing_octopus

# end

# def slow_dance(str, arr)

# end

# def fast_dance!(str, arr)

# end
arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']
p clever_octopus(arr)