clc; clear; close all;

%% 랜덤 비트 생성
Nbits = 100;
b = randi([0 1],2,Nbits);

%% QPSK 변조
x = ((2*b(1,:)-1) + (2*b(2,:)-1)*1j)/sqrt(2);
% figure; plot(real(x),imag(x),'x')

%% noise 생성
snr_dB = 20; 
% snr    = db2pow(snr_dB);
snr    = 10^(snr_dB/10);
Pn     = 1/snr; % noise power
n      = sqrt(Pn)*(randn(1,length(x))+randn(1,length(x))*1j)/sqrt(2);

%% 수신신호 생성
y_1 = x + n;

figure; 
% plot(real(x),imag(x),'o'); hold on;
subplot(3,3,1)
plot(real(y_1),imag(y_1),'x')

subplot(3,3,2)
plot(real(y_1),imag(y_1),'x')

subplot(3,3,3)
plot(real(y_1),imag(y_1),'x')

subplot(3,3,4)
plot(real(y_1),imag(y_1),'x')

subplot(3,3,5)
plot(real(y_1),imag(y_1),'x')

subplot(3,3,6)
plot(real(y_1),imag(y_1),'x')

axis([-2 2 -2 2])

