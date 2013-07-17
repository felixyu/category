function  color_matrix_with_names( SS, X_names, Y_names, map_str )

if nargin < 4
    map_str = 'jet';
end
imagesc(SS);
axis image 
X_length = size(SS,2);
Y_length = size(SS,1);

colorbar;
set(gca,'XTick',[])
set(gca,'YTick',[])

if isempty(X_names)
    for i = 1:X_length
        X_names{i} = num2str(i);
    end
end

if isempty(Y_names)
    for i = 1:Y_length
        Y_names{i} = num2str(i);
    end
end



ypos=Y_length+1;
for xpos=1:X_length
    X_names{xpos} = strrep(X_names{xpos}, '_', ' ');
    text(xpos,ypos,X_names{xpos},'Rotation',90,  'horizontalAlignment',  'right');
end

xpos=0.5;
for ypos=1:Y_length;
    Y_names{ypos} = strrep(Y_names{ypos}, '_', ' ');
    text(xpos,ypos,Y_names{ypos}, 'horizontalAlignment',  'right');
end

end

