poc=172.6;
voc=2400;
ioc=0.4844;
pfoc=poc/(voc*ioc);
isc=208.3;
%vforisc=52.13;
psc=649.9;
iL=(0:1:208);
effm=zeros(209,10);
pfi=(0.1:0.1:1);
for i=1:10
pf=pfi(i);
po=(240*iL)*pf;
wsc=((iL/isc).^2)*psc;
wt=wsc+poc;
pi=po+wt;
eff=100*(po./pi);
plot(iL,eff);
hold on
effm(:,i)=eff;
end
hold off
xlim([-1 209])
legend("pf is "+string((0.1:0.1:1)))
xlabel('iL');
ylabel('efficiency');