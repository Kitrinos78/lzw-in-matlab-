% Jaronchai Dilokkalayakul 2021

function recons_string = lzwdeco(codes)

table = ["a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" " "];
codes = codes +1;
code = codes(1);

out_string = table(code);
recons_string = "";

recons_string = strcat(recons_string, out_string);

for i = 2:length(codes)
    code = codes(i);
    
    if code >= length(table)
        Entry = strcat(out_string, out_string(1));
%         disp("=============")
%         disp(Entry)
%         disp(code)
        disp(length(table))
    else
        Entry = table(code);
%         disp(Entry)
    end
    
    temp = strcat(out_string, Entry(1));
    table(end+1) = temp;
%     disp(temp)
%     disp(Entry)
%     disp("======")
    out_string = Entry;
    recons_string = strcat(recons_string, out_string);
    
end

