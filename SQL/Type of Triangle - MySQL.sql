select case
            when a < b + c and b < c + a and c < a + b
                and a > abs(b - c) and b > abs(a - c) and c > (a - b)
                    then
                        case
                            when a = b and a = c then 'Equilateral'
                            when a = b or a = c or b = c then 'Isosceles'
                            else 'Scalene'
                        end
            else 'Not A Triangle'
        end
from triangles
