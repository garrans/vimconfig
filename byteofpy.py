#!/usr/bin/env python3
#Filename: whitespace.py



i = 5
print('Value is ', i)
print('I repeat, the value is ', i)

i = 5
print(i)
i = i+1
print(i)

s = '''Multiline string.
The second line.'''


number = 23
guess = int(input('Enter an integer? :'))

if guess == number:
    print('Congratulations! You guessed it')
elif guess < number:
    print('Your guess was too low')
else:
    print("Guess higher next time")

print('Done')
#last statement setup to exec always'
