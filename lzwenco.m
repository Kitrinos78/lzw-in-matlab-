% Jaronchai Dilokkalayakul 2021

function codes = lzwenco(inp_sym)

table = ["a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" " "];
codes = [];

inp_string = inp_sym(1);

for i = 2:length(inp_sym)
    symb = inp_sym(i);
    temp = strcat(inp_string, symb);
    
    if any(strcmp(table, temp))
        inp_string = temp;
    else      
        for j = 1:length(table)
            if inp_string == table(j)
                codes(end+1) = j-1;
            end
        end
        table(end+1) = temp;
        inp_string = symb;
    end 
    
end

if inp_string ~= ""
    for j = 1:length(table)
        if inp_string == table(j)
            codes(end+1) = j-1;
        end
    end
end