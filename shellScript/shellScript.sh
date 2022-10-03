#! /bin/bash -x

echo "Hello world"
isBool=5
echo $isBool

#Example
commitCount=0
commitId=''
read -p "Enter the commit id :- " commitId
commitCount=`git log | grep -i commit | grep -v '\[' | awk -v var=$commitId '$2==var {print NR}'`
echo $commitCount
git rebase -i HEAD~$commitCount


#Operators
#1.Arithmetic operators:- (+, -, *, /, %, ++, --)
#2.Relational operators:- (==, !=, <=, >=, <, >)
#3.Boolean operators:- (&& or -a, || or -o)
#4.File Test operators:-  
