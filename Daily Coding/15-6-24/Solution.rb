def function (arr)
    arrayMulti = Array.new
    index = 0
    originalArr = arr
    num = 1

    until index > arr.length-1 do
        removedElement = arr.delete_at(index)
            arr.each do |i|
                num = num*i
            end
        arrayMulti.push(num)
        arr.insert(index, removedElement)
        index += 1
        num = 1
    end
    return p arrayMulti
end

function([3,2,1])