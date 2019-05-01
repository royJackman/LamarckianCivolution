import numpy as np

from keras import backend as K
from keras.layers import Activation, Dense, Dropout
from keras.models import load_model, Sequential

###############################################################################
# dropoutLocs   A function for finding optimal locations for dropout layers
#
# Inputs:
# n:            Number of possible dropout layer locations (dense layers - 1)
# k:            Number of desired dropout layers
#
# Output:
# retval:       Optimal locations of the dropout layers, indexed to append 
#               before dense layer of same index
###############################################################################

def dropoutLocs(n, k):
    retval = []
    while k > 1:
        retval.append(int(round(float(n)/float(k))))
        k -= 1
        n -= retval[-1]
    retval.append(n)
    return retval

###############################################################################
# defineModel       A function to define new models and save them to disk
#   
# Inputs:   
# name:             The name of the network
# denseLayers:      Number of dense layers
# denseWidth:       Width of the first dense layer
# denseDelta:       Change between sequential layer sizes
# dropoutLayers:    The number of dropout layers
# dropoutPercent:   The dropout likelihood
# optim:            Optimization method
# activ:            Activation layer type
# loss:             How to calculate the loss
# random_seed:      The random seed for reproducibility
#
# Output:           N/A
###############################################################################

def defineModel(name, inputs, denseLayers, denseWidth, denseDelta, dropoutLayers, dropoutPercent, optim, activ, loss, random_seed=0):
    if dropoutLayers > denseLayers/2:
        print("More dropout layers than half dense, exiting")
        print("Dropouts " +  dropoutLayers + " / Dense " + denseLayers)
        raise ValueError
    drops = dropoutLocs(denseLayers-1, dropoutLayers)
    model = Sequential()
    model.add(Dense(denseWidth, input_shape=(inputs,)))
    for d in range(1,denseLayers):
        if d in drops:
            model.add(Dropout(dropoutPercent, seed=random_seed, activation='sigmoid'))
        model.add(Dense(denseWidth - d * denseDelta))
    
    model.add(Dense(1, activation=activ))

    model.compile(optimizer=optim, loss=loss)
    
    model.save(name+'.h5')
    del model

###############################################################################
# predict   A function for predicting a single move into the future
# 
# Inputs:  
# name:     Name of the network
# input:    Relevant gamestate data
# 
# Output:   N/A      
###############################################################################

def predict(name, input):
    model = load_model(name+'.h5')
    retval = model.predict(input, batch_size=1)
    del model
    return retval

###############################################################################
# train     A function for training a single network over an entire game
# 
# Inputs:  
# name:     Name of the network
# input:    Relevant gamestate data
# output:   The move made by the victor of the game
# 
# Output:   N/A      
###############################################################################

def train(name, input, output):
    model = load_model(name+'.h5')
    model.fit(x=input, y=output, batch_size=10)
    model.save(name+'.h5')
    del model
