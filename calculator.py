
class CalculatorClass(object):

   
    # A method is define for the addition receiving an array of numbers.
    
    def sum(num_list):
        # The numbers in the array are added and the result is stored in a variable.
        suma = sum(num_list)
        print(suma)
        

    # The user is asked to enter the addition.
    datos = input("Enter the adittion: ")

    # Each number in the string is separated according to the simbol "+"
    # and added to an array.
    lista = [int(i) for i in datos.split('+') if i.isdigit()]

    # Se manda a llamar al método creado.
    # The "sum" method is called receiving the array.
    sum(lista)
