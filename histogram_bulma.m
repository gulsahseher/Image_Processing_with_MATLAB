function [histog]=histogram_bulma(I)

[w,h]=size(I);
histog=zeros(1,256);

for i=1:w
    for j=1:h
        histog(I(i,j)+1)=histog(I(i,j)+1)+1;
    end
end

end