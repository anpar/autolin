clear all;
res = importdata('Z:\LINMA1510\Test_1.txt')
factor = 0.63;
diff = res(150,5)-res(70,5)
base = res(70,5)



for i=70:150
    if res(i,5)>base+diff*factor
        res(i,1)
        i
        break
    end
end