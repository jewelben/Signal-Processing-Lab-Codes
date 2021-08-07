function X = continuousFT(t,xt,a,b,w)
expr=xt*exp(-1i*w*t);
X=int(expr,t,a,b);
end