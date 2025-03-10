  


def gather_integers():
    integers = []
    while True:
        user_input = input("Enter an integer (or empty line to stop): ")
        if user_input == "":
            break
        try:
            integer = eval(user_input)
            print("You inputed", integer)
            integers.append(integer)
        except ValueError:
            print("Invalid input. Please enter an integer.")
    return integers


print("Input x")
x = gather_integers()
print("Input y")
y = gather_integers()
sum_x = sum(x)
sum_y = sum(y)

average_x = sum_x / len(x)
average_y = sum_y / len(y)

Sxy = 0
Sxx = 0
Syy = 0
for i in range(0,len(x)):
    print(i)
    Sxy += (x[i]-average_x)*(y[i]-average_y)
    Sxx += (x[i] - average_x) ** 2
    Syy += (y[i] - average_y) ** 2

beta = Sxy / Sxx
alpha = average_y - beta * average_x
s2 = (Syy - ((Sxy ** 2)/Sxx))/(len(x)-2)
s = s2 ** 0.5

print("Alpha is", alpha)
print("Beta is ", beta)
print("X average: ", average_x)
print("Y average: ", average_y)
print("Sxx is: ", Sxx)
print("Sxy is: ", Sxy)
print("Syy is: ", Syy)
print("s is: ", s)
print("len is: ", len(x))
