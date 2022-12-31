from base64 import urlsafe_b64decode
from http.client import REQUEST_ENTITY_TOO_LARGE
from optparse import check_builtin
import random
import string
from urllib import request
import time



print('''

             _____ _           _        ____  _                   _    _____ _ _              _____         
            |   __|_|_____ ___| |___   |    \|_|___ ___ ___ ___ _| |  |   | |_| |_ ___ ___   |   __|___ ___ 
            |__   | |     | . | | -_|  |  |  | |_ -|  _| . |  _| . |  | | | | |  _|  _| . |  |  |  | -_|   |
            |_____|_|_|_|_|  _|_|___|  |____/|_|___|___|___|_| |___|  |_|___|_|_| |_| |___|  |_____|___|_|_|
                          |_|        


                                                Made by Seasonal
                                            Github: SeasonalKirito
                                      Information: There is a very rare 
                                      chance for you to get a real nitro 
                                          link, but it is possible

''')

time.sleep(1)
print('''                               Thanks for useing Seasonal Simple Nitro Gen :)


''')
time.sleep(1)






def gen():
    import random

    upper_letter = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    lower_letter = 'abcdefghijklmnopqrstuvwxyz'
    digits = '0123456789'


    numbtogen = input('                                    How many nitros links should i make: ')
    upper, lower, nums, = True, True, True,
    all = ""

    if upper:
        all += upper_letter
    if lower:
        all += lower_letter
    if nums:
        all += digits

        lenght = 23
        amount = numbtogen

        for x in range(int(numbtogen)):
            nitro = ''.join(random.sample(all, lenght))
            print('discord.gift/'+nitro)





gen()
gen()
gen()