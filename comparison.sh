#NUM1=3
#NUM2=5
read -p "Please enter your first number: " NUM1
read -p "Please enter your second number: " NUM2

if [ "$NUM1" -gt "$NUM2" ]; then
  echo "$NUM1 is greater than $NUM2"
else
  echo "$NUM1 is less than $NUM2"
fi
