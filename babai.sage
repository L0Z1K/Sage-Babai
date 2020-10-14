def babai(A, w):
    A = A.LLL(delta=0.75)
    G = A.gram_schmidt()[0]
    t = w
    for i in reversed(range(A.nrows())):
        c = ((t * G[i]) / (G[i] * G[i])).round()
        t -= A[i] * c
    return w - t

A = Matrix([[1,2],[2,-1]])
w = vector([2,0])
print(babai(A, w))