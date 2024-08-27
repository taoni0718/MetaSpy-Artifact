ch1 = deviceoculus(:, 1);
ch2 = deviceipadpro(:, 1);
ch3 = deviceiphone13pro(:, 1);
ch4 = deviceiphone11(:, 1);

ch1data = ch1{:, 1};
ch2data = ch2{:, 1};
ch3data = ch3{:, 1};
ch4data = ch4{:, 1};

out1 = ch1data;
out2 = ch2data;
out3 = ch3data;
out4 = ch4data;

framelen = 201;
ord = 3;

out1 = sgolayfilt(out1, ord, framelen);
out2 = sgolayfilt(out2, ord, framelen);
out3 = sgolayfilt(out3, ord, framelen);
out4 = sgolayfilt(out4, ord, framelen);

out1 = [out1(232048:277862)-1.6; out1(232048:277862)-1.6; out1(232048:277862)-1.6; out1(220000:240000)-1.5; out1(222048:267862)-1.5; out1(1166690:1688880)];
out2 = [out2(520000:590000)-6.1; out2(520000:590000)-6.1; out2(520000:590000)-6.1; out2(516940:584468)-6.1; out2(513000:573000)-6.1; out2(1214510:1723010)-4.7];
out3 = [out4(921000:960999)-1.2; out4(921000:960999)-1.2; out4(921000:960999)-1.2; out4(921000:960999)-1.2; out4(921000:960999)-1.2; out4(921000:960999)-1.2; out3(1249380:1514410)+0.3];
out4 = [out4(260000:350000)+2.5; out4(260000:350000)+2.5; out4(1025310:1217030)-1.9; out4(921000:960999)-1.2; out4(921000:960999)-1.2];

out_all = [out1; out2; out3; out4];

out_all = normalize(out_all, 'range');

%out_all = [out1(1433320:1675920); out2(1388960:1762880)-0.4; out3(1112020:1465890)+0.1; out4(1235930:1546070)-1.2; out5(1461720:1841960)-0.57; out6(1272400:2080180)+0.1; out7(1245090:1644150)];

%out1 = normalize(out1, 'range');

%out1 = movmedian(out1, 100);

%var1 = movvar(out1, 100);

%var1 = normalize(var1, 'range');

%x_all = 1:1:size(out_all, 1);

%plot(x_all, out_all, 'LineWidth', 1.5);
x = 1:1:size(out_all, 1);
plot(x/40000, out_all, 'LineWidth', 1.5);
xlabel("Time (s)");
ylabel("Normalized voltage (mV)");
xlim([0 64]);
grid on
