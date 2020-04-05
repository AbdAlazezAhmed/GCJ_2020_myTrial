using LinearAlgebra
T=parse(Int16,readline())
for i = 1:T
    N = parse(Int16,readline())
    Mat = Array{Int128}(undef,0,N)
    r=0;
    c=0;
    for row = 1:N
        Mat= [Mat; [parse(Int128, x) for x in split(readline())]']
        if Mat[row,1:N] != unique(Mat[row,1:N])
            r=r+1
        end
    end
    for col = 1:N
        if Mat'[col,1:N] != unique(Mat'[col,1:N])
            c=c+1
        end
    end
    println("Case #",i,": ",sum(diag(Mat))," ",r," ",c)
end
