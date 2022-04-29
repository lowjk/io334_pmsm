library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  use work.ENDAT_pkg.all;

entity ENDAT is
  port
  (
    clk_i            : in std_logic;
    reset_i          : in std_logic;     
    
    version_o        : out std_logic_vector(31 downto 0);  
    
    samplePosCmd_i   : in std_logic; 
    dataValid_o      : out std_logic;
    posValBitWidth_i : in std_logic_vector(31 downto 0);
    trsmFreq_i       : in std_logic_vector(31 downto 0);
    recoveryTime_i   : in std_logic_vector(31 downto 0);
    preTx_i          : in std_logic_vector(31 downto 0);
    rxPosVal_o       : out std_logic_vector(31 downto 0);    
    distNumRev_i     : in std_logic_vector(31 downto 0);
    numRev_o         : out std_logic_vector(31 downto 0);
    error_o          : out std_logic_vector(31 downto 0);
    spg_i            : in std_logic;
    
    i_serial         : in  std_logic; 
    o_serial_clk     : out std_logic; 
    o_serial         : out std_logic; 
    o_drive_en       : out std_logic  
  );
end ENDAT;

architecture struct OF ENDAT IS     type s81D6E611D4003BE00142F82E5E7FC2211C568796 is (s4BF2E00FCD1788EEF45FC0A59ABC143444952744, s6E9F1DBB4C761710738C93A1305E694CC5AB7019, s88BB3E464A5433B5E70C481850CFB4250671F723); signal s000C750E13EBBE79B501B134A6EC33F898C5CA08
, sAA566BD0910532C632761593B1258F91C549856E : s81D6E611D4003BE00142F82E5E7FC2211C568796 := s4BF2E00FCD1788EEF45FC0A59ABC143444952744; signal s96BF9B808C85365BA458715817E579A6798818EB, sD2F6DC8A234FAA51D452AC8FA52C3C0432A00212, s9C51C0BD00AFBBC39AC84A8C4D4DAE1E087387AF
 : std_logic;  signal sEA8188CAD31707F17B299650F81C67D601FE09D7 : std_logic_vector(5 downto 0); signal s456B521A63658E702B2941766F08C04305D63208 : std_logic_vector(7 downto 0);  signal sD8D325F1D07EDA923AA9123EBE161B5209EE708B : std_logic_vector(15 downto
 0);   signal s23CAA4EEF0EC4C3EE5C62F4CC13BD42837C045DA : std_logic_vector(s2B661762AEA08905D55D9C993A5A3B37FF2EC6CD-1 downto 0);  signal s024E7D2C882D37029C0FC1C58946964CA5B46D40 : std_logic_vector(sCD3268FB2E69A058B357988C1BAD31C26B18C0D3-1 downto 0);  
signal s38FBA08FA1E8936955F6D21A792256E3658F8387 : std_logic_vector(31 downto 0);  signal s6D8E140706515F7AFC288159A5BC35A838C23C32 : std_logic_vector(31 downto 0);   signal s01195179CADC59529F06F55B2A776E9473894C78 : std_logic;  signal sC4B6EA407C3AA8DD2E6A18E7F77C14FACC951414
, s06E676C0BDF7C68FD7495790A14A2FEBA13D3DB6 : std_logic;   signal s32CF03224D0C548C4F44A5420AF0E47F9CE9CB0F, s601E9D380BAA3E6CC5A2AEE58C2C073DF7C885D1, s82CF7A42FE327F752CD034A273BB301A5BAA6B67 : std_logic;  signal sA516DA7C751934DBE51FECC222FA4984B32B3692
, s7975BCABF4261F33B14B8E6E764BC7741562D89E : std_logic;   signal sF8906C174FD710CC43B199A6D572BDDF5FA35057 : std_logic; signal s7D9BCC8DE7F0061A9B94374DE968AAF0B39B2596 : std_logic; signal s5469CAB14B9BDF34FBCA99990195691CE5016E68 : std_logic; signal sC45989BB29F0C2FF096A4E36056302C21DF307D4
 : std_logic; signal sF2DF4803D4C1E42D4BDCDB74B3DA7B63D8A74AB0 : std_logic; signal s37DDD9A98C74220575ACC4BB5661EDCBAE266936 : std_logic;  signal s9B3B75EA89ACB9F77CB1EF5E54683FECA881E578 : std_logic;  signal s115AA12DC37A7336BBDDA1950DE0B4DE5C79893B : std_logic
;   signal sAF6F101406809B45BE51F9E400AB99C6466D8AAE : integer range 0 to (2**sDAD1E1924BFE7487D5AA58FB0E3AB6D80AFF7D81-1); signal s11183BFF0C2D855AEA5F48EC192129844E5C157D : integer range 0 to (2**sDAD1E1924BFE7487D5AA58FB0E3AB6D80AFF7D81-1); signal s10DD210FADBCC662E71F13C031A62CAA68BC39D3
 : integer; signal s90196555A8BFC1A5EE5D4925FBA2AF598F9D76F9 : std_logic_vector(1 downto 0);  signal s940FAE140F86D7AAE5446A4FA8C953A8EA6B637D : integer range 2 to (2**s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95-1);  signal sDF43AA73D6AFC95DE6173B25BC8316E2AE46E705
 : integer range 2 to (2**s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95-1);    signal s837E4D72C11F4D8283AC8AA1A40A20BD413C9821, s799CC05B0EA4BBC779C4A437FC3E43362176E46F, s8D6BA4319DD8D39F92457EA041AAFF074DFBCA56 : std_logic;  signal s43F7D19F6FFB52EF969FC2858BC1CA57C001562A
 : std_logic_vector( 4 downto 0); signal s1B88525B5C44F4D86E63397D61F66E7B1225355E : std_logic_vector(63 downto 0);  signal s8ABB29C3748C74A80027187254C15F46F51EF2A2 : std_logic_vector(3 downto 0);  signal s83F675DB784B205945DE32DEA0270B2CF41801FE : std_logic_vector
(s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95-1 downto 0);  constant s18232216D466596BEB636EEAE873919D97A90393 : integer := 32;  signal sB3A8B19CA98570BA8D1B96F098A8058070AA0E06 : integer range 0 to s18232216D466596BEB636EEAE873919D97A90393;    constant sAD571A7EC29F4958A6460F21AC21EB618B3EAFA0
 : integer := 32;  constant sB185EAE8E6220D219DD2522BC8B73CC6E6F7612D : integer := 48; signal s1ECA68304446F3295D7FC3C5B314ADBA0067C044 : integer range 0 to sAD571A7EC29F4958A6460F21AC21EB618B3EAFA0;  signal s264475A303AC7031FBC8591205A50743DAEAD9CA : std_logic_vector
(3 downto 0); signal s962A2181FE9A0DB9B7240305DFE13E0F88607851 : std_logic; signal s4A1F3C2832A5024C6020EE552B724484D0352CD1 : std_logic_vector(7 downto 0); signal s70B1F48447713EF522B643CFB8E0A61F4D738FCD : std_logic_vector(15 downto 0); signal s618CF5477EAA2C9694FC1A5706A88B03344A774B
 : std_logic; begin version_o <= "10" & s731A256AA7EC109FE962BF102445534C5772925D & s7EC4167F3F7F1E99D074313BF18FF4BA05E7ED10 & s5907A17D8E29C7EB61D4F347241BFE4DAC407AEA;  s43F761F6F926417F09F7675BFDFBD93FE42B9F7C: entity work.endatreduced(s75BE5DEF24CA4A61B9676CCF1CC90EBA505DC89E
) generic map ( sDAD1E1924BFE7487D5AA58FB0E3AB6D80AFF7D81 => sDAD1E1924BFE7487D5AA58FB0E3AB6D80AFF7D81,  s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95 => s8C1FCFB0787BDC32C8C8E0A79092BFBF8C9B3B95,  s2B661762AEA08905D55D9C993A5A3B37FF2EC6CD => s2B661762AEA08905D55D9C993A5A3B37FF2EC6CD
,  sCD3268FB2E69A058B357988C1BAD31C26B18C0D3 => sCD3268FB2E69A058B357988C1BAD31C26B18C0D3,   s4A8616F7DBB06E84D521DFE24490E8ADB037CBB1 => false,  s745F184CD6754435326632E8F885833C3FD28CAA => 2  ) port map ( s82C78E3CD667612DE97ED7C5FA8365F21045093F => clk_i
,  sF1FC47B36F2DA843714A618883F345968A471A76 => s618CF5477EAA2C9694FC1A5706A88B03344A774B,   sF4DBC68D16423B9DD337E166EF77471DCEA3D993 => s264475A303AC7031FBC8591205A50743DAEAD9CA(2),  s298D55696DC353303493AAE18ABFD0C95B97F0F7 => o_serial_clk,  s858AFDE712A6913772203E81B3BDEEB1165DDD96
 => o_serial,  s1504ADD95BA0488B2CA487398BBC3A3FB56ED3A4 => o_drive_en,   sAF6F101406809B45BE51F9E400AB99C6466D8AAE => sAF6F101406809B45BE51F9E400AB99C6466D8AAE,  s11183BFF0C2D855AEA5F48EC192129844E5C157D => s11183BFF0C2D855AEA5F48EC192129844E5C157D,  s940FAE140F86D7AAE5446A4FA8C953A8EA6B637D
 => s940FAE140F86D7AAE5446A4FA8C953A8EA6B637D,  sDF43AA73D6AFC95DE6173B25BC8316E2AE46E705 => sDF43AA73D6AFC95DE6173B25BC8316E2AE46E705,  s7F693B395683971F9F003DC8983DF2304C3CE968 => spg_i,  s90196555A8BFC1A5EE5D4925FBA2AF598F9D76F9 => s90196555A8BFC1A5EE5D4925FBA2AF598F9D76F9
,    sE420A02AD972A785E332BF27D04B53B8868A4F0E => s23CAA4EEF0EC4C3EE5C62F4CC13BD42837C045DA(s2B661762AEA08905D55D9C993A5A3B37FF2EC6CD-1 downto 0),  s86F6EB29E2D65A736372F43D1F449BCF6DB2BA0A => s9B3B75EA89ACB9F77CB1EF5E54683FECA881E578,  sA16C86782D377069727114AB99F123218DC1EE4E
 => s837E4D72C11F4D8283AC8AA1A40A20BD413C9821,  s07A72EEC7FE78460042B89F4D0DA7BE551FEC90A => s799CC05B0EA4BBC779C4A437FC3E43362176E46F,  s28EDCB4BE5AFFD576E337FA1A3A5AAEEA7D7B33C => s8D6BA4319DD8D39F92457EA041AAFF074DFBCA56,  s353B8D288425991916C61A5A9DFE44B11BBCF753
 => s024E7D2C882D37029C0FC1C58946964CA5B46D40(sCD3268FB2E69A058B357988C1BAD31C26B18C0D3-1 downto 0), s43F7D19F6FFB52EF969FC2858BC1CA57C001562A => s43F7D19F6FFB52EF969FC2858BC1CA57C001562A,  sC4B6EA407C3AA8DD2E6A18E7F77C14FACC951414 => sC4B6EA407C3AA8DD2E6A18E7F77C14FACC951414
,  s06E676C0BDF7C68FD7495790A14A2FEBA13D3DB6 => s06E676C0BDF7C68FD7495790A14A2FEBA13D3DB6,  s0BFFA2AEF006C5821760F1A640F5456669E1486A => s01195179CADC59529F06F55B2A776E9473894C78,  s32CF03224D0C548C4F44A5420AF0E47F9CE9CB0F => s32CF03224D0C548C4F44A5420AF0E47F9CE9CB0F
,  s601E9D380BAA3E6CC5A2AEE58C2C073DF7C885D1 => s601E9D380BAA3E6CC5A2AEE58C2C073DF7C885D1,  sA516DA7C751934DBE51FECC222FA4984B32B3692 => sA516DA7C751934DBE51FECC222FA4984B32B3692,  s7975BCABF4261F33B14B8E6E764BC7741562D89E => s7975BCABF4261F33B14B8E6E764BC7741562D89E
,  s7DC4BA5492A3997AE8E131EA0BD60F3CED572BBD => s962A2181FE9A0DB9B7240305DFE13E0F88607851,  s1B88525B5C44F4D86E63397D61F66E7B1225355E => s1B88525B5C44F4D86E63397D61F66E7B1225355E,  s8ABB29C3748C74A80027187254C15F46F51EF2A2 => s8ABB29C3748C74A80027187254C15F46F51EF2A2
,  s83F675DB784B205945DE32DEA0270B2CF41801FE => s83F675DB784B205945DE32DEA0270B2CF41801FE  );  s618CF5477EAA2C9694FC1A5706A88B03344A774B <= not reset_i; sE74607B246AF0002F4684F7288D106ADA3002A19 : process(clk_i) begin if rising_edge(clk_i) then if reset_i
 = '1' then s9B3B75EA89ACB9F77CB1EF5E54683FECA881E578 <= '0'; s115AA12DC37A7336BBDDA1950DE0B4DE5C79893B <= '0'; else s9B3B75EA89ACB9F77CB1EF5E54683FECA881E578 <= '0'; s115AA12DC37A7336BBDDA1950DE0B4DE5C79893B <= samplePosCmd_i; if samplePosCmd_i='1' and s115AA12DC37A7336BBDDA1950DE0B4DE5C79893B
='0' then s9B3B75EA89ACB9F77CB1EF5E54683FECA881E578 <= '1'; end if; end if; end if; end process sE74607B246AF0002F4684F7288D106ADA3002A19;  sEA8188CAD31707F17B299650F81C67D601FE09D7 <= pretx_i(29 downto 24); s456B521A63658E702B2941766F08C04305D63208 <= pretx_i
(23 downto 16); sD8D325F1D07EDA923AA9123EBE161B5209EE708B <= pretx_i(15 downto 0);  s23CAA4EEF0EC4C3EE5C62F4CC13BD42837C045DA(31 downto 0) <= pretx_i(31 downto 0);     sAF6F101406809B45BE51F9E400AB99C6466D8AAE <= 31 when sEA8188CAD31707F17B299650F81C67D601FE09D7
 = sC950D600C869099649CD1A85609BA2714F805E57 or sEA8188CAD31707F17B299650F81C67D601FE09D7 = s37EC8A8DDC24DE5CCA325C6D520F09FE8B8BE3B0 or sEA8188CAD31707F17B299650F81C67D601FE09D7 = sCE667A08F3FDC358AF7C3578CD6983F0DD93374C or sEA8188CAD31707F17B299650F81C67D601FE09D7
 = sEFA6395FD066E102662C9126CF88821C4940A5E2 or sEA8188CAD31707F17B299650F81C67D601FE09D7 = s01C3860AF9A5F5F7A28F043ECA30EAB1DE4D786E or sEA8188CAD31707F17B299650F81C67D601FE09D7 = sA2C6EE455D0B31BBD6DC87409C4BCCEE5CFD35BD else 7; s11183BFF0C2D855AEA5F48EC192129844E5C157D
 <= sB3A8B19CA98570BA8D1B96F098A8058070AA0E06+6 when sEA8188CAD31707F17B299650F81C67D601FE09D7 = sD086456116C26514BAA46126BDD5342689EA4666 else sB3A8B19CA98570BA8D1B96F098A8058070AA0E06+7 when sEA8188CAD31707F17B299650F81C67D601FE09D7 = s85EB2661C4F665AC828497B5A151BB556355E05B
 or sEA8188CAD31707F17B299650F81C67D601FE09D7 = sAD320E17FE59D7A60E88C7BE1ADB0F57AA30EDD0 or sEA8188CAD31707F17B299650F81C67D601FE09D7 = sA4D53F04E8BA4766E83AD0DEFDD9278B52C3044C or sEA8188CAD31707F17B299650F81C67D601FE09D7 = sEDFBFD9F8F54F1BD9B20E33D40221B2D6C287A4D
 or sEA8188CAD31707F17B299650F81C67D601FE09D7 = s9B0C1672B259D9C1E1031A2B01F0DF6FE98F2A2E or sEA8188CAD31707F17B299650F81C67D601FE09D7 = sE78665F3E53F7F72C28BF19FCA20946AD4B10D08 else 46 when sEA8188CAD31707F17B299650F81C67D601FE09D7 = sA2C6EE455D0B31BBD6DC87409C4BCCEE5CFD35BD
 else 29;    s495F0760A6D370CF2E5DACC3A884F77824629006 : process(sB3A8B19CA98570BA8D1B96F098A8058070AA0E06, s024E7D2C882D37029C0FC1C58946964CA5B46D40, sEA8188CAD31707F17B299650F81C67D601FE09D7, s1ECA68304446F3295D7FC3C5B314ADBA0067C044) begin  s38FBA08FA1E8936955F6D21A792256E3658F8387
 <= (others => '0'); s6D8E140706515F7AFC288159A5BC35A838C23C32 <= (others => '0'); case sEA8188CAD31707F17B299650F81C67D601FE09D7 is when sD086456116C26514BAA46126BDD5342689EA4666 | s85EB2661C4F665AC828497B5A151BB556355E05B | sAD320E17FE59D7A60E88C7BE1ADB0F57AA30EDD0
 | sA4D53F04E8BA4766E83AD0DEFDD9278B52C3044C | sEDFBFD9F8F54F1BD9B20E33D40221B2D6C287A4D | s9B0C1672B259D9C1E1031A2B01F0DF6FE98F2A2E | sE78665F3E53F7F72C28BF19FCA20946AD4B10D08 => for s020F5125771EEEB6F963720A8BB968FCA977AA41 in 0 to 31 loop if (s020F5125771EEEB6F963720A8BB968FCA977AA41
 < s1ECA68304446F3295D7FC3C5B314ADBA0067C044) then s6D8E140706515F7AFC288159A5BC35A838C23C32(s020F5125771EEEB6F963720A8BB968FCA977AA41) <= s024E7D2C882D37029C0FC1C58946964CA5B46D40(s020F5125771EEEB6F963720A8BB968FCA977AA41 + (sB3A8B19CA98570BA8D1B96F098A8058070AA0E06
-s1ECA68304446F3295D7FC3C5B314ADBA0067C044)); end if; if (s020F5125771EEEB6F963720A8BB968FCA977AA41 < sB3A8B19CA98570BA8D1B96F098A8058070AA0E06-s1ECA68304446F3295D7FC3C5B314ADBA0067C044) then s38FBA08FA1E8936955F6D21A792256E3658F8387(s020F5125771EEEB6F963720A8BB968FCA977AA41
) <= s024E7D2C882D37029C0FC1C58946964CA5B46D40(s020F5125771EEEB6F963720A8BB968FCA977AA41); end if; end loop; when sCE667A08F3FDC358AF7C3578CD6983F0DD93374C | sC950D600C869099649CD1A85609BA2714F805E57 | s37EC8A8DDC24DE5CCA325C6D520F09FE8B8BE3B0 | sEFA6395FD066E102662C9126CF88821C4940A5E2
 | s01C3860AF9A5F5F7A28F043ECA30EAB1DE4D786E | sBB116EDD54150FE461AF440792906CBAF166BCC9 => s38FBA08FA1E8936955F6D21A792256E3658F8387(15 downto 0) <= s024E7D2C882D37029C0FC1C58946964CA5B46D40(15 downto 0); s6D8E140706515F7AFC288159A5BC35A838C23C32 <= (others
 => '0'); when sA2C6EE455D0B31BBD6DC87409C4BCCEE5CFD35BD =>  s38FBA08FA1E8936955F6D21A792256E3658F8387(31 downto 0) <= s024E7D2C882D37029C0FC1C58946964CA5B46D40(31 downto 0); s6D8E140706515F7AFC288159A5BC35A838C23C32(7 downto 0) <= s024E7D2C882D37029C0FC1C58946964CA5B46D40
(39 downto 32); when others => s38FBA08FA1E8936955F6D21A792256E3658F8387 <= (others => '0'); s6D8E140706515F7AFC288159A5BC35A838C23C32 <= (others => '0'); end case; end process s495F0760A6D370CF2E5DACC3A884F77824629006;    s0D71193EEDF50039E39DBE52DC5EBFA21EA8E1C8
 : process(sAA566BD0910532C632761593B1258F91C549856E, s837E4D72C11F4D8283AC8AA1A40A20BD413C9821, s264475A303AC7031FBC8591205A50743DAEAD9CA) begin  s000C750E13EBBE79B501B134A6EC33F898C5CA08 <= s4BF2E00FCD1788EEF45FC0A59ABC143444952744; case sAA566BD0910532C632761593B1258F91C549856E
 is when s4BF2E00FCD1788EEF45FC0A59ABC143444952744 => s000C750E13EBBE79B501B134A6EC33F898C5CA08 <= s4BF2E00FCD1788EEF45FC0A59ABC143444952744; if s837E4D72C11F4D8283AC8AA1A40A20BD413C9821='1' then s000C750E13EBBE79B501B134A6EC33F898C5CA08 <= s6E9F1DBB4C761710738C93A1305E694CC5AB7019
; end if;      when s6E9F1DBB4C761710738C93A1305E694CC5AB7019 => s000C750E13EBBE79B501B134A6EC33F898C5CA08 <= s6E9F1DBB4C761710738C93A1305E694CC5AB7019; if s264475A303AC7031FBC8591205A50743DAEAD9CA(1) = '1' then s000C750E13EBBE79B501B134A6EC33F898C5CA08 <= 
s88BB3E464A5433B5E70C481850CFB4250671F723; end if; when s88BB3E464A5433B5E70C481850CFB4250671F723 => s000C750E13EBBE79B501B134A6EC33F898C5CA08 <= s88BB3E464A5433B5E70C481850CFB4250671F723; if s264475A303AC7031FBC8591205A50743DAEAD9CA(1) = '0' then s000C750E13EBBE79B501B134A6EC33F898C5CA08
 <= s4BF2E00FCD1788EEF45FC0A59ABC143444952744; end if; when others => s000C750E13EBBE79B501B134A6EC33F898C5CA08 <= s4BF2E00FCD1788EEF45FC0A59ABC143444952744; end case; end process s0D71193EEDF50039E39DBE52DC5EBFA21EA8E1C8;    s3183BD852269FBC9F0CA7B68C11F8E6D6782C476
 : process(clk_i) begin if rising_edge(clk_i) then if reset_i = '1' then sAA566BD0910532C632761593B1258F91C549856E <= s4BF2E00FCD1788EEF45FC0A59ABC143444952744; else sAA566BD0910532C632761593B1258F91C549856E <= s000C750E13EBBE79B501B134A6EC33F898C5CA08; end
 if; end if; end process s3183BD852269FBC9F0CA7B68C11F8E6D6782C476;    s98683DAEF246D4975C386EA22C561360083D1221 : process(clk_i) begin if rising_edge(clk_i) then if reset_i = '1' then dataValid_o <= '0'; rxPosVal_o <= (others => '0'); numRev_o <= (others
 => '0'); error_o <= (others => '0'); else  dataValid_o <= '0';  if sAA566BD0910532C632761593B1258F91C549856E = s4BF2E00FCD1788EEF45FC0A59ABC143444952744 and s837E4D72C11F4D8283AC8AA1A40A20BD413C9821='1' then rxPosVal_o <= s38FBA08FA1E8936955F6D21A792256E3658F8387
; numRev_o <= s6D8E140706515F7AFC288159A5BC35A838C23C32; error_o(7 downto 0) <= s37DDD9A98C74220575ACC4BB5661EDCBAE266936 & sC4B6EA407C3AA8DD2E6A18E7F77C14FACC951414 & s06E676C0BDF7C68FD7495790A14A2FEBA13D3DB6 & s01195179CADC59529F06F55B2A776E9473894C78 & 
s32CF03224D0C548C4F44A5420AF0E47F9CE9CB0F & s601E9D380BAA3E6CC5A2AEE58C2C073DF7C885D1 & sA516DA7C751934DBE51FECC222FA4984B32B3692 & s7975BCABF4261F33B14B8E6E764BC7741562D89E; end if;  if sAA566BD0910532C632761593B1258F91C549856E = s88BB3E464A5433B5E70C481850CFB4250671F723
 and s264475A303AC7031FBC8591205A50743DAEAD9CA(1) = '0' then dataValid_o <= '1'; end if; end if; end if; end process s98683DAEF246D4975C386EA22C561360083D1221;    sB831CDED7158A8794B8C68043E19FF3C265F58EE : process(clk_i, i_serial) begin if rising_edge(clk_i
) then if reset_i = '1' then s264475A303AC7031FBC8591205A50743DAEAD9CA <= (others=>'0'); else s264475A303AC7031FBC8591205A50743DAEAD9CA <= (i_serial, s264475A303AC7031FBC8591205A50743DAEAD9CA(3), s264475A303AC7031FBC8591205A50743DAEAD9CA(2), s264475A303AC7031FBC8591205A50743DAEAD9CA
(1)); end if; end if; end process; s962A2181FE9A0DB9B7240305DFE13E0F88607851 <= '1' when s264475A303AC7031FBC8591205A50743DAEAD9CA = "1100" else '0';  sB3A8B19CA98570BA8D1B96F098A8058070AA0E06 <= to_integer(unsigned(posValBitWidth_i)); sF8906C174FD710CC43B199A6D572BDDF5FA35057
 <= '1' when to_unsigned(sB3A8B19CA98570BA8D1B96F098A8058070AA0E06-s1ECA68304446F3295D7FC3C5B314ADBA0067C044,32) > to_unsigned(s18232216D466596BEB636EEAE873919D97A90393,32) else '0';   s1ECA68304446F3295D7FC3C5B314ADBA0067C044 <= to_integer(unsigned(distNumRev_i
)); s7D9BCC8DE7F0061A9B94374DE968AAF0B39B2596 <= '1' when unsigned(distNumRev_i) > to_unsigned(sAD571A7EC29F4958A6460F21AC21EB618B3EAFA0,32) else '0';   s5469CAB14B9BDF34FBCA99990195691CE5016E68 <= '1' when unsigned(posValBitWidth_i) > to_unsigned(sB185EAE8E6220D219DD2522BC8B73CC6E6F7612D
,32) else '0';   s940FAE140F86D7AAE5446A4FA8C953A8EA6B637D <= to_integer(unsigned(trsmFreq_i)); sC45989BB29F0C2FF096A4E36056302C21DF307D4 <= '1' when trsmFreq_i > x"0000007F" else '0';  sDF43AA73D6AFC95DE6173B25BC8316E2AE46E705 <= to_integer(unsigned(recoveryTime_i
)); sF2DF4803D4C1E42D4BDCDB74B3DA7B63D8A74AB0 <= '1' when recoveryTime_i > x"0000007F" else '0'; s37DDD9A98C74220575ACC4BB5661EDCBAE266936 <= sF8906C174FD710CC43B199A6D572BDDF5FA35057 or s7D9BCC8DE7F0061A9B94374DE968AAF0B39B2596 or sC45989BB29F0C2FF096A4E36056302C21DF307D4
 or sF2DF4803D4C1E42D4BDCDB74B3DA7B63D8A74AB0 or s5469CAB14B9BDF34FBCA99990195691CE5016E68;  s90196555A8BFC1A5EE5D4925FBA2AF598F9D76F9 <= "00"; end struct;