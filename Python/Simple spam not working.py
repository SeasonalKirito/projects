


import requests
import os
import sys
import time
import colorama
from colorama import init, Fore, Style, Back


print("""
                                                                                                 
▓█████▄  ██▓  ██████  ▄████▄   ▒█████   ██▀███  ▓█████▄      ▄████  ██▓     ▒█████   ██▀███ ▓██   ██▓    ██░ ██  ▒█████   ██▓    ▓█████ 
▒██▀ ██▌▓██▒▒██    ▒ ▒██▀ ▀█  ▒██▒  ██▒▓██ ▒ ██▒▒██▀ ██▌    ██▒ ▀█▒▓██▒    ▒██▒  ██▒▓██ ▒ ██▒▒██  ██▒   ▓██░ ██▒▒██▒  ██▒▓██▒    ▓█   ▀ 
░██   █▌▒██▒░ ▓██▄   ▒▓█    ▄ ▒██░  ██▒▓██ ░▄█ ▒░██   █▌   ▒██░▄▄▄░▒██░    ▒██░  ██▒▓██ ░▄█ ▒ ▒██ ██░   ▒██▀▀██░▒██░  ██▒▒██░    ▒███   
░▓█▄   ▌░██░  ▒   ██▒▒▓▓▄ ▄██▒▒██   ██░▒██▀▀█▄  ░▓█▄   ▌   ░▓█  ██▓▒██░    ▒██   ██░▒██▀▀█▄   ░ ▐██▓░   ░▓█ ░██ ▒██   ██░▒██░    ▒▓█  ▄ 
░▒████▓ ░██░▒██████▒▒▒ ▓███▀ ░░ ████▓▒░░██▓ ▒██▒░▒████▓    ░▒▓███▀▒░██████▒░ ████▓▒░░██▓ ▒██▒ ░ ██▒▓░   ░▓█▒░██▓░ ████▓▒░░██████▒░▒████▒
 ▒▒▓  ▒ ░▓  ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░ ▒▒▓  ▒     ░▒   ▒ ░ ▒░▓  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░  ██▒▒▒     ▒ ░░▒░▒░ ▒░▒░▒░ ░ ▒░▓  ░░░ ▒░ ░
 ░ ▒  ▒  ▒ ░░ ░▒  ░ ░  ░  ▒     ░ ▒ ▒░   ░▒ ░ ▒░ ░ ▒  ▒      ░   ░ ░ ░ ▒  ░  ░ ▒ ▒░   ░▒ ░ ▒░▓██ ░▒░     ▒ ░▒░ ░  ░ ▒ ▒░ ░ ░ ▒  ░ ░ ░  ░
 ░ ░  ░  ▒ ░░  ░  ░  ░        ░ ░ ░ ▒    ░░   ░  ░ ░  ░    ░ ░   ░   ░ ░   ░ ░ ░ ▒    ░░   ░ ▒ ▒ ░░      ░  ░░ ░░ ░ ░ ▒    ░ ░      ░   
   ░     ░        ░  ░ ░          ░ ░     ░        ░             ░     ░  ░    ░ ░     ░     ░ ░         ░  ░  ░    ░ ░      ░  ░   ░  ░ A Simple Discord Webhook Spammer
 ░                   ░                           ░                                           ░ ░                                        

                                    Made by Seasonal
                                  Github: SeasonalKirito
""")


message = input(Fore.MAGENTA + "Spam Message: ")
webhook = input ("Webhook Url: ")

def spam(message, webhookurl):
  while True:
    try:
        r = requests.post(webhookurl, json={"content": message})
        s = [200, 201, 204]
        if r.status_code in s:
          print(Fore.GREEN + f"Sent Message >  {message}")
        elif r.status_code == 429:
          b = r.json()
          print(Fore.RED + f"Ratelimited, retrying in {b['retry_after']} seconds")


  except:
    print(Fore.RED + "Bad Webhook > " +webhookurl)
    time.sleep(5)
    exit()


def spamming():
  for i in range(2):
    threading.Thread(target=spam, args=(message, webhookurl,)).start()

spammed = 100

while spammed = 100:
  spamming()