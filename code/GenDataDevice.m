key1 = csvread("deviceoculusdata.csv");
key2 = csvread("deviceipadprodata.csv");
key3 = csvread("deviceiphone13prodata.csv");
key4 = csvread("deviceiphone11data.csv");

rd = 3;
fl = 201;

Farr_key1 = feature_extraction(key1);
Farr_key1_smth = sgolayfilt(Farr_key1, rd, fl);
row_key1 = size(Farr_key1_smth, 1);
y_key1 = {row_key1};
for i = 1:row_key1
    y_key1{i,:} = 'Device1';
end

Farr_key2 = feature_extraction(key2);
Farr_key2_smth = sgolayfilt(Farr_key2, rd, fl);
row_key2 = size(Farr_key2_smth, 1);
y_key2 = {row_key2};
for i = 1:row_key2
    y_key2{i,:} = 'Device2';
end

Farr_key3 = feature_extraction(key3);
Farr_key3_smth = sgolayfilt(Farr_key3, rd, fl);
row_key3 = size(Farr_key3_smth, 1);
y_key3 = {row_key3};
for i = 1:row_key3
    y_key3{i,:} = 'Device3';
end

Farr_key4 = feature_extraction(key4);
Farr_key4_smth = sgolayfilt(Farr_key4, rd, fl);
row_key4 = size(Farr_key4_smth, 1);
y_key4 = {row_key4};
for i = 1:row_key4
    y_key4{i,:} = 'Device4';
end



Farr_all = [Farr_key1_smth; Farr_key2_smth; Farr_key3_smth; Farr_key4_smth];
y_all = [y_key1; y_key2; y_key3; y_key4];

file_name_all = "device_fingerprinting_data.mat";
save(file_name_all, 'Farr_all', 'y_all');