%% Clear and Close Figures
clear ; close all; clc

examScores = [89,	7921,	96; 72,	5184,	74;94,	8836,	87;69,	4761,	78]


meanScores = mean(examScores)

maxScores = max(examScores)

minScores = min(examScores)

xCol = 1
xRow = 3

columnRange = maxScores(xCol) - minScores(xCol)

currentFeatureValue = examScores(xRow, xCol)

normalizedFeatureValue = (currentFeatureValue - meanScores(xCol)) / columnRange

