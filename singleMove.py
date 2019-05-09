import sys
import civorganize as co

print(co.singleMove(list(map(int, sys.argv[1].split(','))),
      str(sys.argv[2]),
      int(sys.argv[3]),
      int(sys.argv[4])))