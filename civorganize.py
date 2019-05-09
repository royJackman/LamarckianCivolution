import civcompute as cc
import numpy as np

# Init global variables for future reference of move types
moves = ['civic','buildingProduction','unitProduction','tech','move']

# initNetwork
# Initializes a model as defined by defineModel in civcompute

def initNetwork(playerID, i,d1,d2,d3,dr1,dr2,o,a,l):
    # Loop through all the move types, and generate a network for it
    for m in moves:
        cc.defineModel(str(playerID).zfill(5) + "_" + str(m), i,d1,d2,d3,dr1,dr2,o,a,l)
    
    # Iff possible, grab the current scoreboard, else initialize it
    try:
        data = np.load('scoreboard.npy').tolist()
    except (IOError, ValueError):
        data = []
    
    # If the player is new, append it to the data, else replace old model. Both
    # cases are initialized to a score of 0
    if playerID >= len(data):
        data.append((0,i,d1,d2,d3,dr1,dr2,o,a,l))
    else:
        data[playerID] = (0,i,d1,d2,d3,dr1,dr2,o,a,l)

    # Save the new scoreboard
    np.save('scoreboard', np.array(data))

# mutation
# Gets a mutation of +- 1 with a chance of 0.001 each for mutation of the genes

def mutation():
    retval = 0
    if np.random.rand() < 0.001: 
        retval += 1
    if np.random.rand() < 0.001: 
        retval -= 1
    return retval

# breedNetworks
# Breeds the networks such that the probability of getting the gene of the 
# parent with the higher score is proportional to the winning parent's final
# score during their match

def breedNetworks(winner, loser, wscore, lscore, playerID):
    # Try to load the scoreboard if possible, else initialize it
    try:
        data = np.load('scoreboard.npy').tolist()
    except (IOError, ValueError):
        data = []
    
    # Get the winner and loser data, calculate mutation probability
    dom = data[winner]
    rec = data[loser]
    p = float(wscore/(wscore+lscore))

    # Define the new child using the crossover probability and mutation
    newChild = (playerID, dom[1], 
                (dom[2] if np.random.rand() < p else rec[2]) + mutation(),
                (dom[3] if np.random.rand() < p else rec[3]) + mutation(),
                (dom[4] if np.random.rand() < p else rec[4]) + mutation(),
                (dom[5] if np.random.rand() < p else rec[5]) + mutation(),
                (dom[6] if np.random.rand() < p else rec[6]) + mutation(),
                dom[7], dom[8], dom[9]
                )

    # Reset best scores of models if they've been beaten
    if dom[0] < wscore:
        data[winner][0] = wscore
    if rec[0] < lscore:
        data[loser][0] = lscore
    
    # Initialize the new network
    # Who knew that the star pointer existed in python. Go figure.
    initNetwork(*newChild)

# singleMove
# This function uses the predict funciton to get the float fitness of the move
# using that network. The move and the output are then saved, for the later
# loser learning

def singleMove(data, moveType, gameNo, playerID):
    retval = cc.predict(str(playerID).zfill(5) + "_" + str(moveType), data)
    with open(str(gameNo).zfill(6) + "_" + str(playerID).zfill(5) + "_" + str(moveType) + '.txt', 'a') as f:
        f.write(str(data).replace("[",'').replace("]",'') + "|" + str(retval))
    return retval

# loadGame
# This function just opens the data from a particular game file and splits the
# data into the inputs and outputs for processing during loser learning

def loadGame(gameNo, ID, moveType):
    # Using the data from the game/model/move truple
    with open(str(gameNo).zfill(6) + "_" + str(ID).zfill(5) + "_" + str(moveType) + '.txt', 'r') as f:
        # Grab all the lines in the file
        allData = f.readlines()

        # Get the number of examples
        examples = len(allData)

        # Split the data into input and output
        allData = list(map(lambda x: x.split("|"), allData))

        # Split the input into the different parameters
        allData = list(map(lambda x: x[0].split(","), allData))

        # Init the numpy arrays that will hold the data
        retvalX = np.zeros((examples, len(allData[0][0])))
        retvalY = np.zeros((examples, 1))

        # Grab all examples and save them to the relevant arrays
        for e in examples:
            retvalX[e,:] = allData[e][0]
            retvalY[e] = allData[e][1]
        
        # Return the data
        return retvalX, retvalY

# loserTrain
# This function uses the moves performed by the winner to teach the loser. This
# is making the assumption that the winner is winning because of overall 
# behaviour 

def loserTrain(winner, loser, gameNo):
    for m in moves:
        npx, npy = loadGame(gameNo, winner, m)
        cc.train(str(loser).zfill(5)+"_"+str(m), npx, npy)

# findMatchupNew
# Gets two networks that are new (have a best score of 0)

def findMatchupNew():
    try:
        data = np.load('scoreboard.npy').tolist()
    except (IOError, ValueError):
        data = []
    best = sorted(data[0:-1], key = lambda x: x[0])
    return len(data)-1, data.index(best[-1])

# findMatchupBest
# Gets the two best models and returns them for a pro head-to-head

def findMatchupBest():
    try:
        data = np.load('scoreboard.npy').tolist()
    except (IOError, ValueError):
        data = []
    best = sorted(data, key = lambda x: x[0])
    return data.index(best[-1]), data.index(best[-2])