import civcompute as cc
import numpy as np

moves = ['build','move','action','wildcard']

try:
    f = open("scoreboard", 'r')
    data = np.load(f).tolist()
except FileNotFoundError:
    data = []

def initNetwork(playerID, i,d1,d2,d3,dr1,dr2,o,a,l):
    for m in moves:
        cc.defineModel(str(playerID).zfill(4) + "_" + str(m), i,d1,d2,d3,dr1,dr2,o,a,l)
    try:
        f = open("scoreboard", 'r')
        data = np.load(f).tolist()
    except FileNotFoundError:
        data = []
    data.append((0,i,d1,d2,d3,dr1,dr2,o,a,l))
    

def breedNetworks(winner, loser):
    with 

def singleMove(data, moveType, gameNo, playerID):
    retval = cc.predict(str(playerID).zfill(4) + "_" + str(moveType), data)
    with open(str(gameNo).zfill(6) + "_" + str(playerID).zfill(4) + "_" + str(moveType) + '.txt', 'a') as f:
        f.write(str(data) + "|" + str(retval))
    return retval
