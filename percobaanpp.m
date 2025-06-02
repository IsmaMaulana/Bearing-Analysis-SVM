% Load data Normal dan Fault 
xNormal = load('N502.mat', 'data');
Raw_Normal = xNormal.data;

xInner = load('I502.mat', 'data');
Raw_Inner = xInner.data;

xBall = load('B502.mat', 'data');
Raw_Ball = xBall.data;

xOuter = load('O502.mat', 'data');
Raw_Outer = xOuter.data;

xInnOuter = load('IO502.mat', 'data');
Raw_InnOuter = xInnOuter.data;

xInnerBall = load('IB502.mat', 'data');
Raw_InnerBall = xInnerBall.data;

xOuterBall = load('OB502.mat', 'data');
Raw_OuterBall = xOuterBall.data;

% Mengambil 100ribu data
Raw_Normal = Raw_Normal(100001:200000);
Raw_Inner = Raw_Inner(100001:200000);
Raw_Ball = Raw_Ball(100001:200000);
Raw_Outer = Raw_Outer(100001:200000);
Raw_InnOuter = Raw_InnOuter(100001:200000);
Raw_InnerBall = Raw_InnerBall(100001:200000);
Raw_OuterBall = Raw_OuterBall(100001:200000);

figure;
subplot(4,1,1)
plot(Raw_Normal); title ('Normal'); axis tight;
subplot(4,1,2)
plot(Raw_Inner); title ('Inner'); axis tight;
subplot(4,1,3)
plot(Raw_Ball); title ('Ball'); axis tight;
subplot(4,1,4)
plot(Raw_Outer); title ('Outer'); axis tight;

figure;
subplot(3,1,1)
plot(Raw_InnOuter); title ('Inner-Outer'); axis tight;
subplot(3,1,2)
plot(Raw_InnerBall); title ('Inner-Ball'); axis tight;
subplot(3,1,3)
plot(Raw_OuterBall); title ('Outer-Ball'); axis tight;

% Data reshaping
Normal = reshape(Raw_Normal, 1000, 100);
Inner = reshape(Raw_Inner, 1000, 100);
Ball = reshape(Raw_Ball, 1000, 100);
Outer = reshape(Raw_Outer, 1000, 100);
InnOuter = reshape(Raw_InnOuter, 1000, 100);
InnerBall = reshape(Raw_InnerBall, 1000, 100);
OuterBall = reshape(Raw_OuterBall, 1000, 100);

% Feature extraction: Time domain features
Normalrms = rms(Normal);
Normalkurtosis = kurtosis(Normal);
Normalp2p = peak2peak(Normal);
Normalskewness = skewness(Normal);
Normalmean = mean(Normal);
NormalMedian = median(Normal);
NormalSTD = std(Normal);

Innerrms = rms(Inner);
Innerkurtosis = kurtosis(Inner);
Innerp2p = peak2peak(Inner);
Innerskewness = skewness(Inner);
Innermean = mean(Inner);
InnerMedian = median(Inner);
InnerSTD = std(Inner);

Ballrms = rms(Ball);
Ballkurtosis = kurtosis(Ball);
Ballp2p = peak2peak(Ball);
Ballskewness = skewness(Ball);
Ballmean = mean(Ball);
BallMedian = median(Ball);
BallSTD = std(Ball);

Outerrms = rms(Outer);
Outerkurtosis = kurtosis(Outer);
Outerp2p = peak2peak(Outer);
Outerskewness = skewness(Outer);
Outermean = mean(Outer);
OuterMedian = median(Outer);
OuterSTD = std(Outer);

InnerBallrms = rms(InnerBall);
InnerBallkurtosis = kurtosis(InnerBall);
InnerBallp2p = peak2peak(InnerBall);
InnerBallskewness = skewness(InnerBall);
InnerBallmean = mean(InnerBall);
InnerBallMedian = median(InnerBall);
InnerBallSTD = std(InnerBall);

OuterBallrms = rms(OuterBall);
OuterBallkurtosis = kurtosis(OuterBall);
OuterBallp2p = peak2peak(OuterBall);
OuterBallskewness = skewness(OuterBall);
OuterBallmean = mean(OuterBall);
OuterBallMedian = median(OuterBall);
OuterBallSTD = std(OuterBall);

InnOuterrms = rms(InnOuter);
InnOuterkurtosis = kurtosis(InnOuter);
InnOuterp2p = peak2peak(InnOuter);
InnOuterskewness = skewness(InnOuter);
InnOutermean = mean(InnOuter);
InnOuterMedian = median(InnOuter);
InnOuterSTD = std(InnOuter);

% Frequency domain feature extraction 
NormalMeanFreq = meanfreq(Normal);
NormalMedFreq = medfreq(Normal);
NormalPBW = powerbw(Normal);
NormalBandP = bandpower(Normal);

InnerMeanFreq = meanfreq(Inner);
InnerMedFreq = medfreq(Inner);
InnerPBW = powerbw(Inner);
InnerBandP = bandpower(Inner);

BallMeanFreq = meanfreq(Ball);
BallMedFreq = medfreq(Ball);
BallPBW = powerbw(Ball);
BallBandP = bandpower(Ball);

OuterMeanFreq = meanfreq(Outer);
OuterMedFreq = medfreq(Outer);
OuterPBW = powerbw(Outer);
OuterBandP = bandpower(Outer);

InnerBallMeanFreq = meanfreq(InnerBall);
InnerBallMedFreq = medfreq(InnerBall);
InnerBallPBW = powerbw(InnerBall);
InnerBallBandP = bandpower(InnerBall);

OuterBallMeanFreq = meanfreq(OuterBall);
OuterBallMedFreq = medfreq(OuterBall);
OuterBallPBW = powerbw(OuterBall);
OuterBallBandP = bandpower(OuterBall);

InnOuterMeanFreq = meanfreq(InnOuter);
InnOuterMedFreq = medfreq(InnOuter);
InnOuterPBW = powerbw(InnOuter);
InnOuterBandP = bandpower(InnOuter);

% Membuat matriks untuk seleksi fitur (700 x 11)
fitur_Kurtosis = ([Normalkurtosis, Innerkurtosis, Ballkurtosis, Outerkurtosis, InnerBallkurtosis, OuterBallkurtosis, InnOuterkurtosis])';
fitur_Mean = ([Normalmean, Innermean, Ballmean, Outermean, InnerBallmean, OuterBallmean, InnOutermean])';
fitur_MeanFreq = ([NormalMeanFreq, InnerMeanFreq, BallMeanFreq, OuterMeanFreq, InnerBallMeanFreq, OuterBallMeanFreq, InnOuterMeanFreq])';
fitur_MedFreq = ([NormalMedFreq, InnerMedFreq, BallMedFreq, OuterMedFreq, InnerBallMedFreq, OuterBallMedFreq, InnOuterMedFreq])';
fitur_Median = ([NormalMedian, InnerMedian, BallMedian, OuterMedian, InnerBallMedian, OuterBallMedian, InnOuterMedian])';
fitur_p2p = ([Normalp2p, Innerp2p, Ballp2p, Outerp2p, InnerBallp2p, OuterBallp2p, InnOuterp2p])';
fitur_PBW = ([NormalPBW, InnerPBW, BallPBW, OuterPBW, InnerBallPBW, OuterBallPBW, InnOuterPBW])';
fitur_skewness = ([Normalskewness, Innerskewness, Ballskewness, Outerskewness, InnerBallskewness, OuterBallskewness, InnOuterskewness])';
fitur_STD = ([NormalSTD, InnerSTD, BallSTD, OuterSTD, InnerBallSTD, OuterBallSTD, InnOuterSTD])';
fitur_RMS = ([Normalrms, Innerrms, Ballrms, Outerrms, InnerBallrms,OuterBallrms, InnOuterrms])';
fitur_BandP = ([NormalBandP, InnerBandP, BallBandP, OuterBandP, InnerBallBandP, OuterBallBandP, InnOuterBandP])';

PREDIKTOR_seleksi_fitur = [fitur_Kurtosis, fitur_Mean, fitur_MeanFreq, fitur_MedFreq, ...
    fitur_Median, fitur_p2p, fitur_PBW, fitur_skewness, fitur_STD, fitur_RMS, fitur_BandP];

% ... (Kode sebelumnya tetap sama sampai bagian feature extraction) ...

% Plot distribusi fitur untuk setiap kelas
labels = [ones(100,1);   % Normal
          2*ones(100,1); % Inner
          3*ones(100,1); % Ball
          4*ones(100,1); % Outer
          5*ones(100,1); % InnOuter
          6*ones(100,1); % InnerBall
          7*ones(100,1)]; % OuterBall

% Membuat nama label untuk plot
class_names = {'Normal', 'Inner', 'Ball', 'Outer', 'InnOuter', 'InnerBall', 'OuterBall'};
feature_names = {'Kurtosis', 'Mean', 'MeanFreq', 'MedFreq', 'Median', 'p2p',...
                 'PBW', 'Skewness', 'STD', 'RMS', 'BandP'};

% Plot boxplot untuk setiap fitur
figure('Position', [100, 100, 1200, 800]);
for i = 1:11
    subplot(4,3,i);
    boxplot(PREDIKTOR_seleksi_fitur(:,i), labels);
    title(feature_names{i});
    xticklabels(class_names);
    xtickangle(45);
    grid on;
end
sgtitle('Distribusi Fitur untuk Setiap Kelas');

% Seleksi Fitur dengan Distance Evaluation Technique (DET)
n_classes = 7;
n_features = size(PREDIKTOR_seleksi_fitur, 2);
det_scores = zeros(1, n_features);

for f = 1:n_features
    feature_data = PREDIKTOR_seleksi_fitur(:, f);
    overall_mean = mean(feature_data);
    
    % Hitung between-class variance (Sb) dan within-class variance (Sw)
    Sb = 0;
    Sw = 0;
    
    for c = 1:n_classes
        class_data = feature_data(labels == c);
        class_mean = mean(class_data);
        class_var = var(class_data, 1); % Menggunakan variance populasi
        
        n_i = length(class_data);
        Sb = Sb + n_i * (class_mean - overall_mean)^2;
        Sw = Sw + class_var;
    end
    
    det_scores(f) = Sb / Sw; % Skor DET
end

% Plot skor DET
figure;
bar(det_scores);
xlabel('Fitur');
ylabel('Skor DET');
title('Skor Distance Evaluation Technique (DET)');
xticks(1:n_features);
xticklabels(feature_names);
xtickangle(45);
grid on;

% Memilih fitur dengan skor tertinggi
[~, top_idx] = sort(det_scores, 'descend');
selected_features = top_idx(1:5); % Pilih 5 fitur terbaik

disp('Fitur terpilih berdasarkan DET:');
disp(feature_names(selected_features));
