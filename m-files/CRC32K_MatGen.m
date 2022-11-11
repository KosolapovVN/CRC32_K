% Generation CRC32 Koopman (Using CRC Generator)
%{
    Polynom:                0x741B8CD7 
    InitialConditions:      0x00000000
    FinalXOR:               0x00000000
    DirectMethod:           false
    ReflectInputBytes:      false
    ReflectChecksums:       false
%} 
crcGen      = comm.CRCGenerator('z^32 + z^30 + z^29 + z^28 + z^26 + z^20 + z^19 + z^17 + z^16 + z^15 + z^11 + z^10 + z^7 + z^6 + z^4 + z^2 + z + 1');
data        = [0 1 0 1 0 1 0 1 1 0 0 0 0 0 0 1]';               % Input data                         
encData     = crcGen(data);                                     % Encoded data (input data + CRC32)
CRC32_K     = encData(length(data)+1:length(encData));          % Only CRC32 
CRC32_hex   = dec2hex(bi2de(fliplr(CRC32_K')));                 % CRC32 in hex
