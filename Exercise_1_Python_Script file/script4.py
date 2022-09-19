n=int(input("Enter a number: "))
temp=n
reverse=0
digit=0

while(n>0):
  digit=n%10

  reverse=reverse*10+digit

  n=n//10
if(temp==reverse):
  print("It is a Palindrome")
else:
  print("It is not a Palindrome")
