for i = 1:30
    q = gss(@part6, 1, 199, i);
    X = ["When i is", i, ", then q is", q];
    disp(X);
end