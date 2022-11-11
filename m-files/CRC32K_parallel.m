% Generation CRC32 Koopman (Parallel method)
data_MSB = [0 1 0 1 0 1 0 1 1 0 0 0 0 0 0 1];       % Input dataata LSB first 
c = zeros(1,32);                                    % Initial conditions

for i = 0 : 1: (length(data_MSB)/8)-1
    data = flip(data_MSB((i*8+1:i*8+8)));
    CRC32_parallel(1) = xor(data(7+1), xor(data(6+1), xor(data(3+1), xor(data(2+1), xor(data(0+1), xor(c(24+1), xor(c(26+1), xor(c(27+1), xor(c(30+1), c(31+1))))))))));
    CRC32_parallel(2) = xor(data(6+1), xor(data(4+1), xor(data(2+1), xor(data(1+1), xor(data(0+1), xor(c(24+1), xor(c(25+1), xor(c(26+1), xor(c(28+1), c(30+1))))))))));
    CRC32_parallel(3) = xor(data(6+1), xor(data(5+1), xor(data(1+1), xor(data(0+1), xor(c(24+1), xor(c(25+1), xor(c(29+1), c(30+1))))))));
    CRC32_parallel(4) = xor(data(7+1), xor(data(6+1), xor(data(2+1), xor(data(1+1), xor(c(25+1), xor(c(26+1), xor(c(30+1), c(31+1))))))));
    CRC32_parallel(5) = xor(data(6+1), xor(data(0+1), xor(c(24+1), c(30+1))));
    CRC32_parallel(6) = xor(data(7+1), xor(data(1+1), xor(c(25+1), c(31+1))));
    CRC32_parallel(7) = xor(data(7+1), xor(data(6+1), xor(data(3+1), xor(data(0+1), xor(c(24+1), xor(c(27+1), xor(c(30+1), c(31+1))))))));
    CRC32_parallel(8) = xor(data(6+1), xor(data(4+1), xor(data(3+1), xor(data(2+1), xor(data(1+1), xor(data(0+1), xor(c(24+1), xor(c(25+1), xor(c(26+1), xor(c(27+1), xor(c(28+1), c(30+1))))))))))));
    CRC32_parallel(9) = xor(data(7+1), xor(data(5+1), xor(data(4+1), xor(data(3+1), xor(data(2+1), xor(data(1+1), xor(c(0+1), xor(c(25+1), xor(c(26+1), xor(c(27+1), xor(c(28+1), xor(c(29+1), c(31+1)))))))))))));
    CRC32_parallel(10) = xor(data(6+1), xor(data(5+1), xor(data(4+1), xor(data(3+1), xor(data(2+1), xor(c(1+1), xor(c(26+1), xor(c(27+1), xor(c(28+1), xor(c(29+1), c(30+1)))))))))));
    CRC32_parallel(11) = xor(data(5+1), xor(data(4+1), xor(data(2+1), xor(data(0+1), xor(c(2+1), xor(c(24+1), xor(c(26+1), xor(c(28+1), c(29+1)))))))));
    CRC32_parallel(12) = xor(data(7+1), xor(data(5+1), xor(data(2+1), xor(data(1+1), xor(data(0+1), xor(c(3+1), xor(c(24+1), xor(c(25+1), xor(c(26+1), xor(c(29+1), c(31+1)))))))))));
    CRC32_parallel(13) = xor(data(6+1), xor(data(3+1), xor(data(2+1), xor(data(1+1), xor(c(4+1), xor(c(25+1), xor(c(26+1), xor(c(27+1), c(30+1)))))))));
    CRC32_parallel(14) = xor(data(7+1), xor(data(4+1), xor(data(3+1), xor(data(2+1), xor(c(5+1), xor(c(26+1), xor(c(27+1), xor(c(28+1), c(31+1)))))))));
    CRC32_parallel(15) = xor(data(5+1), xor(data(4+1), xor(data(3+1), xor(c(6+1), xor(c(27+1), xor(c(28+1), c(29+1)))))));
    CRC32_parallel(16) = xor(data(7+1), xor(data(5+1), xor(data(4+1), xor(data(3+1), xor(data(2+1), xor(data(0+1), xor(c(7+1), xor(c(24+1), xor(c(26+1), xor(c(27+1), xor(c(28+1), xor(c(29+1), c(31+1)))))))))))));
    CRC32_parallel(17) = xor(data(7+1), xor(data(5+1), xor(data(4+1), xor(data(2+1), xor(data(1+1), xor(data(0+1), xor(c(8+1), xor(c(24+1), xor(c(25+1), xor(c(26+1), xor(c(28+1), xor(c(29+1), c(31+1)))))))))))));
    CRC32_parallel(18) = xor(data(7+1), xor(data(5+1), xor(data(1+1), xor(data(0+1), xor(c(9+1), xor(c(24+1), xor(c(25+1), xor(c(29+1), c(31+1)))))))));
    CRC32_parallel(19) = xor(data(6+1), xor(data(2+1), xor(data(1+1), xor(c(10+1), xor(c(25+1), xor(c(26+1), c(30+1)))))));
    CRC32_parallel(20) = xor(data(6+1), xor(data(0+1), xor(c(11+1), xor(c(24+1), c(30+1)))));
    CRC32_parallel(21) = xor(data(6+1), xor(data(3+1), xor(data(2+1), xor(data(1+1), xor(data(0+1), xor(c(12+1), xor(c(24+1), xor(c(25+1), xor(c(26+1), xor(c(27+1), c(30+1)))))))))));
    CRC32_parallel(22) = xor(data(7+1), xor(data(4+1), xor(data(3+1), xor(data(2+1), xor(data(1+1), xor(c(13+1), xor(c(25+1), xor(c(26+1), xor(c(27+1), xor(c(28+1), c(31+1)))))))))));
    CRC32_parallel(23) = xor(data(5+1), xor(data(4+1), xor(data(3+1), xor(data(2+1), xor(c(14+1), xor(c(26+1), xor(c(27+1), xor(c(28+1), c(29+1)))))))));
    CRC32_parallel(24) = xor(data(6+1), xor(data(5+1), xor(data(4+1), xor(data(3+1), xor(c(15+1), xor(c(27+1), xor(c(28+1), xor(c(29+1), c(30+1)))))))));
    CRC32_parallel(25) = xor(data(7+1), xor(data(6+1), xor(data(5+1), xor(data(4+1), xor(c(16+1), xor(c(28+1), xor(c(29+1), xor(c(30+1), c(31+1)))))))));
    CRC32_parallel(26) = xor(data(7+1), xor(data(6+1), xor(data(5+1), xor(c(17+1), xor(c(29+1), xor(c(30+1), c(31+1)))))));
    CRC32_parallel(27) = xor(data(3+1), xor(data(2+1), xor(data(0+1), xor(c(18+1), xor(c(24+1), xor(c(26+1), c(27+1)))))));
    CRC32_parallel(28) = xor(data(4+1), xor(data(3+1), xor(data(1+1), xor(c(19+1), xor(c(25+1), xor(c(27+1), c(28+1)))))));
    CRC32_parallel(29) = xor(data(7+1), xor(data(6+1), xor(data(5+1), xor(data(4+1), xor(data(3+1), xor(data(0+1), xor(c(20+1), xor(c(24+1), xor(c(27+1), xor(c(28+1), xor(c(29+1), xor(c(30+1), c(31+1)))))))))))));
    CRC32_parallel(30) = xor(data(5+1), xor(data(4+1), xor(data(3+1), xor(data(2+1), xor(data(1+1), xor(data(0+1), xor(c(21+1), xor(c(24+1), xor(c(25+1), xor(c(26+1), xor(c(27+1), xor(c(28+1), c(29+1)))))))))))));
    CRC32_parallel(31) = xor(data(7+1), xor(data(5+1), xor(data(4+1), xor(data(1+1), xor(data(0+1), xor(c(22+1), xor(c(24+1), xor(c(25+1), xor(c(28+1), xor(c(29+1), c(31+1)))))))))));
    CRC32_parallel(32) = xor(data(6+1), xor(data(5+1), xor(data(2+1), xor(data(1+1), xor(c(23+1), xor(c(25+1), xor(c(26+1), xor(c(29+1), c(30+1)))))))));
    c = CRC32_parallel;

end

CRC32_K_parallel_hex   = dec2hex(bi2de(CRC32_parallel));

