# import all module
from os import path
import asyncio
import os
import pathlib
import shutil
import subprocess

# title
os.system(
    "title Minecraft TLauncher for Diskless v2.77 [github.com/fahmiyufrizal]")

# main-display
print(" ")
print("  Minecraft TLauncher for Diskless")
print("  by fahmiyufrizal@2022")
print("  ")
print("  github.com/fahmiyufrizal")
print("  ")
async def display():
    await asyncio.sleep(5)
asyncio.run(display())

# protected

# start minekrep
os.system("start Tlauncher.exe")
async def display():
    await asyncio.sleep(5)
asyncio.run(display())
