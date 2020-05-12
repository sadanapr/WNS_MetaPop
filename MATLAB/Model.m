function dNdt = Model(t, N, mu, c)
    dNdt = zeros(24, 1) ;
    dNdt(1) =  -c*(N(3)+N(4)+N(5)+N(6))*N(1) + b*(N(2)+N(4)+N(5)+N(6)) - g*N(1) ; %P1 Susc Newborns
    dNdt(2) =  g*N(1) - c*(N(3)+N(4)+N(5)+N(6))*N(2) - mu*N(2) + N(8)*mu/3 ; %P1 Susc Adults
    dNdt(3) =  c*(N(3)+N(4)+N(5)+N(6))*N(1) - g*N(3) ; %P1 Inf Newborns
    dNdt(4) =  g*N(3) + c*(N(3)+N(4)+N(5)+N(6))*N(2) - g*N(4) - mu*N(4) + N(10)*mu/3 ; %P1 Inf adults
    dNdt(5) =  g*N(4) - m_1*N(5) - (1-m_1)*N(5) - mu*N(5) + N(11)*mu/3 ; %P1 Inf adults for 1yr
    dNdt(6) =  (1-m_1)*N(5) - m_2*N(6) - mu*N(6) + N(12)*mu/3 ; %P1 Inf adult for 2+
    dNdt(7) =  -c*(N(9)+N(10)+N(11)+N(12))*N(7) + b*(N(8)+N(10)+N(11)+N(12)) - g*N(7) ; %P2 Susc Newborns
    dNdt(8) =  g*N(7) - c*(N(9)+N(10)+N(11)+N(12))*N(8) + mu(N(2)-N(8) + N(14)+ N(20)) ; %P2 Susc Adults
    dNdt(9) =  c*(N(9)+N(10)+N(11)+N(12))*N(7) - g*N(7) ; %P2 Inf Newborns
    dNdt(10) =  g*N(9) + c*(N(9)+N(10)+N(11)+N(12))*N(8) - g*N(10) - mu*(N(4)- N(10) + N(16) + N(22)) ; %P2 Inf adults
    dNdt(11) =  g*N(10) - m_1*N(11) - (1-m_1)*N(11) - mu*(N(5) - N(11) + N(17) + N(23)) ; %P2 Inf adults for 1yr
    dNdt(12) =  (1-m_1)*N(11) - m_2*N(12) - mu*(N(6) - N(12)+ N(18) + N(24)) ; %P2 Inf adult for 2+
    dNdt(13) =  -c*(N(15)+N(16)+N(17)+N(18))*N(13) + b*(N(14)+N(16)+N(17)+N(18)) - g*N(13) ; %P3 Susc Newborns
    dNdt(14) =  g*N(13) - c*(N(15)+N(16)+N(17)+N(18))*N(14) - mu*N(14) + N(8)*mu/3 ; %P3 Susc Adults
    dNdt(15) =  c*(N(15)+N(16)+N(17)+N(18))*N(13) - g*N(15) ; %P3 Inf Newborns
    dNdt(16) =  g*N(15) + c*(N(15)+N(16)+N(17)+N(18))*N(14) - g*N(16) - mu*N(16) + N(10)*mu/3 ; %P3 Inf adults
    dNdt(17) =  g*N(16) - m_1*N(17) - (1-m_1)*N(17) - mu*N(17) + N(11)*mu/3 ; %P3 Inf adults for 1yr
    dNdt(18) =  (1-m_1)*N(17) - m_2*N(18) - mu*N(18) + N(12)*mu/3 ; %P3 Inf adult for 2+
    dNdt(19) =  -c*(N(21)+N(22)+N(23)+N(24))*N(19) + b*(N(20)+N(22)+N(23)+N(24)) - g*N(19) ; %P4 Susc Newborns
    dNdt(20) =  g*N(19) - c*(N(21)+N(22)+N(23)+N(24))*N(20) - mu*N(20) + N(8)*mu/3 ; %P4 Susc Adults
    dNdt(21) =  c*(N(21)+N(22)+N(23)+N(24))*N(21) - g*N(21) ; %P4 Inf Newborns
    dNdt(22) =  g*N(21) + c*(N(21)+N(22)+N(23)+N(24))*N(20) - g*N(22) mu*N(22) + N(10)*mu/3 ; %P4 Inf adults
    dNdt(23) =  g*N(22) - m_1*N(23) - (1-m_1)*N(23) - mu*N(23) + N(11)*mu/3 ; %P3 Inf adults for 1yr
    dNdt(18) =  (1-m_1)*N(23) - m_2*N(24) - mu*N(24) + N(12)*mu/3 ; %P3 Inf adult for 2+
    
end