--*******************************************************************************************
--
--                                                                 pdm
--                                                                 ===
-- File Name:        pdm.vhd
-- Project:          Endat Reduced
-- Modul Name:       ---
-- Author:           Frank Seiler/ MAZeT GmbH
--                   MAZeT GmbH
--                   Goeschwitzer Strasse 32        
--                   D-07745 Jena
--
-- Specification:    ---
--                                                             
-- Synthesis:        (Tested with Synoplfy 8.6.2) 
--                              
-- Script:           ENDAT22.prj
--                               
-- Simulation:       Cadence NCVHDL V3.41, V5.1
-- 
-- Function:         EnDat Reduced
--                   Module for propagation delay measurement               
-- History: F.Seiler xx.06.2008 Initial Version 
--          F.Seiler 17.09.2008 some signals renamed 
--*******************************************************************************************
library ieee; use ieee.std_logic_1164.all; use ieee.std_logic_unsigned.all; USE ieee.std_logic_arith.CONV_STD_LOGIC_VECTOR; entity pdm is generic ( s8012194BD35F0878CACF167A77EE7A04F42ED698 : integer:= 10;  s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95 : integer
:= 7;   s4A8616F7DBB06E84D521DFE24490E8ADB037CBB1 : boolean:= false;  s745F184CD6754435326632E8F885833C3FD28CAA : integer:= 2);  port ( s82C78E3CD667612DE97ED7C5FA8365F21045093F : in std_logic;  sF1FC47B36F2DA843714A618883F345968A471A76 : in std_logic;   
sA73098C7B13AE4EE2D18DD1A3C28A605F0315F7B : in std_logic;  s90196555A8BFC1A5EE5D4925FBA2AF598F9D76F9: in std_logic_vector(1 downto 0);  pdm : in std_logic;  sA871AC5299DD9A2B5922B93C415099F5B17A2CAA: in std_logic_vector( 3 downto 0);  s3DE9704ED5E8C46005ACD085579D848AC14D5B18
 : in std_logic;  s3878B21E042F1AD8CD97DB6E7D00908A99649D03 : in std_logic;  s134B4B78A794B9AC71D2041279723343FA183008 : in std_logic;  s264475A303AC7031FBC8591205A50743DAEAD9CA : in std_logic;  s125623D1F098599393E5DE6A762EFFC9DACED467 : out std_logic;  
s3943BBC49DABABC540DBFCA8F53E255877F4D8F1 : out std_logic_vector(s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95 -1 downto 0);  sC95BB2A3A95288115289D986565E400E04F2B5A0 : out std_logic;  s79CBDE1F1AE76DE1CEAD5B67EFDA2C6953987F5C: out std_logic;  sEA5E54196582D991021F5AB19DAC58C70947FB22
: out std_logic_vector(s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95 -1 downto 0); s1B88525B5C44F4D86E63397D61F66E7B1225355E : out std_logic_vector(63 downto 0);   s11183BFF0C2D855AEA5F48EC192129844E5C157D: in integer;  s940FAE140F86D7AAE5446A4FA8C953A8EA6B637D
 : in integer  ); end pdm; Architecture s75BE5DEF24CA4A61B9676CCF1CC90EBA505DC89E of pdm is signal s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D, s964F9767CF9447A4FB53DE447DFE991AC199EB51: std_logic_vector(s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95 -1 downto 0); 
signal s942710CE570FD5D8D00C5AF6F8FBFEFF68FFCD1F: std_logic; signal s5243CC589BD6313F647419389A5083A44EC8D577: std_logic; signal sCC8020D0EBA88F773091A2A3E94B14E144249B6A: std_logic;  signal s31A6277459086B765A90DECF25E136CE58E69A97: std_logic_vector(s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95
 -1 downto 0); signal s50CDB5B0A7EE14672FDB8161A7AC4E12090DB8A8: std_logic; signal sF80D9D5EF0F31B149A432E861C4C938066BB8EF2, sCCE810FCF863FB916F3A47E65EAD1451DBC5B9A6: std_logic_vector(s8012194BD35F0878CACF167A77EE7A04F42ED698 -1 downto 0); signal s13E445FDCE5D1278E0C5B070600FDBBBA6ECFD3D
: std_logic_vector(s8012194BD35F0878CACF167A77EE7A04F42ED698 -1 downto 0); signal sD530080C120946AE2100CF90D970371ECC9049B4: std_logic; signal s73124B1BDDFA8E0A4B7A0970B215A0C89FD997AA: std_logic; signal sB44DEE37B171816D320FC77B5ECF3194D098DF0D, s9BA9D798884BE554ADC319234D23477FD39112DD
: std_logic_vector(s8012194BD35F0878CACF167A77EE7A04F42ED698 -1 downto 0); signal s2CC7E6B32A42EB2951895F483E564F9045F12F45, sC461A8D6DD45FBC84212EBE9591974B5304AB611 : std_logic;  signal sA9478EEAEC61D4A551FC24F4D9AD9FC57572A9EB: integer;  begin  process
(s82C78E3CD667612DE97ED7C5FA8365F21045093F, s264475A303AC7031FBC8591205A50743DAEAD9CA, pdm, s5243CC589BD6313F647419389A5083A44EC8D577, s3DE9704ED5E8C46005ACD085579D848AC14D5B18, s942710CE570FD5D8D00C5AF6F8FBFEFF68FFCD1F) begin if rising_edge(s82C78E3CD667612DE97ED7C5FA8365F21045093F
) then if sF1FC47B36F2DA843714A618883F345968A471A76 = '0' then s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D <= (others=>'0'); s964F9767CF9447A4FB53DE447DFE991AC199EB51 <= (others=>'0'); s5243CC589BD6313F647419389A5083A44EC8D577 <= '0'; sCC8020D0EBA88F773091A2A3E94B14E144249B6A
 <= '0'; sD530080C120946AE2100CF90D970371ECC9049B4 <= '0'; else if pdm = '0' then  s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D <= (others=>'0'); s964F9767CF9447A4FB53DE447DFE991AC199EB51 <= (others=>'0'); s5243CC589BD6313F647419389A5083A44EC8D577 <= '0'; sCC8020D0EBA88F773091A2A3E94B14E144249B6A
 <= '0'; sD530080C120946AE2100CF90D970371ECC9049B4 <= '0'; end if; case sA871AC5299DD9A2B5922B93C415099F5B17A2CAA is when "0101" => if pdm = '1' and s5243CC589BD6313F647419389A5083A44EC8D577 = '0' then  if s3DE9704ED5E8C46005ACD085579D848AC14D5B18 = '1' and
 s3878B21E042F1AD8CD97DB6E7D00908A99649D03 = '0' then s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D <= (others=>'0'); elsif s264475A303AC7031FBC8591205A50743DAEAD9CA = '0' then s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D <= s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D
 + '1'; elsif s264475A303AC7031FBC8591205A50743DAEAD9CA = '1' then s964F9767CF9447A4FB53DE447DFE991AC199EB51 <= s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D; s5243CC589BD6313F647419389A5083A44EC8D577 <= '1'; sD530080C120946AE2100CF90D970371ECC9049B4 <= '1'; 
 end if; elsif pdm = '1' and s5243CC589BD6313F647419389A5083A44EC8D577 = '1' then  if s264475A303AC7031FBC8591205A50743DAEAD9CA = '0' and s942710CE570FD5D8D00C5AF6F8FBFEFF68FFCD1F /= '1' then s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D <= s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D
 - '1'; else sD530080C120946AE2100CF90D970371ECC9049B4 <= '1'; end if; elsif pdm = '0' then sD530080C120946AE2100CF90D970371ECC9049B4 <= '1'; end if; when "0000" => s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D <= s964F9767CF9447A4FB53DE447DFE991AC199EB51; sD530080C120946AE2100CF90D970371ECC9049B4
 <= '0'; if s5243CC589BD6313F647419389A5083A44EC8D577 = '1' then sCC8020D0EBA88F773091A2A3E94B14E144249B6A <= '1'; end if; when others => s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D <= s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D; end case; end if; end if; end
 process; s942710CE570FD5D8D00C5AF6F8FBFEFF68FFCD1F <= '1' when s16CE610698F593D2BCD25AAA30AC20FCEFA7C58D = CONV_STD_LOGIC_VECTOR(1, s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95) else '0'; s3943BBC49DABABC540DBFCA8F53E255877F4D8F1 <= s964F9767CF9447A4FB53DE447DFE991AC199EB51
; s125623D1F098599393E5DE6A762EFFC9DACED467 <= s5243CC589BD6313F647419389A5083A44EC8D577;  process(s82C78E3CD667612DE97ED7C5FA8365F21045093F) begin if rising_edge(s82C78E3CD667612DE97ED7C5FA8365F21045093F) then if sF1FC47B36F2DA843714A618883F345968A471A76
 = '0' then sF80D9D5EF0F31B149A432E861C4C938066BB8EF2 <= (others=>'0'); else case sA871AC5299DD9A2B5922B93C415099F5B17A2CAA is when "0000" => sF80D9D5EF0F31B149A432E861C4C938066BB8EF2 <= (others=>'0'); when "0101" | "1000" | "1001" => if s3DE9704ED5E8C46005ACD085579D848AC14D5B18
 = '1' and s3878B21E042F1AD8CD97DB6E7D00908A99649D03 = '0' then sF80D9D5EF0F31B149A432E861C4C938066BB8EF2 <= sF80D9D5EF0F31B149A432E861C4C938066BB8EF2 + '1'; end if; when others => sF80D9D5EF0F31B149A432E861C4C938066BB8EF2 <= sF80D9D5EF0F31B149A432E861C4C938066BB8EF2
; end case; end if; end if; end process;  process(s82C78E3CD667612DE97ED7C5FA8365F21045093F) begin if rising_edge(s82C78E3CD667612DE97ED7C5FA8365F21045093F) then if sF1FC47B36F2DA843714A618883F345968A471A76 = '0' then s31A6277459086B765A90DECF25E136CE58E69A97
 <= (others=>'0'); else if sD530080C120946AE2100CF90D970371ECC9049B4 = '1' then case sA871AC5299DD9A2B5922B93C415099F5B17A2CAA is when "0000" => s31A6277459086B765A90DECF25E136CE58E69A97 <= (others=>'0'); when others => if s31A6277459086B765A90DECF25E136CE58E69A97
 = CONV_STD_LOGIC_VECTOR(0, s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95) then s31A6277459086B765A90DECF25E136CE58E69A97 <= CONV_STD_LOGIC_VECTOR(s940FAE140F86D7AAE5446A4FA8C953A8EA6B637D, s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95);  else s31A6277459086B765A90DECF25E136CE58E69A97
 <= s31A6277459086B765A90DECF25E136CE58E69A97 - '1'; end if; end case; end if; end if; end if; end process; sEA5E54196582D991021F5AB19DAC58C70947FB22 <= s31A6277459086B765A90DECF25E136CE58E69A97; s50CDB5B0A7EE14672FDB8161A7AC4E12090DB8A8 <= '1' when s31A6277459086B765A90DECF25E136CE58E69A97
 = CONV_STD_LOGIC_VECTOR (0, s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95) else '0';   process(s82C78E3CD667612DE97ED7C5FA8365F21045093F) begin if rising_edge(s82C78E3CD667612DE97ED7C5FA8365F21045093F) then if sF1FC47B36F2DA843714A618883F345968A471A76 = '0' 
then s13E445FDCE5D1278E0C5B070600FDBBBA6ECFD3D <= (others=>'0'); sCCE810FCF863FB916F3A47E65EAD1451DBC5B9A6 <= (others=>'0'); else if sD530080C120946AE2100CF90D970371ECC9049B4 = '1' then case sA871AC5299DD9A2B5922B93C415099F5B17A2CAA is when "0000" => s13E445FDCE5D1278E0C5B070600FDBBBA6ECFD3D
 <= (others=>'0'); when "0101" | "1000" | "1001" =>  if s50CDB5B0A7EE14672FDB8161A7AC4E12090DB8A8 = '1' and s73124B1BDDFA8E0A4B7A0970B215A0C89FD997AA = '0' then s13E445FDCE5D1278E0C5B070600FDBBBA6ECFD3D <= s13E445FDCE5D1278E0C5B070600FDBBBA6ECFD3D + '1'; 
 end if;  if s134B4B78A794B9AC71D2041279723343FA183008 = '0' then sCCE810FCF863FB916F3A47E65EAD1451DBC5B9A6 <= s13E445FDCE5D1278E0C5B070600FDBBBA6ECFD3D; end if; when others => s13E445FDCE5D1278E0C5B070600FDBBBA6ECFD3D <= s13E445FDCE5D1278E0C5B070600FDBBBA6ECFD3D
; sCCE810FCF863FB916F3A47E65EAD1451DBC5B9A6 <= (others=>'0'); end case; end if; end if; end if; end process;  process(s82C78E3CD667612DE97ED7C5FA8365F21045093F) begin if rising_edge(s82C78E3CD667612DE97ED7C5FA8365F21045093F) then if sF1FC47B36F2DA843714A618883F345968A471A76
 = '0' then s73124B1BDDFA8E0A4B7A0970B215A0C89FD997AA <= '1'; else if sD530080C120946AE2100CF90D970371ECC9049B4 = '1' then case sA871AC5299DD9A2B5922B93C415099F5B17A2CAA is when "0101" | "1000" | "1001" | "1111" => if s50CDB5B0A7EE14672FDB8161A7AC4E12090DB8A8
 = '1' then s73124B1BDDFA8E0A4B7A0970B215A0C89FD997AA <= not s73124B1BDDFA8E0A4B7A0970B215A0C89FD997AA; end if; when others => s73124B1BDDFA8E0A4B7A0970B215A0C89FD997AA <= s73124B1BDDFA8E0A4B7A0970B215A0C89FD997AA; end case; elsif sA871AC5299DD9A2B5922B93C415099F5B17A2CAA
 = "0001" then s73124B1BDDFA8E0A4B7A0970B215A0C89FD997AA <= '1'; end if; end if; end if; end process; s79CBDE1F1AE76DE1CEAD5B67EFDA2C6953987F5C <= s73124B1BDDFA8E0A4B7A0970B215A0C89FD997AA; sA9478EEAEC61D4A551FC24F4D9AD9FC57572A9EB <= s11183BFF0C2D855AEA5F48EC192129844E5C157D
 + 60 when s90196555A8BFC1A5EE5D4925FBA2AF598F9D76F9 = "10" else s11183BFF0C2D855AEA5F48EC192129844E5C157D + 30 when s90196555A8BFC1A5EE5D4925FBA2AF598F9D76F9 = "01" else s11183BFF0C2D855AEA5F48EC192129844E5C157D; s9BA9D798884BE554ADC319234D23477FD39112DD
 <= CONV_STD_LOGIC_VECTOR(sA9478EEAEC61D4A551FC24F4D9AD9FC57572A9EB, s8012194BD35F0878CACF167A77EE7A04F42ED698); sB44DEE37B171816D320FC77B5ECF3194D098DF0D <= (sCCE810FCF863FB916F3A47E65EAD1451DBC5B9A6 + s9BA9D798884BE554ADC319234D23477FD39112DD + 1) when 
sA73098C7B13AE4EE2D18DD1A3C28A605F0315F7B = '0' else (sCCE810FCF863FB916F3A47E65EAD1451DBC5B9A6 + s9BA9D798884BE554ADC319234D23477FD39112DD + "10"); s2CC7E6B32A42EB2951895F483E564F9045F12F45 <= '1' when sCC8020D0EBA88F773091A2A3E94B14E144249B6A ='1' and sF80D9D5EF0F31B149A432E861C4C938066BB8EF2
 = sB44DEE37B171816D320FC77B5ECF3194D098DF0D else '0'; process(s82C78E3CD667612DE97ED7C5FA8365F21045093F) begin if rising_edge(s82C78E3CD667612DE97ED7C5FA8365F21045093F) then if sF1FC47B36F2DA843714A618883F345968A471A76 = '0' then sC461A8D6DD45FBC84212EBE9591974B5304AB611
 <= '0'; else if sCC8020D0EBA88F773091A2A3E94B14E144249B6A = '1' then if sD530080C120946AE2100CF90D970371ECC9049B4 = '1' then if s3DE9704ED5E8C46005ACD085579D848AC14D5B18 = '1' and s3878B21E042F1AD8CD97DB6E7D00908A99649D03 = '0' then if s2CC7E6B32A42EB2951895F483E564F9045F12F45
 = '1' then sC461A8D6DD45FBC84212EBE9591974B5304AB611 <= '1'; end if; end if; else sC461A8D6DD45FBC84212EBE9591974B5304AB611 <= '0'; end if; end if; end if; end if; end process; sC95BB2A3A95288115289D986565E400E04F2B5A0 <= sC461A8D6DD45FBC84212EBE9591974B5304AB611
;    end s75BE5DEF24CA4A61B9676CCF1CC90EBA505DC89E; 