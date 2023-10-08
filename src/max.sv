parameter bitwidth=32;
function [bitwidth-1:0] max;
input signed [bitwidth-1:0] a,b,c,d;
begin
    max = a;
    if (max<b) max = b;
    if (max<c) max = c;
    if (max<d) max = d;
end
endfunction