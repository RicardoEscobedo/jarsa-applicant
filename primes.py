
class PrimeClass(object):


    # A method is define to check if is, or not, prime.
    def is_prime(num_int):

        # A bool variable is define.
        isPrime = False

        # The numbers 0 and 1 are prime so qe are looking for a number
        # greater than 1.
        if num_int > 1:
            for i in range(2,num_int):    # Using a loop the number entered is divided
                if (num_int % i) == 0:    # with numbers between 2 and the number itself.
                    isPrime = False       # If the remainder is 0 it is not a prime number.
                    break
                else:
                    isPrime = True        # If not the variable is change to TRUE.
                    
        else:
            isPrime = False

        if num_int == 2:
            isPrime = True                # The previous loop does not include the number 2, which is prime.

        print(isPrime)                    # The variable is printed.
        

    print("IS IT PRIME?")
    number = int(input("Number: "))       # The program asks for a number which is turn into an integer.
    is_prime(number)                      # The method "is_prime" is called receiving the last number.
