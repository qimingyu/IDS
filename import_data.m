function MM=import_data()
 timeoutA=logintimeout(5) 
 % Set maximum time allowed for establishing a connection.
 connA = database('test','root', '123456','com.mysql.jdbc.Driver','jdbc:mysql://localhost:3306/test');
 ping(connA) % Check the database status.
 cursorA=exec(connA,'select * from kddcup10');
 %setdbprefs('DataReturnFormat','numeric'); %set numeric format 
 setdbprefs('Datareturnformat','cellarray');
 cursorA=fetch(cursorA)  % Fetch all rows of data.
 MM=cursorA.Data % Display the data£¬save the data in MM
 save data ans;
 close(cursorA) ; % Close the cursor and the connection.
 close(connA);
end

