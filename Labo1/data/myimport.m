function myimport
filename = 'Test_1 copy.txt';
A = (importdata(filename));
plot(A(:,1),A(:,3));
end