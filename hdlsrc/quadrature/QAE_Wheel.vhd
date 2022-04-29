library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.Numeric_Std.all; entity QAE_WHEEL is port( s0A61EC3B284D41A7527B973B71395AF396BD0749 : in std_logic; s82C78E3CD667612DE97ED7C5FA8365F21045093F : in std_logic; s90724AE20811A4A1CF4892AD6C5DE35913A379E1 : 
in std_logic; s7414A94932A534C4C1BDB2FEEB2D3AAB8599B128 : in std_logic_vector(31 downto 0); s86FFCF3D164D03DFB129A26F24B615BBF08CCEE0 : in std_logic; s66F6FE61FB267B4B55A1EB5C5A6B5E3162BAD531 : in std_logic; s8D38E157D14189FC928FCE48A38AD20C8195C0DF : in 
std_logic_vector(31 downto 0); s01C8CEA8B26FE9C07E6D213208100190F11FFC58 : in std_logic_vector(31 downto 0); s6D1117A4E480A54AA407D7471ABD9B7E03C9B64E : in std_logic_vector(31 downto 0); s1BE22644210E653BD6BF626E4CCDC1B4AE2CA9A2 : out std_logic_vector(31 
downto 0); sBE62482AD40DBA872C7029A26677B647B2ACF668 : out std_logic ); end QAE_WHEEL; architecture rtl of QAE_WHEEL is signal s0934DC8CE23D132DC5678DA1E5632ED5A9A8C353, s3ED4EF12259A4DE88892775A56581F0FF3D5D59B : unsigned(31 downto 0); signal sCB671794F51D671187FBC53913D1778E3647C23F
, s87AD7ED89D300206805C3382662B68C933B5262B, s062D1D2576BCFB0F9A4105CE2F5265D421CC0D7E : unsigned(31 downto 0); signal s3AF07B32811E993B1B93E15A59F7FA5584B45FAA : unsigned(31 downto 0); signal sC481841D03DAA86CD7FDB053497F0A0452922CFA : std_logic; signal 
sBB7270EDA6EC7DB363ADA9B6CF22E86A9D08B051 : std_logic; begin  process(s82C78E3CD667612DE97ED7C5FA8365F21045093F, s0A61EC3B284D41A7527B973B71395AF396BD0749) begin if s0A61EC3B284D41A7527B973B71395AF396BD0749 = '1' then s0934DC8CE23D132DC5678DA1E5632ED5A9A8C353
 <= (others => '0'); elsif rising_edge(s82C78E3CD667612DE97ED7C5FA8365F21045093F) then s0934DC8CE23D132DC5678DA1E5632ED5A9A8C353 <= s3ED4EF12259A4DE88892775A56581F0FF3D5D59B; end if; end process;  s3ED4EF12259A4DE88892775A56581F0FF3D5D59B <= unsigned(s01C8CEA8B26FE9C07E6D213208100190F11FFC58
) when s86FFCF3D164D03DFB129A26F24B615BBF08CCEE0 = '1' else s3AF07B32811E993B1B93E15A59F7FA5584B45FAA when s90724AE20811A4A1CF4892AD6C5DE35913A379E1 = '1' else s0934DC8CE23D132DC5678DA1E5632ED5A9A8C353;  s3AF07B32811E993B1B93E15A59F7FA5584B45FAA <= s0934DC8CE23D132DC5678DA1E5632ED5A9A8C353
 + unsigned(s8D38E157D14189FC928FCE48A38AD20C8195C0DF);  sC481841D03DAA86CD7FDB053497F0A0452922CFA <= s0934DC8CE23D132DC5678DA1E5632ED5A9A8C353(s0934DC8CE23D132DC5678DA1E5632ED5A9A8C353'left) and not s3AF07B32811E993B1B93E15A59F7FA5584B45FAA(s3AF07B32811E993B1B93E15A59F7FA5584B45FAA
'left) and not s8D38E157D14189FC928FCE48A38AD20C8195C0DF(s8D38E157D14189FC928FCE48A38AD20C8195C0DF'left);  sBB7270EDA6EC7DB363ADA9B6CF22E86A9D08B051 <= not s0934DC8CE23D132DC5678DA1E5632ED5A9A8C353(s0934DC8CE23D132DC5678DA1E5632ED5A9A8C353'left) and s3AF07B32811E993B1B93E15A59F7FA5584B45FAA
(s3AF07B32811E993B1B93E15A59F7FA5584B45FAA'left) and s8D38E157D14189FC928FCE48A38AD20C8195C0DF(s8D38E157D14189FC928FCE48A38AD20C8195C0DF'left);  process(s82C78E3CD667612DE97ED7C5FA8365F21045093F, s0A61EC3B284D41A7527B973B71395AF396BD0749) begin if s0A61EC3B284D41A7527B973B71395AF396BD0749
 = '1' then sCB671794F51D671187FBC53913D1778E3647C23F <= (others => '0'); elsif rising_edge(s82C78E3CD667612DE97ED7C5FA8365F21045093F) then sCB671794F51D671187FBC53913D1778E3647C23F <= s87AD7ED89D300206805C3382662B68C933B5262B; end if; end process;  s87AD7ED89D300206805C3382662B68C933B5262B
 <= unsigned(s6D1117A4E480A54AA407D7471ABD9B7E03C9B64E) when s66F6FE61FB267B4B55A1EB5C5A6B5E3162BAD531 = '1' else s062D1D2576BCFB0F9A4105CE2F5265D421CC0D7E when s90724AE20811A4A1CF4892AD6C5DE35913A379E1 = '1' else sCB671794F51D671187FBC53913D1778E3647C23F
; s062D1D2576BCFB0F9A4105CE2F5265D421CC0D7E <= (others => '0') when sCB671794F51D671187FBC53913D1778E3647C23F >= unsigned(s7414A94932A534C4C1BDB2FEEB2D3AAB8599B128)-1 and sC481841D03DAA86CD7FDB053497F0A0452922CFA='1' else sCB671794F51D671187FBC53913D1778E3647C23F
 + 1 when sC481841D03DAA86CD7FDB053497F0A0452922CFA='1' else unsigned(s7414A94932A534C4C1BDB2FEEB2D3AAB8599B128)-1 when sCB671794F51D671187FBC53913D1778E3647C23F = x"00000000" and sBB7270EDA6EC7DB363ADA9B6CF22E86A9D08B051='1' else sCB671794F51D671187FBC53913D1778E3647C23F
 - 1 when sBB7270EDA6EC7DB363ADA9B6CF22E86A9D08B051='1' else sCB671794F51D671187FBC53913D1778E3647C23F;  s1BE22644210E653BD6BF626E4CCDC1B4AE2CA9A2 <= std_logic_vector(sCB671794F51D671187FBC53913D1778E3647C23F); sBE62482AD40DBA872C7029A26677B647B2ACF668 <= 
sCB671794F51D671187FBC53913D1778E3647C23F(0); end rtl; 