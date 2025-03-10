  


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


ints = gather_integers()
sum = 0
for i in ints:
    sum += i

average = sum / len(ints)

mk = 0

for i in ints:
    mk += (i-average)**2

s = (mk/(len(ints)-1))**0.5
print("The standard deviation is: ", s)
print("The average is: ", average)
print("Count is: ", len(ints))
