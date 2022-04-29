-- -------------------------------------------------------------
-- 
-- File Name: tmp_vhdl\cam_decoder_fpga_module\sg_camd_Cam_Decoder_FPGA_Code_Module.vhd
-- 
-- Generated by MATLAB 9.6 and HDL Coder 3.14
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 1.33333e-08
-- Target subsystem base rate: 1.33333e-08
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        1.33333e-08
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- cam_on_coarse_position        ce_out        1.33333e-08
-- cam_on_fine_position          ce_out        1.33333e-08
-- crank_period_at_cam_on_event  ce_out        1.33333e-08
-- cam_off_coarse_position       ce_out        1.33333e-08
-- cam_off_fine_position         ce_out        1.33333e-08
-- crank_period_at_cam_off_event ce_out        1.33333e-08
-- version                       ce_out        1.33333e-08
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: sg_camd_Cam_Decoder_FPGA_Code_Module
-- Source Path: cam_decoder_fpga_module/Cam Decoder FPGA Code Module
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY sg_camd_Cam_Decoder_FPGA_Code_Module IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        camshaft                          :   IN    std_logic;
        current_tooth                     :   IN    std_logic_vector(15 DOWNTO 0);  -- uint16
        crank_period                      :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
        ce_out                            :   OUT   std_logic;
        cam_on_coarse_position            :   OUT   std_logic_vector(15 DOWNTO 0);  -- uint16
        cam_on_fine_position              :   OUT   std_logic_vector(31 DOWNTO 0);  -- uint32
        crank_period_at_cam_on_event      :   OUT   std_logic_vector(31 DOWNTO 0);  -- uint32
        cam_off_coarse_position           :   OUT   std_logic_vector(15 DOWNTO 0);  -- uint16
        cam_off_fine_position             :   OUT   std_logic_vector(31 DOWNTO 0);  -- uint32
        crank_period_at_cam_off_event     :   OUT   std_logic_vector(31 DOWNTO 0);  -- uint32
        version                           :   OUT   std_logic_vector(31 DOWNTO 0)  -- uint32
        );
END sg_camd_Cam_Decoder_FPGA_Code_Module;


ARCHITECTURE rtl OF sg_camd_Cam_Decoder_FPGA_Code_Module IS

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL Unit_Delay4_reg                  : std_logic_vector(0 TO 1);  -- ufix1 [2]
  SIGNAL Unit_Delay4_out1                 : std_logic;
  SIGNAL synch_out1                       : std_logic;
  SIGNAL FixPt_Relational_Operator_relop1 : std_logic;
  SIGNAL FixPt_Relational_Operator1_relop1 : std_logic;
  SIGNAL current_tooth_unsigned           : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL Unit_Delay_Enabled_Synchronous_out1 : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL Unit_Delay_Enabled_Synchronous1_out1 : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL current_tooth_1                  : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL FixPt_Relational_Operator3_relop1 : std_logic;
  SIGNAL cam_counter                      : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Unit_Delay_Enabled_Synchronous1_out1_1 : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Unit_Delay_Enabled_Synchronous2_out1 : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL crank_period_unsigned            : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Unit_Delay_Enabled_Synchronous3_out1 : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Unit_Delay_Enabled_Synchronous3_out1_1 : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Unit_Delay_Enabled_Synchronous_out1_1 : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL Unit_Delay_out1                  : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL FixPt_Relational_Operator2_relop1 : std_logic;
  SIGNAL fine_position_counter_out1       : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Unit_Delay_Enabled_Synchronous1_out1_2 : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Unit_Delay1_out1                 : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Unit_Delay_Enabled_Synchronous3_out1_2 : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Unit_Delay2_out1                 : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL constant_out1                    : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL Base_Address_out1                : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Bit_Slice_out1                   : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Major_Version_out1               : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Minor_Version_out1               : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Bit_Concat_out1                  : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL U_k_1                            : std_logic;
  SIGNAL U_k_1_1                          : std_logic;
  SIGNAL U_k_1_2                          : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL U_k_1_3                          : unsigned(15 DOWNTO 0);  -- uint16

BEGIN
  -- Edge
  -- 
  -- U(k)
  -- 
  -- Edge
  -- 
  -- U(k)
  -- 
  -- Edge
  -- 
  -- U(k)
  -- 
  -- Edge
  -- 
  -- U(k)

  enb <= clk_enable;

  Unit_Delay4_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay4_reg <= (OTHERS => '0');
      ELSIF enb = '1' THEN
        Unit_Delay4_reg(0) <= camshaft;
        Unit_Delay4_reg(1) <= Unit_Delay4_reg(0);
      END IF;
    END IF;
  END PROCESS Unit_Delay4_process;

  Unit_Delay4_out1 <= Unit_Delay4_reg(1);

  -- 
  -- Store in Global RAM
  -- 
  -- 
  -- Store in Global RAM
  reduced_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        synch_out1 <= '0';
      ELSIF enb = '1' THEN
        synch_out1 <= Unit_Delay4_out1;
      END IF;
    END IF;
  END PROCESS reduced_process;


  
  FixPt_Relational_Operator_relop1 <= '1' WHEN Unit_Delay4_out1 < synch_out1 ELSE
      '0';

  
  FixPt_Relational_Operator1_relop1 <= '1' WHEN Unit_Delay4_out1 > synch_out1 ELSE
      '0';

  current_tooth_unsigned <= unsigned(current_tooth);

  Unit_Delay_Enabled_Synchronous2_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay_Enabled_Synchronous_out1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' AND FixPt_Relational_Operator1_relop1 = '1' THEN
        Unit_Delay_Enabled_Synchronous_out1 <= current_tooth_unsigned;
      END IF;
    END IF;
  END PROCESS Unit_Delay_Enabled_Synchronous2_process;


  Unit_Delay_Enabled_Synchronous12_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay_Enabled_Synchronous1_out1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' AND FixPt_Relational_Operator_relop1 = '1' THEN
        Unit_Delay_Enabled_Synchronous1_out1 <= Unit_Delay_Enabled_Synchronous_out1;
      END IF;
    END IF;
  END PROCESS Unit_Delay_Enabled_Synchronous12_process;


  cam_on_coarse_position <= std_logic_vector(Unit_Delay_Enabled_Synchronous1_out1);

  -- 
  -- Store in Global RAM
  -- 
  -- 
  -- Store in Global RAM
  reduced_1_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        current_tooth_1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        current_tooth_1 <= current_tooth_unsigned;
      END IF;
    END IF;
  END PROCESS reduced_1_process;


  
  FixPt_Relational_Operator3_relop1 <= '1' WHEN current_tooth_unsigned /= current_tooth_1 ELSE
      '0';

  -- Free running, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  fine_position_counter1_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        cam_counter <= to_unsigned(0, 32);
      ELSIF enb = '1' THEN
        IF FixPt_Relational_Operator3_relop1 = '1' THEN 
          cam_counter <= to_unsigned(0, 32);
        ELSE 
          cam_counter <= cam_counter + to_unsigned(1, 32);
        END IF;
      END IF;
    END IF;
  END PROCESS fine_position_counter1_process;


  Unit_Delay_Enabled_Synchronous11_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay_Enabled_Synchronous1_out1_1 <= to_unsigned(0, 32);
      ELSIF enb = '1' AND FixPt_Relational_Operator1_relop1 = '1' THEN
        Unit_Delay_Enabled_Synchronous1_out1_1 <= cam_counter;
      END IF;
    END IF;
  END PROCESS Unit_Delay_Enabled_Synchronous11_process;


  Unit_Delay_Enabled_Synchronous21_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay_Enabled_Synchronous2_out1 <= to_unsigned(0, 32);
      ELSIF enb = '1' AND FixPt_Relational_Operator_relop1 = '1' THEN
        Unit_Delay_Enabled_Synchronous2_out1 <= Unit_Delay_Enabled_Synchronous1_out1_1;
      END IF;
    END IF;
  END PROCESS Unit_Delay_Enabled_Synchronous21_process;


  cam_on_fine_position <= std_logic_vector(Unit_Delay_Enabled_Synchronous2_out1);

  crank_period_unsigned <= unsigned(crank_period);

  Unit_Delay_Enabled_Synchronous31_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay_Enabled_Synchronous3_out1 <= to_unsigned(0, 32);
      ELSIF enb = '1' AND FixPt_Relational_Operator1_relop1 = '1' THEN
        Unit_Delay_Enabled_Synchronous3_out1 <= crank_period_unsigned;
      END IF;
    END IF;
  END PROCESS Unit_Delay_Enabled_Synchronous31_process;


  Unit_Delay_Enabled_Synchronous32_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay_Enabled_Synchronous3_out1_1 <= to_unsigned(0, 32);
      ELSIF enb = '1' AND FixPt_Relational_Operator_relop1 = '1' THEN
        Unit_Delay_Enabled_Synchronous3_out1_1 <= Unit_Delay_Enabled_Synchronous3_out1;
      END IF;
    END IF;
  END PROCESS Unit_Delay_Enabled_Synchronous32_process;


  crank_period_at_cam_on_event <= std_logic_vector(Unit_Delay_Enabled_Synchronous3_out1_1);

  Unit_Delay_Enabled_Synchronous_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay_Enabled_Synchronous_out1_1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' AND FixPt_Relational_Operator_relop1 = '1' THEN
        Unit_Delay_Enabled_Synchronous_out1_1 <= current_tooth_unsigned;
      END IF;
    END IF;
  END PROCESS Unit_Delay_Enabled_Synchronous_process;


  Unit_Delay_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay_out1 <= to_unsigned(16#0000#, 16);
      ELSIF enb = '1' THEN
        Unit_Delay_out1 <= Unit_Delay_Enabled_Synchronous_out1_1;
      END IF;
    END IF;
  END PROCESS Unit_Delay_process;


  cam_off_coarse_position <= std_logic_vector(Unit_Delay_out1);

  
  FixPt_Relational_Operator2_relop1 <= '1' WHEN current_tooth_unsigned /= current_tooth_1 ELSE
      '0';

  -- Free running, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  fine_position_counter_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        fine_position_counter_out1 <= to_unsigned(0, 32);
      ELSIF enb = '1' THEN
        IF FixPt_Relational_Operator2_relop1 = '1' THEN 
          fine_position_counter_out1 <= to_unsigned(0, 32);
        ELSE 
          fine_position_counter_out1 <= fine_position_counter_out1 + to_unsigned(1, 32);
        END IF;
      END IF;
    END IF;
  END PROCESS fine_position_counter_process;


  Unit_Delay_Enabled_Synchronous1_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay_Enabled_Synchronous1_out1_2 <= to_unsigned(0, 32);
      ELSIF enb = '1' AND FixPt_Relational_Operator_relop1 = '1' THEN
        Unit_Delay_Enabled_Synchronous1_out1_2 <= fine_position_counter_out1;
      END IF;
    END IF;
  END PROCESS Unit_Delay_Enabled_Synchronous1_process;


  Unit_Delay1_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay1_out1 <= to_unsigned(0, 32);
      ELSIF enb = '1' THEN
        Unit_Delay1_out1 <= Unit_Delay_Enabled_Synchronous1_out1_2;
      END IF;
    END IF;
  END PROCESS Unit_Delay1_process;


  cam_off_fine_position <= std_logic_vector(Unit_Delay1_out1);

  Unit_Delay_Enabled_Synchronous3_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay_Enabled_Synchronous3_out1_2 <= to_unsigned(0, 32);
      ELSIF enb = '1' AND FixPt_Relational_Operator_relop1 = '1' THEN
        Unit_Delay_Enabled_Synchronous3_out1_2 <= crank_period_unsigned;
      END IF;
    END IF;
  END PROCESS Unit_Delay_Enabled_Synchronous3_process;


  Unit_Delay2_process : PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        Unit_Delay2_out1 <= to_unsigned(0, 32);
      ELSIF enb = '1' THEN
        Unit_Delay2_out1 <= Unit_Delay_Enabled_Synchronous3_out1_2;
      END IF;
    END IF;
  END PROCESS Unit_Delay2_process;


  crank_period_at_cam_off_event <= std_logic_vector(Unit_Delay2_out1);

  constant_out1 <= to_unsigned(16#2#, 2);

  Base_Address_out1 <= to_unsigned(1130496, 32);

  Bit_Slice_out1 <= Base_Address_out1(23 DOWNTO 14);

  Major_Version_out1 <= to_unsigned(16#003#, 10);

  Minor_Version_out1 <= to_unsigned(16#002#, 10);

  Bit_Concat_out1 <= constant_out1 & Bit_Slice_out1 & Major_Version_out1 & Minor_Version_out1;

  version <= std_logic_vector(Bit_Concat_out1);

  ce_out <= clk_enable;

END rtl;
