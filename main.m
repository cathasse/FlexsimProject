clc;

data = xlsread('data.xls');

data1 = data(1:1501,[3,4]);
%一级聚类
k1 = 20;
[idx,ctrs] = kmeans(data1,k1);
%{
color = ['r','b','']
for i = 1:k

    plot(data1(idx==1,1),data1(idx==1,2),'r.','MarkerSize',12)
    hold on
plot(data1(idx==2,1),data1(idx==2,2),'b.','MarkerSize',12)
hold on
plot(data1(idx==3,1),data1(idx==3,2),'k.','MarkerSize',12)
hold on
plot(data1(idx==4,1),data1(idx==4,2),'g.','MarkerSize',12)
hold on
%}
%{
plot(ctrs(:,1),ctrs(:,2),'kx',...
     'MarkerSize',12,'LineWidth',2)
 hold on
plot(ctrs(:,1),ctrs(:,2),'ko',...
     'MarkerSize',12,'LineWidth',2)
hold on
%}
%二级聚类
k2 = 6;
[idx2,ctrs2] = kmeans(ctrs,k2);
color = {['rx'],['bx'],['cx'],['kx'],['gx'],['kx']}
for i=1:k2
    plot(ctrs(idx2==i,1),ctrs(idx2==i,2),color{i},'MarkerSize',12)
    hold on;
end

plot(ctrs2(:,1),ctrs2(:,2),'bx',...
     'MarkerSize',12,'LineWidth',2)
 hold on
plot(ctrs2(:,1),ctrs2(:,2),'bo',...
     'MarkerSize',12,'LineWidth',2)
hold on


plot(data(1,3),data(1,4),'rx','MarkerSize',12,'LineWidth',2)

