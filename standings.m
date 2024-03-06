%This function takes in the stats each team recorded in each category for
%every week, and outputs the number of wins, losses, and ties the first
%team would have if they played against every team each week.
function retval = standings (input1, input2, input3, input4, input5, input6, input7, input8)
wins = 0;
losses = 0;
ties = 0;
big = [input1, input2, input3, input4, input5, input6, input7, input8];
weeks = size(big, 1);
columns = size(big, 2);
%Iterate through each week and each opponent to count the number of wins,
%losses, and ties the first team has.  
for i = 1:weeks
  for j = [1:14]
    k = j+14;
   while k < columns + 1
      % Note that a higher number is better for all but 2 categories 
      %(pitcher ERA and pitcher WHIP).  These are the 12th and 13th
      %categories in each row, respectively.
     if mod(k, 14) == 12 || mod(k, 14) == 13
       if big(i, j) < big(i, k)
         wins = wins + 1;
       elseif big(i, j) > big(i, k)
         losses = losses + 1;
       else
         ties = ties + 1;
      end
     else
       if big(i, j) > big(i, k)
         wins = wins + 1;
       elseif big(i, j) < big(i, k)
         losses = losses + 1;
       else
         ties = ties + 1;
       
       end
     
     end
     k = k + 14;
   end
  end
retval = [wins, losses, ties];
end

