
%% Image Classification Using CNN in MATLAB
% Dataset Loading Script
% Author: Sarayu Ikkurthi
% Description:
% This script loads the MNIST handwritten digit dataset using
% MATLAB's imageDatastore function.

%% Specify Dataset Path

digitDatasetPath = fullfile(matlabroot, ...
    'toolbox', ...
    'nnet', ...
    'nndemos', ...
    'nndatasets', ...
    'DigitDataset');

%% Load Images

imds = imageDatastore(digitDatasetPath, ...
    'IncludeSubfolders', true, ...
    'LabelSource', 'foldernames');

%% Display Dataset Information

disp(imds)

%% Display Number of Images

fprintf('Total Images: %d\n', numel(imds.Files));

%% Display Class Names

disp('Classes in Dataset:')
disp(categories(imds.Labels))

📄 MATLAB_Code/preprocessing.m

%% Image Classification Using CNN in MATLAB
% Data Preprocessing

%% Split Dataset

[imdsTrain, imdsTest] = splitEachLabel(imds, ...
    0.7, ...
    'randomized');

%% Display Dataset Size

fprintf('Training Images: %d\n', numel(imdsTrain.Files));
fprintf('Testing Images : %d\n', numel(imdsTest.Files));

%% Image Augmentation

imageAugmenter = imageDataAugmenter( ...
    'RandRotation', [-10 10], ...
    'RandXReflection', true);

%% Create Augmented Datastore

augimdsTrain = augmentedImageDatastore( ...
    [28 28], ...
    imdsTrain, ...
    'DataAugmentation', imageAugmenter);

disp('Preprocessing Completed Successfully')

📄 MATLAB_Code/cnn_architecture.m
%% CNN Architecture

layers = [

imageInputLayer([28 28 1])

convolution2dLayer(3,8,'Padding','same')

batchNormalizationLayer

reluLayer

maxPooling2dLayer(2,'Stride',2)

convolution2dLayer(3,16,'Padding','same')

batchNormalizationLayer

reluLayer

maxPooling2dLayer(2,'Stride',2)

convolution2dLayer(3,32,'Padding','same')

batchNormalizationLayer

reluLayer

fullyConnectedLayer(10)

softmaxLayer

classificationLayer

];
📄 MATLAB_Code/augmentation.m

%% Data Augmentation

catFolder = fullfile('dataset','cats');
dogFolder = fullfile('dataset','dogs');

imds = imageDatastore( ...
    {catFolder,dogFolder}, ...
    'LabelSource','foldernames', ...
    'IncludeSubfolders',true);

imageSize = [224 224 3];

augmenter = imageDataAugmenter( ...
    'RandRotation',[-20 20], ...
    'RandXReflection',true, ...
    'RandXScale',[0.9 1.1], ...
    'RandYScale',[0.9 1.1], ...
    'RandXShear',[-10 10], ...
    'RandYShear',[-10 10], ...
    'RandBrightness',[0.8 1.2]);

augimds = augmentedImageDatastore( ...
    imageSize, ...
    imds, ...
    'DataAugmentation',augmenter);

figure

for i = 1:6

    subplot(2,3,i)

    img = read(augimds);

    imshow(img.input)

    title(['Augmented Image ' num2str(i)])

end

reset(augimds)
📄 MATLAB_Code/confusion_matrix.m
%% Confusion Matrix

YPred = classify(net, imdsValidation);

YTrue = imdsValidation.Labels;

figure

confusionchart(YTrue, YPred)

title('Confusion Matrix')

📄 MATLAB_Code/classwise_accuracy.m
%% Class-wise Accuracy

YPred = classify(net, imdsTest);

YTrue = imdsTest.Labels;

cm = confusionmat(YTrue, YPred);

classAccuracy = diag(cm) ./ sum(cm,2);

classLabels = unique(YTrue);

fprintf('\nClass-wise Accuracy\n\n')

for i = 1:numel(classLabels)

    fprintf('Class %s : %.2f%%\n', ...
        string(classLabels(i)), ...
        classAccuracy(i)*100);

end

📄 MATLAB_Code/sample_predictions.m
%% Sample Predictions

idx = randperm(numel(YPred),12);

figure

for i = 1:12

    subplot(3,4,i)

    imshow(readimage(imdsTest,idx(i)))

    title("True: " + ...
        string(YTrue(idx(i))) + ...
        ", Pred: " + ...
        string(YPred(idx(i))))

end
