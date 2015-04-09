%% Clear and Close Figures
clear ; close all; clc

correctPredictedSpam = 85
incorrectPredictedSpam = 890
correctPredictedNoSpam = 10
incorrectPredictedNoSpam = 15

total = correctPredictedSpam + incorrectPredictedSpam + correctPredictedNoSpam + incorrectPredictedNoSpam

accuracy = ( correctPredictedSpam + correctPredictedNoSpam ) / total
precision = correctPredictedSpam / (correctPredictedSpam + incorrectPredictedSpam)
recall = correctPredictedSpam / (correctPredictedSpam + incorrectPredictedNoSpam)
F1 = (2 * precision * recall) / (precision + recall) 
F1
