import cmath
def quadratic(a, b, c):
    """
    Executing following formula:
                                 ____________   
                         -b +- \/sqr(b) - 4ac
                     x = -----------------------
                                 2a
    """

    simplified1 = (b ** 2) - (4 * a * c)
    simplified2 = 2 * a

    sol1 = (-b - cmath.sqrt(simplified1)) / simplified2
    sol2 = (-b + cmath.sqrt(simplified1)) / simplified2

    print("Solutions are {0} and {1}".format(sol1, sol2))


def euclid_gcd(a, b):
    if a == 0:
        return b
    return euclid_gcd(b % a, a)


def coprime(a):
    coprimeList = []
    for i in range(2, a):
        print(i)
        if euclid_gcd(a, i) == 1:
            coprimeList.append(i)

    return coprimeList


def sumNotDivisible(a, b):
    """
     a list of components divisibled
     b limit of range
     Sample run
        a = [2,3,5]
        b = 10
        sumNotDivisible(a,b)
    """
    for number in a:
        sum = 0
        for i in range(1, b):
            if i % number != 0:
                sum += i

        print("Sum of number not divisible by {0} is {1}".format(str(number), str(sum)))

def main():
    #quadratic equation
    quadratic(3,4)

    #euclid gcd
    euclid_gcd(56,7)

    #Co-prime
    coprime(15)

    #sum not divisible by 2,3,5 upto 100
    sumNotDivisible([2,3,5],100)

if __name__ == "__main__":
    main()