from os import system

system("hugo")
system("rm -rf docs")
system("mv public docs")

system("git add .")
