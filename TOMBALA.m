clc
close
clear all

%card generation
oyuncu_1_card= randi(100,1,15);
oyuncu_2_card= randi(100,1,15);
oyuncu_3_card= randi(100,1,15);
oyuncu_4_card= randi(100,1,15);
oyuncu_5_card= randi(100,1,15);

%detect same values, if exists replace same number
for k=1:20 %make 20 iteration just to make sure same numbers on a card do not exist
    for i=1:14
        for j=i+1:15
            if oyuncu_1_card(i)==oyuncu_1_card(j) 
                while oyuncu_1_card(i) ==oyuncu_1_card(j)
                    oyuncu_1_card(j)=randi(100);
                end
            end
    
            if oyuncu_2_card(i)==oyuncu_2_card(j) 
                while oyuncu_2_card(i) ==oyuncu_2_card(j)
                    oyuncu_2_card(j)=randi(100);
                end
            end
    
            if oyuncu_3_card(i)==oyuncu_3_card(j) 
                while oyuncu_3_card(i) ==oyuncu_3_card(j)
                    oyuncu_3_card(j)=randi(100);
                end
            end
    
            if oyuncu_4_card(i)==oyuncu_4_card(j) 
                while oyuncu_4_card(i) ==oyuncu_4_card(j)
                    oyuncu_4_card(j)=randi(100);
                end
            end
    
            if oyuncu_5_card(i)==oyuncu_5_card(j) 
                while oyuncu_5_card(i) ==oyuncu_5_card(j)
                    oyuncu_5_card(j)=randi(100);
                end
            end
    
        
        end
    end
end

%begin game

number_array=1:100; %possible numbers
number_index=zeros(1,100); %array for storing selected numbers, 0 means not selected, 1 means selected
index_oyuncu_1= zeros(1,15);
index_oyuncu_2= zeros(1,15);
index_oyuncu_3= zeros(1,15);
index_oyuncu_4= zeros(1,15);
index_oyuncu_5= zeros(1,15);


oyuncu_1_cinko=zeros(1,3);
oyuncu_2_cinko=zeros(1,3);
oyuncu_3_cinko=zeros(1,3);
oyuncu_4_cinko=zeros(1,3);
oyuncu_5_cinko=zeros(1,3);

oyuncu_1_previous_cinko=zeros(1,4);
oyuncu_2_previous_cinko=zeros(1,4);
oyuncu_3_previous_cinko=zeros(1,4);
oyuncu_4_previous_cinko=zeros(1,4);
oyuncu_5_previous_cinko=zeros(1,4);

for game_iteration=1:100
    %randomly select new number among remaining numbers
    selected_number=randi(100);
    while number_index(selected_number)==1 %already selected number, pick until unselected one found
        selected_number=randi(100);
    end
    number_index(selected_number)=1; % mark the number as selected, in order to prevent selection at next cycles

    %search players cards for a given selected number
    for i=1:15
        if selected_number==oyuncu_1_card(i)
            index_oyuncu_1(i)=1;
        end
        if selected_number==oyuncu_2_card(i)
            index_oyuncu_2(i)=1;
        end
        if selected_number==oyuncu_3_card(i)
            index_oyuncu_3(i)=1;
        end
        if selected_number==oyuncu_4_card(i)
            index_oyuncu_4(i)=1;
        end
        if selected_number==oyuncu_5_card(i)
            index_oyuncu_5(i)=1;
        end
    end

    %check cinko-1
    if index_oyuncu_1(1) * index_oyuncu_1(2) * index_oyuncu_1(3) * index_oyuncu_1(4) * index_oyuncu_1(5) ==1
        oyuncu_1_cinko(1)=1;
    end
    if index_oyuncu_2(1) * index_oyuncu_2(2) * index_oyuncu_2(3) * index_oyuncu_2(4) * index_oyuncu_2(5) ==1
        oyuncu_2_cinko(1)=1;
    end
    if index_oyuncu_3(1) * index_oyuncu_3(2) * index_oyuncu_3(3) * index_oyuncu_3(4) * index_oyuncu_3(5) ==1
        oyuncu_3_cinko(1)=1;
    end
    if index_oyuncu_4(1) * index_oyuncu_4(2) * index_oyuncu_4(3) * index_oyuncu_4(4) * index_oyuncu_4(5) ==1
        oyuncu_4_cinko(1)=1;
    end
    if index_oyuncu_5(1) * index_oyuncu_5(2) * index_oyuncu_5(3) * index_oyuncu_5(4) * index_oyuncu_5(5) ==1
        oyuncu_5_cinko(1)=1;
    end


    %check cinko-2
    if index_oyuncu_1(6) * index_oyuncu_1(7) * index_oyuncu_1(8) * index_oyuncu_1(9) * index_oyuncu_1(10) ==1
        oyuncu_1_cinko(2)=1;
    end
    if index_oyuncu_2(6) * index_oyuncu_2(7) * index_oyuncu_2(8) * index_oyuncu_2(9) * index_oyuncu_2(10) ==1
        oyuncu_2_cinko(2)=1;
    end
    if index_oyuncu_3(6) * index_oyuncu_3(7) * index_oyuncu_3(8) * index_oyuncu_3(9) * index_oyuncu_3(10) ==1
        oyuncu_3_cinko(2)=1;
    end
    if index_oyuncu_4(6) * index_oyuncu_4(7) * index_oyuncu_4(8) * index_oyuncu_4(9) * index_oyuncu_4(10) ==1
        oyuncu_4_cinko(2)=1;
    end
    if index_oyuncu_5(6) * index_oyuncu_5(7) * index_oyuncu_5(8) * index_oyuncu_5(9) * index_oyuncu_5(10) ==1
        oyuncu_5_cinko(2)=1;
    end

    %check cinko-3
    if index_oyuncu_1(11) * index_oyuncu_1(12) * index_oyuncu_1(13) * index_oyuncu_1(14) * index_oyuncu_1(15) ==1
        oyuncu_1_cinko(3)=1;
    end
    if index_oyuncu_2(11) * index_oyuncu_2(12) * index_oyuncu_2(13) * index_oyuncu_2(14) * index_oyuncu_2(15) ==1
        oyuncu_2_cinko(3)=1;
    end
    if index_oyuncu_3(11) * index_oyuncu_3(12) * index_oyuncu_3(13) * index_oyuncu_3(14) * index_oyuncu_3(15) ==1
        oyuncu_3_cinko(3)=1;
    end
    if index_oyuncu_4(11) * index_oyuncu_4(12) * index_oyuncu_4(13) * index_oyuncu_4(14) * index_oyuncu_4(15) ==1
        oyuncu_4_cinko(3)=1;
    end
    if index_oyuncu_5(11) * index_oyuncu_5(12) * index_oyuncu_5(13) * index_oyuncu_5(14) * index_oyuncu_5(15) ==1
        oyuncu_5_cinko(3)=1;
    end
    
    %cinko degisimi algılama
    if(sum(oyuncu_1_cinko) ~= sum(oyuncu_1_previous_cinko))
        fprintf('Oyunun %d turu, Oyuncu 1 Cinko %d buldu \n',game_iteration,sum(oyuncu_1_cinko))
    end
    if(sum(oyuncu_2_cinko) ~= sum(oyuncu_2_previous_cinko))
        fprintf('Oyunun %d turu, Oyuncu 2 Cinko %d buldu \n',game_iteration,sum(oyuncu_2_cinko))
    end
    if(sum(oyuncu_3_cinko) ~= sum(oyuncu_3_previous_cinko))
        fprintf('Oyunun %d turu, Oyuncu 3 Cinko %d buldu  \n',game_iteration,sum(oyuncu_3_cinko))
    end
    if(sum(oyuncu_4_cinko) ~= sum(oyuncu_4_previous_cinko))
        fprintf('Oyunun %d turu, Oyuncu 4 Cinko %d buldu \n',game_iteration,sum(oyuncu_4_cinko))
    end
    if(sum(oyuncu_5_cinko) ~= sum(oyuncu_5_previous_cinko))
        fprintf('Oyunun %d turu, Oyuncu 5 Cinko %d buldu \n ',game_iteration,sum(oyuncu_5_cinko))
    end

    %oyun tamamlanmasını algılama
    if(sum(oyuncu_1_cinko) ==3)
        fprintf('Oyunun %d turu, Oyuncu 1 Tamamladı \n',game_iteration)
        oyuncu_1_cinko(4)=2;
    end
    if(sum(oyuncu_2_cinko) ==3)
        fprintf('Oyunun %d turu, Oyuncu 2 Tamamladı  \n',game_iteration)
        oyuncu_2_cinko(4)=2;
    end
    if(sum(oyuncu_3_cinko) ==3)
        fprintf('Oyunun %d turu, Oyuncu 3 Tamamladı  \n',game_iteration)
        oyuncu_3_cinko(4)=2;
    end
    if(sum(oyuncu_4_cinko) ==3)
        fprintf('Oyunun %d turu, Oyuncu 4 Tamamladı \n ',game_iteration)
        oyuncu_4_cinko(4)=2;
    end
    if(sum(oyuncu_5_cinko) ==3)
        fprintf('Oyunun %d turu, Oyuncu 5 Tamamladı  \n',game_iteration)
        oyuncu_5_cinko(4)=2;
    end
    %sonraki tur için mevcut cinko durumunu kaydet
    oyuncu_1_previous_cinko = oyuncu_1_cinko ;
    oyuncu_2_previous_cinko = oyuncu_2_cinko ;
    oyuncu_3_previous_cinko = oyuncu_3_cinko ;
    oyuncu_4_previous_cinko = oyuncu_4_cinko ;
    oyuncu_5_previous_cinko = oyuncu_5_cinko ;
    

end



