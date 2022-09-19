list2 = []
print("Enter 5 Numbers")
for i in range(5):
  list2.insert(i, int(input()))
for i in list2:
  if i % 5 == 0:
    print("The number which are divisible by 5 are:", i)
