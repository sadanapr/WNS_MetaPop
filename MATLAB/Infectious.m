function dNdt = Infectious(t, S) 
     dNdt =  b*S*I - b_delta*S_delta*I - rho*I ;
end