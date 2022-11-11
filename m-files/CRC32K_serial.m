% Generation CRC32 Koopman (Serial method)
data = [0 1 0 1 0 1 0 1 1 0 0 0 0 0 0 1 zeros(1,32)];   % Input data
CRC32_serial = zeros(1,32);                             % Initial conditions
Enc_data = zeros(1,length(data));
   
    for j = 1:length(data)
       if (j < length(data) - 31) 
           feedback_CRC = xor(CRC32_serial(32),data(j));
       else
           feedback_CRC = 0;
       end
       CRC32_serial(32)  = CRC32_serial(31);
       CRC32_serial(31)  = xor(CRC32_serial(30),feedback_CRC);
       CRC32_serial(30)  = xor(CRC32_serial(29),feedback_CRC);
       CRC32_serial(29)  = xor(CRC32_serial(28),feedback_CRC);
       CRC32_serial(28)  = CRC32_serial(27);
       CRC32_serial(27)  = xor(CRC32_serial(26),feedback_CRC); 
       CRC32_serial(26)  = CRC32_serial(25);
       CRC32_serial(25)  = CRC32_serial(24);
       CRC32_serial(24)  = CRC32_serial(23);
       CRC32_serial(23)  = CRC32_serial(22);
       CRC32_serial(22)  = CRC32_serial(21);
       CRC32_serial(21)  = xor(CRC32_serial(20),feedback_CRC); 
       CRC32_serial(20)  = xor(CRC32_serial(19),feedback_CRC); 
       CRC32_serial(19)  = CRC32_serial(18);
       CRC32_serial(18)  = xor(CRC32_serial(17),feedback_CRC); 
       CRC32_serial(17)  = xor(CRC32_serial(16),feedback_CRC); 
       CRC32_serial(16)  = xor(CRC32_serial(15),feedback_CRC); 
       CRC32_serial(15)  = CRC32_serial(14);
       CRC32_serial(14)  = CRC32_serial(13);
       CRC32_serial(13)  = CRC32_serial(12);
       CRC32_serial(12)  = xor(CRC32_serial(11),feedback_CRC); 
       CRC32_serial(11)  = xor(CRC32_serial(10),feedback_CRC); 
       CRC32_serial(10)  = CRC32_serial(9);
       CRC32_serial(9)   = CRC32_serial(8);
       CRC32_serial(8)   = xor(CRC32_serial(7),feedback_CRC); 
       CRC32_serial(7)   = xor(CRC32_serial(6),feedback_CRC); 
       CRC32_serial(6)   = CRC32_serial(5);
       CRC32_serial(5)   = xor(CRC32_serial(4),feedback_CRC); 
       CRC32_serial(4)   = CRC32_serial(3);
       CRC32_serial(3)   = xor(CRC32_serial(2),feedback_CRC); 
       CRC32_serial(2)   = xor(CRC32_serial(1),feedback_CRC); 
       CRC32_serial(1)   = feedback_CRC;
    
       Enc_data(j) = CRC32_serial(32);
   
   end

CRC_serial_bit = Enc_data(length(data)-32:length(data)-1);
CRC32_serial_hex = dec2hex(bi2de(fliplr(CRC_serial_bit)));


