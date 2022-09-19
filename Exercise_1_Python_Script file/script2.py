
String1 = input("Enter String")
even_string = []
for i in range(len(String1)):
    if i % 2 == 0:
      even_string.append(String1[i])
print(even_string)
