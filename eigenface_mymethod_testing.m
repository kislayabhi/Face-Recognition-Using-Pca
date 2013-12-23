[X y width height names]=read_images('C:\Users\kislay\Desktop\codes\face recognition using pca\att_faces');
model=eigenfaces(X,y,350);
[Xtest a b c d]=read_images('C:\Users\kislay\Desktop\codes\face recognition using pca\att_faces_test');


for i=1:10
    Y=project(model.W, X, model.mu);
    y=project(model.W, Xtest(:,i), model.mu);
    yn=repmat(y,1,size(Y,2));
    diff=(Y-yn);
    diffn=sum(diff.^2,1);
    [~,index]=min(diffn);
     figure(i);
    
    imshow(mat2gray(reshape(X(:,index)',112,92)));
    title(sprintf('original image #%i',i));
    
    figure(10+i);
    
    imshow(mat2gray(reshape(Xtest(:,i)',112,92)));
    title(sprintf('test image #%i',i));
end