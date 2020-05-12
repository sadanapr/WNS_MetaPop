function dNdt = Model1(t, N, b, rho)
    dNdt = zeros(3, 1) ;
    dNdt(1) =  0 - b*N(1)*N(2) ;
    dNdt(2) =  b*N(1)*N(2) - rho*N(2) ;
    dNdt(3) =  rho*N(2) ;
end