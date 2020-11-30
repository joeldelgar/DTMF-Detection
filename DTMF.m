function [A1, A2, f1, f2] = DTMF(x,N)

L= length(x);
fs=8000;
if N<=L
    N=L;
    X=fft(x,N);
    [val1,pos1] = max(abs(X));
    A1= (val1*2)/L;
    f1= fs/N*pos1;
    X(pos1)=0;
    [val2,pos2] = max(abs(X(1:N/2)));
    A2= (val2*2)/L;
    f2= fs/N*pos2;
else 
    X=fft(x,N);
    [val1,pos1] = max(abs(X));
    A1= (val1*2)/L;
    f1= fs/N*pos1;
    X(pos1)=0;
    [val2,pos2] = max(abs(X(1:N/2)));
    A2= (val2*2)/L;
    f2= fs/N*pos2;
end

