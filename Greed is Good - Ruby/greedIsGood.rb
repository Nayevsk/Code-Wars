require 'byebug'

def score(dice)

    points = 0
    count1 = 0
    count2 = 0
    count3 = 0
    count4 = 0
    count5 = 0
    count6 = 0

    dice.each do |i|
        if i == 1
            points += 100
            count1 += 1
        elsif i == 2
            count2 += 1
        elsif i == 3
            count3 += 1
        elsif i == 4
            count4 += 1
        elsif i == 5
            points += 50
            count5 += 1
        elsif i == 6
            count6 += 1
        end
    end

    if count1 >= 3
        points += 1000 - 300
    elsif count2 >= 3
        points += 200
    elsif count3 >= 3
        points += 300
    elsif count4 >= 3
        points += 400
    elsif count5 >= 3
        points += 500 - 150
    elsif count6 >= 3
        points += 600
    end
    return points
end



score ([2, 4, 4, 5, 4])