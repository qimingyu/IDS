 %连接数据库
 timeoutA=logintimeout(5) ;
 % Set maximum time allowed for establishing a connection.
 connA = database('test','root', '123456','com.mysql.jdbc.Driver','jdbc:mysql://localhost:3306/test');
 ping(connA); % Check the database status.
 cursorA=exec(connA,'select * from kddcup10');
 %setdbprefs('DataReturnFormat','numeric'); %set numeric format 
 setdbprefs('Datareturnformat','cellarray');
 cursorA=fetch(cursorA) ; % Fetch all rows of data.
 MM=cursorA.Data; % Display the data，save the data in MM
 save data ans;
 close(cursorA) ; % Close the cursor and the connection.
 close(connA);
%获得矩阵的大小
 [m n]=size(MM);
 %第一个属性
 p1=zeros(m,1);
 for i = 1:m
         p1(i,1)=str2num(cell2mat(MM(i,1)));
 end
 for i = 1:m
     if max(p1)
     p1(i,1)=p1(i,1)/max(p1);
     else p1(i,1)=0;
     end
 end
 %第二个属性
 str = '';
 p2=zeros(m,1);
 for i = 1:m
     str = cell2mat(MM(i,2));
     switch str
         case 'tcp'
            p2(i,1)=0;
         case 'udp'
            p2(i,1)=1;
         case 'imcp'
            p2(i,1)=2;
         otherwise
     end
 end
 for i=1:m
     if max(p2)
        p2(i,1)=p2(i,1)/max(p2);
     else 
        p2(i,1) = 0;
     end
 end
 %第三个属性
p3=zeros(m,1);
str1='';
for i=1:m
    str1=cell2mat(MM(i,3));
    switch str1
        case 'aol'
            p3(i,1)=0;
        case 'auth'
            p3(i,1)=1;
        case 'bgp'
            p3(i,1)=2;
        case 'courier'
            p3(i,1)=3;
        case 'csnet_ns'
            p3(i,1)=4;
        case 'ctf'
            p3(i,1)=5;
        case 'daytime'
            p3(i,1)=6;
        case 'discard'
            p3(i,1)=7;
        case 'domain'
            p3(i,1)=8;
        case 'domain_u'
            p3(i,1)=9;
        case 'echo'
            p3(i,1)=10;
        case 'eco_i'
            p3(i,1)=11;
        case 'ecr_i'
            p3(i,1)=12;
        case 'efs'
            p3(i,1)=13;
        case 'exec'
            p3(i,1)=14;
        case 'finger'
            p3(i,1)=15;
        case 'ftp'
            p3(i,1)=16;
        case 'ftp_data'
            p3(i,1)=17;
        case 'gopher'
            p3(i,1)=18;
        case 'harvest'
            p3(i,1)=19;
        case 'hostnames'
            p3(i,1)=20;
        case 'http'
            p3(i,1)=21;
        case 'http_2784'
            p3(i,1)=22;
        case 'http_443'
            p3(i,1)=23;
        case 'http_8001'
            p3(i,1)=24;
        case 'imap4'
            p3(i,1)=25;
        case 'IRC'
            p3(i,1)=26;
        case 'iso_tsap'
            p3(i,1)=27;
        case 'klogin'
            p3(i,1)=28;
        case 'kshell'
            p3(i,1)=29;
        case 'ldap'
            p3(i,1)=30;
        case 'link'
            p3(i,1)=31;
        case 'login'
            p3(i,1)=32;
        case 'mtp'
            p3(i,1)=33;
        case 'name'
            p3(i,1)=34;
        case 'netbios_dgm'
            p3(i,1)=35;
        case 'netbios_ns'
            p3(i,1)=36;
        case 'netbios_ssn'
            p3(i,1)=37;
        case 'netstat'
            p3(i,1)=38;
        case 'nnsp'
            p3(i,1)=39;
        case 'nntp'
            p3(i,1)=40;
        case 'ntp_u'
            p3(i,1)=41;
        case 'other'
            p3(i,1)=42;
        case 'pm_dump'
            p3(i,1)=43;
        case 'pop_2'
            p3(i,1)=44;
        case 'pop_3'
            p3(i,1)=45;
        case 'printer'
            p3(i,1)=46;
        case 'private'
            p3(i,1)=47;
        case 'red_i'
            p3(i,1)=48;
        case 'remote_job'
            p3(i,1)=49;
        case 'rje'
            p3(i,1)=50;
        case 'shell'
            p3(i,1)=51;
        case 'smtp'
            p3(i,1)=52;
        case 'sql_net'
            p3(i,1)=53;
        case 'ssh'
            p3(i,1)=54;
        case 'sunrpc'
            p3(i,1)=55;
        case 'supdup'
            p3(i,1)=56;
        case 'systat'
            p3(i,1)=57;
        case 'telnet'
            p3(i,1)=58;
        case 'tftp_u'
            p3(i,1)=59;
        case 'tim_i'
            p3(i,1)=60;
        case 'time'
            p3(i,1)=61;
        case 'urh_i'
            p3(i,1)=62;
        case 'urp_i'
            p3(i,1)=63;
        case 'uucp'
            p3(i,1)=64;
        case 'uucp_path'
            p3(i,1)=65;
        case 'vmnet'
            p3(i,1)=66;
        case 'whois'
            p3(i,1)=67;
        case 'X11'
            p3(i,1)=68;
        case 'Z39_50'
            p3(i,1)=69;
        otherwise 
    end
end
for i=1:m
     if max(p3)
        p3(i,1)=p3(i,1)/max(p3);
     else 
        p3(i,1) = 0;
     end
end
 %第四个属性
 p4=zeros(m,1);
str2='';
for i=1:m
    str2=cell2mat(MM(i,4));
    switch str2
        case 'OTH'
            p4(i,1)=0;
        case 'REJ'
            p4(i,1)=1;
        case 'RSTO'
            p4(i,1)=2;
        case 'RSTOSO'
            p4(i,1)=3;
        case 'RSTR'
            p4(i,1)=4;
        case 'S0'
            p4(i,1)=5;
        case 'S1'
            p4(i,1)=6;
        case 'S2'
            p4(i,1)=7;
        case 'S3'
            p4(i,1)=8;
        case 'SF'
            p4(i,1)=9;
        case 'SH'
            p4(i,1)=10;
        otherwise
    end
end
for i=1:m
     if max(p4)
        p4(i,1)=p4(i,1)/max(p4);
     else 
        p4(i,1) = 0;
     end
end
%第五个属性
p5=zeros(m,1);
 for i = 1:m
         p5(i,1)=str2num(cell2mat(MM(i,5)));
 end
 for i = 1:m
     if max(p5)
     p5(i,1)=p5(i,1)/max(p5);
     else
         p5(i,1)=0;
     end
 end
 %第六个属性
 p6=zeros(m,1);
 for i = 1:m
         p6(i,1)=str2num(cell2mat(MM(i,6)));
 end
 for i = 1:m
     if max(p6)
     p6(i,1)=p6(i,1)/max(p6);
     else
         p6(i,1)=0;
     end
 end
 %第七个属性
 p7=zeros(m,1);
 for i = 1:m
         p7(i,1)=str2num(cell2mat(MM(i,7)));
 end
%第八个属性
p8=zeros(m,1);
 for i = 1:m
         p8(i,1)=str2num(cell2mat(MM(i,8)));
 end
 for i = 1:m
     if max(p8)
     p8(i,1)=p8(i,1)/max(p8);
     else
         p8(i,1)=0;
     end
 end
 %第九个属性
 p9=zeros(m,1);
 for i = 1:m
         p9(i,1)=str2num(cell2mat(MM(i,9)));
 end
 for i = 1:m
     if max(p9)
     p9(i,1)=p9(i,1)/max(p9);
     else
         p9(i,1)=0;
     end
 end
 %第十个属性
  p10=zeros(m,1);
 for i = 1:m
         p10(i,1)=str2num(cell2mat(MM(i,10)));
 end
 for i = 1:m
     if max(p10)
     p10(i,1)=p10(i,1)/max(p10);
     else
         p10(i,1)=0;
     end
 end
 %第十一个属性
p11=zeros(m,1);
 for i = 1:m
         p11(i,1)=str2num(cell2mat(MM(i,11)));
 end
 for i = 1:m
     if max(p11)
     p11(i,1)=p11(i,1)/max(p11);
     else
         p11(i,1)=0;
     end
 end
 %第十二个属性
  p12=zeros(m,1);
 for i = 1:m
         p12(i,1)=str2num(cell2mat(MM(i,12)));
 end
 %第十三个属性
 p13=zeros(m,1);
 for i = 1:m
         p13(i,1)=str2num(cell2mat(MM(i,13)));
 end
 for i = 1:m
     if max(p13)
     p13(i,1)=p13(i,1)/max(p13);
     else
         p13(i,1)=0;
     end
 end
 %第十四个属性
  p14=zeros(m,1);
 for i = 1:m
         p14(i,1)=str2num(cell2mat(MM(i,14)));
 end
 %第十五个属性
  p15=zeros(m,1);
 for i = 1:m
         p15(i,1)=str2num(cell2mat(MM(i,15)));
 end
 %第十六个属性
 p16=zeros(m,1);
 for i = 1:m
         p16(i,1)=str2num(cell2mat(MM(i,16)));
 end
 for i = 1:m
     if max(p16)
     p16(i,1)=p16(i,1)/max(p16);
     else
         p16(i,1)=0;
     end
 end
 %第十六个属性
 p16=zeros(m,1);
 for i = 1:m
         p16(i,1)=str2num(cell2mat(MM(i,16)));
 end
 for i = 1:m
     if max(p16)
     p16(i,1)=p16(i,1)/max(p16);
     else
         p16(i,1)=0;
     end
 end
  %第十七个属性
 p17=zeros(m,1);
 for i = 1:m
         p17(i,1)=str2num(cell2mat(MM(i,17)));
 end
 for i = 1:m
     if max(p17)
     p17(i,1)=p17(i,1)/max(p17);
     else
         p17(i,1)=0;
     end
 end
 %第十八个属性
 p18=zeros(m,1);
 for i = 1:m
         p18(i,1)=str2num(cell2mat(MM(i,18)));
 end
 for i = 1:m
     if max(p18)
     p18(i,1)=p18(i,1)/max(p18);
     else
         p18(i,1)=0;
     end
 end
 %第十九个属性
 p19=zeros(m,1);
 for i = 1:m
         p19(i,1)=str2num(cell2mat(MM(i,19)));
 end
 for i = 1:m
     if max(p19)
     p19(i,1)=p19(i,1)/max(p19);
     else
         p19(i,1)=0;
     end
 end
 %第二十个属性
 p20=zeros(m,1);
 for i = 1:m
         p20(i,1)=str2num(cell2mat(MM(i,20)));
 end
  %第二十一个属性
 p21=zeros(m,1);
 for i = 1:m
         p21(i,1)=str2num(cell2mat(MM(i,21)));
 end
  %第二十二个属性
 p22=zeros(m,1);
 for i = 1:m
         p22(i,1)=str2num(cell2mat(MM(i,22)));
 end
 %第二十三个属性
 p23=zeros(m,1);
 for i = 1:m
         p23(i,1)=str2num(cell2mat(MM(i,23)));
 end
 for i = 1:m
     if max(p23)
     p23(i,1)=p23(i,1)/max(p23);
     else
         p23(i,1)=0;
     end
 end
 %第二十四个属性
 p24=zeros(m,1);
 for i = 1:m
         p24(i,1)=str2num(cell2mat(MM(i,24)));
 end
 for i = 1:m
     if max(p24)
     p24(i,1)=p24(i,1)/max(p24);
     else
         p24(i,1)=0;
     end
 end
 %第二十五个属性
 p25=zeros(m,1);
 for i = 1:m
         p25(i,1)=str2num(cell2mat(MM(i,25)));
 end
 for i = 1:m
     if max(p25)
     p25(i,1)=p25(i,1)/max(p25);
     else
         p25(i,1)=0;
     end
 end
 %第二十六个属性
 p26=zeros(m,1);
 for i = 1:m
         p26(i,1)=str2num(cell2mat(MM(i,26)));
 end
 for i = 1:m
     if max(p26)
     p26(i,1)=p26(i,1)/max(p26);
     else
         p26(i,1)=0;
     end
 end
 %第二十七个属性
 p27=zeros(m,1);
 for i = 1:m
         p27(i,1)=str2num(cell2mat(MM(i,27)));
 end
 for i = 1:m
     if max(p27)
     p27(i,1)=p27(i,1)/max(p27);
     else
         p27(i,1)=0;
     end
 end
  %第二十八个属性
 p28=zeros(m,1);
 for i = 1:m
         p28(i,1)=str2num(cell2mat(MM(i,28)));
 end
 for i = 1:m
     if max(p28)
     p28(i,1)=p28(i,1)/max(p28);
     else
         p28(i,1)=0;
     end
 end
  %第二十九个属性
 p29=zeros(m,1);
 for i = 1:m
         p29(i,1)=str2num(cell2mat(MM(i,29)));
 end
 for i = 1:m
     if max(p29)
     p29(i,1)=p29(i,1)/max(p29);
     else
         p29(i,1)=0;
     end
 end
  %第三十个属性
 p30=zeros(m,1);
 for i = 1:m
         p30(i,1)=str2num(cell2mat(MM(i,30)));
 end
 for i = 1:m
     if max(p30)
     p30(i,1)=p30(i,1)/max(p30);
     else
         p30(i,1)=0;
     end
 end
 %第三十一个属性
 p31=zeros(m,1);
 for i = 1:m
         p31(i,1)=str2num(cell2mat(MM(i,31)));
 end
 for i = 1:m
     if max(p31)
     p31(i,1)=p31(i,1)/max(p31);
     else
         p31(i,1)=0;
     end
 end
 %第三十二个属性
 p32=zeros(m,1);
 for i = 1:m
         p32(i,1)=str2num(cell2mat(MM(i,32)));
 end
 for i = 1:m
     if max(p32)
     p32(i,1)=p32(i,1)/max(p32);
     else
         p32(i,1)=0;
     end
 end
 %第三十三个属性
 p33=zeros(m,1);
 for i = 1:m
         p32(i,1)=str2num(cell2mat(MM(i,33)));
 end
 for i = 1:m
     if max(p33)
     p33(i,1)=p33(i,1)/max(p33);
     else
         p33(i,1)=0;
     end
 end
 %第三十四个属性
 p34=zeros(m,1);
 for i = 1:m
         p34(i,1)=str2num(cell2mat(MM(i,34)));
 end
 for i = 1:m
     if max(p34)
     p34(i,1)=p34(i,1)/max(p34);
     else
         p34(i,1)=0;
     end
 end
 %第三十五个属性
 p35=zeros(m,1);
 for i = 1:m
         p35(i,1)=str2num(cell2mat(MM(i,35)));
 end
 for i = 1:m
     if max(p35)
     p35(i,1)=p35(i,1)/max(p35);
     else
         p35(i,1)=0;
     end
 end
 %第三十六个属性
 p36=zeros(m,1);
 for i = 1:m
         p36(i,1)=str2num(cell2mat(MM(i,36)));
 end
 for i = 1:m
     if max(p36)
     p36(i,1)=p36(i,1)/max(p36);
     else
         p36(i,1)=0;
     end
 end
  %第三十七个属性
 p37=zeros(m,1);
 for i = 1:m
         p37(i,1)=str2num(cell2mat(MM(i,37)));
 end
 for i = 1:m
     if max(p37)
     p37(i,1)=p37(i,1)/max(p37);
     else
         p37(i,1)=0;
     end
 end
  %第三十八个属性
 p38=zeros(m,1);
 for i = 1:m
         p38(i,1)=str2num(cell2mat(MM(i,38)));
 end
 for i = 1:m
     if max(p38)
     p38(i,1)=p38(i,1)/max(p38);
     else
         p38(i,1)=0;
     end
 end
  %第三十九个属性
 p39=zeros(m,1);
 for i = 1:m
         p39(i,1)=str2num(cell2mat(MM(i,39)));
 end
 for i = 1:m
     if max(p39)
     p39(i,1)=p39(i,1)/max(p39);
     else
         p39(i,1)=0;
     end
 end
   %第四十个属性
 p40=zeros(m,1);
 for i = 1:m
         p40(i,1)=str2num(cell2mat(MM(i,40)));
 end
 for i = 1:m
     if max(p40)
     p40(i,1)=p40(i,1)/max(p40);
     else
         p40(i,1)=0;
     end
 end
 %第四十一个属性
 p41=zeros(m,1);
 for i = 1:m
         p41(i,1)=str2num(cell2mat(MM(i,41)));
 end
 for i = 1:m
     if max(p41)
     p41(i,1)=p41(i,1)/max(p41);
     else
         p41(i,1)=0;
     end
 end
  %第四十二个属性
  str5='';
 p42=zeros(m,1);
 for i = 1:m
         str5=cell2mat(MM(i,42));
         switch str5
             case 'normal.'
                 p42(i,1)=0;
             otherwise
                 p42(i,1)=1;
         end
 end
 
 DATA = zeros(m,n);
 DATA(:,1)=p1;DATA(:,2)=p2;DATA(:,3)=p3;DATA(:,4)=p4;DATA(:,5)=p5;DATA(:,6)=p6;DATA(:,7)=p7;DATA(:,8)=p8;DATA(:,9)=p9;DATA(:,10)=p10;
 DATA(:,11)=p11;DATA(:,12)=p12;DATA(:,13)=p13;DATA(:,14)=p14;DATA(:,15)=p15;DATA(:,16)=p16;DATA(:,17)=p17;DATA(:,18)=p18;DATA(:,19)=p9;DATA(:,20)=p20;
 DATA(:,21)=p21;DATA(:,22)=p22;DATA(:,23)=p23;DATA(:,24)=p24;DATA(:,25)=p25;DATA(:,26)=p26;DATA(:,27)=p27;DATA(:,28)=p28;DATA(:,29)=p9;DATA(:,30)=p30;
 DATA(:,31)=p31;DATA(:,32)=p32;DATA(:,33)=p33;DATA(:,34)=p34;DATA(:,35)=p35;DATA(:,36)=p36;DATA(:,37)=p37;DATA(:,38)=p38;DATA(:,39)=p9;DATA(:,40)=p40;
 DATA(:,41)=p41;DATA(:,42)=p42;
 
 

 
 
 
            
            
            

 


