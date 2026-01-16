#!/bin/bash
name='Anusha'
number=1
number2=2
echo "Hello $name,welcome to Devops project $number!"

if [ $number2 -gt 5 ]; then
    echo "Number is greater than 5"
else
    echo "Number is 5 or less"
fi

for i in 1 2 3 4 5
do
  echo "Iteration $i"
done 

echo "Enter your name"
read username
#echo "Enter your age"
#read "age"
echo "Hello $username!"
#echo "Your age is $age."

#echo "Deploying app.."
#git pull origin main
#docker build -t myapp:latest .
#docker run -d -p 8080:80 myapp:latest
