clc




clear all
close all

matlabpath='D:\gstudy\project\deep learn';
data=fullfile(matlabpath,'Group data resized');

train=imageDatastore(data,"IncludeSubfolders",true,"LabelSource","foldernames");

count=train.countEachLabel;

% Load pre-trained network

net=vgg19;

layers=[imageInputLayer([224 224 3])
    net(2:end-3)
    fullyConnectedLayer(493)
    softmaxLayer
    classificationLayer()
];

% Train new network
opt=trainingOptions('sgdm','MaxEpochs',20,'InitialLearnRate',0.001,'ValidationData',train,...
    'ValidationFrequency',50,'Plots','training-progress');

training=trainNetwork(train,layers,opt);

% Test new network
imgs = dir('*.jpg');
for i=1:35
    img = imread(imgs(i).name);
    [Pred, Prob] = classify(training,img);
    imshow(img)
    title(string(Pred) )
    pause
end

