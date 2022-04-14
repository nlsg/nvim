#!/usr/bin/python3
#> echo testing executor {} is the filename

from sys import argv
from os import popen
from sys import path; path.insert(1, '/home/nls/py/lib')
from nls_func import Monad, assertion_pipe, excepting, timelogger
from formater import formater

def get_line(file):
  line = str
  with open(file, "r") as f:
    for _ in range(2):
      line = f.readline()
  return line

def pipe(function, value):
  function(value)
  return value

print(
  Monad()
  .layer(timelogger)
  .layer(excepting((FileNotFoundError, IndexError,TypeError)))
  .bind(lambda v:argv[1])
  .bind(get_line)
  .bind(lambda v: v.split("#>")[1][:-1] if len(v) > 1 else "")
  .bind(lambda v: v.replace("{}",f" {argv[1]} "))
  # .bind(lambda v: popen(f"echo {v} | xclip -sel c"))
  .value
  )

