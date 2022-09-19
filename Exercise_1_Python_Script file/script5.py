list1 = [23,2,6,8,11]
list2 =[12,7,5,8,9]
list_result = []
for i in list1:
    if (i%2)!=0:
      list_result.append(i)
    
for i in list2:

  if (i%2)==0:
      list_result.append(i)

print(list_result)
