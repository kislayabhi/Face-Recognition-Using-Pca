[X y width height names]=read_images('C:\Users\kislay\Desktop\codes\face recognition using pca\att_faces');
model=eigenfaces(X,y,350);


% add the path for the test image 
[Xtest a b c d]=read_images('C:\Users\kislay\Desktop\codes\face recognition using pca\att_faces_test');


for i=1:10
    C=eigenfaces_predict(model, Xtest(:,i), 50);
    b=find(y==C);
    figure(i);
    imshow(mat2gray(reshape(X(:,b(1,1))',112,92)));
    %title(sprintf('original image #%i',i));
    figure(10+i);
    imshow(mat2gray(reshape(Xtest(:,i)',112,92)));
    %title(sprintf('test image #%i',i));
end