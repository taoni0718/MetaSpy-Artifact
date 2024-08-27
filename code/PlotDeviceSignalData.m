ch1 = deviceiphone11(:, 1);

ch1data = ch1{:, 1};

out1 = ch1data;

static = mean(out1(1000000:1100000));
info = out1(1220000:1319999);

for row = 1:100000
    info(row) = info(row) - static;
end


csvwrite("deviceiphone11data.csv", info);

%x1 = 1:1:size(info, 1);

%plot(x1, info, 'LineWidth', 1.5);
%ylabel("Normalized voltage (mV)");
%xlabel("Time (s)");