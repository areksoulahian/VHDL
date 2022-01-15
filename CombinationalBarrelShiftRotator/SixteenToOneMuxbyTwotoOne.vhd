library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SixteenToOneMuxbyTwotoOne is
  Port (
        a,
        --b,
        c,
        --d,
        e,
        --f,
        g,
        --h,
         i,
        --j,
        k,
        --l,
        m,
        --n, --p
        o :in STD_LOGIC;
        
        a1,
        --b1,
        c1,
        --d1,
        e1,
        --f1,
        g1,
        --h1,
        i1,
        --j1,
        k1,
        --l1,
        m1,
        --n1,
        o1
        --p1
        : in STD_LOGIC;
        
        amt, amt1, amt2, amt3 : in STD_LOGIC;
        
        tempc1, tempc2, tempc3,
        tempc4, tempc5, tempc6,
        tempc7, tempc8, tempc9,
        tempc10, tempc11, tempc12,
        tempc13, tempc14, tempc15,
        tempc16 : out STD_LOGIC );
    end SixteenToOneMuxbyTwotoOne;
    
    
    
    
    architecture Behavioral of SixteenToOneMuxbyTwotoOne is
        component twobyoneMux
            port (a, b : in STD_LOGIC;
                    amt: in STD_LOGIC;
                    y : out STD_LOGIC);
        END component;
    
    
    
    
        --signal for selectLine amt
        signal temp1, temp2, temp3,
        temp4, temp5, temp6,
        temp7, temp8, temp9,
        temp10, temp11, temp12,
        temp13, temp14, temp15,
        temp16 : std_logic;
        --signal for selectLine amt1
        signal tempa1, tempa2, tempa3,
        tempa4, tempa5, tempa6,
        tempa7, tempa8, tempa9,
        tempa10, tempa11, tempa12,
        tempa13, tempa14, tempa15,
        tempa16 : std_logic;
        --signal for selectLine amt2
        signal tempb1, tempb2, tempb3,
        tempb4, tempb5, tempb6,
        tempb7, tempb8, tempb9,
        tempb10, tempb11, tempb12,
        tempb13, tempb14, tempb15,
        tempb16 : std_logic;
        
        




        begin



            mux1:  twoByOneMux port map(a=>a , b=>c, amt=>amt, y=>temp1);
            m2:  twoByOneMux port map(a=>c , b=>e, amt=>amt, y=>temp2);
            m3:  twoByOneMux port map(a=>e , b=>g, amt=>amt, y=>temp3);
            m4:  twoByOneMux port map(a=>g , b=>i, amt=>amt, y=>temp4);
            m5:  twoByOneMux port map(a=>i , b=>k, amt=>amt, y=>temp5);
            m6:  twoByOneMux port map(a=>k , b=>m, amt=>amt, y=>temp6);
            m7:  twoByOneMux port map(a=>m , b=>o, amt=>amt, y=>temp7);
            m8:  twoByOneMux port map(a=>o , b=>a1, amt=>amt, y=>temp8);
            m9:  twoByOneMux port map(a=>a1, b=>c1, amt=>amt, y=> temp9);
            m10: twoByOneMux port map(a=>c1, b=>e1, amt=>amt, y=> temp10);
            m11: twoByOneMux port map(a=>e1, b=>g1, amt=>amt, y=> temp11);
            m12: twoByOneMux port map(a=>g1, b=>i1, amt=>amt, y=> temp12);
            m13: twoByOneMux port map(a=>i1, b=>k1, amt=>amt, y=> temp13);
            m14: twoByOneMux port map(a=>k1, b=>m1, amt=>amt, y=> temp14);
            m15: twoByOneMux port map(a=>m1, b=>o1, amt=>amt, y=> temp15);
            m16: twoByOneMux port map(a=>o1, b=> a, amt=>amt, y=> temp16);
            
            mA1:  twoByOneMux port map(a=>temp1 , b=>temp3, amt=>amt1, y=>tempa1);
            mA2:  twoByOneMux port map(a=>temp2 , b=>temp4, amt=>amt1, y=>tempa2);
            mA3:  twoByOneMux port map(a=>temp3 , b=>temp5, amt=>amt1, y=>tempa3);
            mA4:  twoByOneMux port map(a=>temp4 , b=>temp6, amt=>amt1, y=>tempa4);
            mA5:  twoByOneMux port map(a=>temp5 , b=>temp7, amt=>amt1, y=>tempa5);
            mA6:  twoByOneMux port map(a=>temp6 , b=>temp8, amt=>amt1, y=>tempa6);
            mA7:  twoByOneMux port map(a=>temp7 , b=>temp9, amt=>amt1, y=>tempa7);
            mA8:  twoByOneMux port map(a=>temp8 , b=>temp10, amt=>amt1, y=>tempa8);
            mA9:  twoByOneMux port map(a=>temp9,  b=>temp11, amt=>amt1, y=> tempa9);
            mA10: twoByOneMux port map(a=>temp10, b=>temp12, amt=>amt1, y=> tempa10);
            mA11: twoByOneMux port map(a=>temp11, b=>temp13, amt=>amt1, y=> tempa11);
            mA12: twoByOneMux port map(a=>temp12, b=>temp14, amt=>amt1, y=> tempa12);
            mA13: twoByOneMux port map(a=>temp13, b=>temp15, amt=>amt1, y=> tempa13);
            mA14: twoByOneMux port map(a=>temp14, b=>temp16, amt=>amt1, y=> tempa14);
            mA15: twoByOneMux port map(a=>temp15, b=> temp1, amt=>amt1, y=> tempa15);
            mA16: twoByOneMux port map(a=>temp16, b=> temp2, amt=>amt1, y=> tempa16);
            
            mB1:  twoByOneMux port map(a=>tempa1 , b=>tempa5, amt=>amt2, y=>tempb1);
            mB2:  twoByOneMux port map(a=>tempa2 , b=>tempa6, amt=>amt2, y=>tempb2);
            mB3:  twoByOneMux port map(a=>tempa3 , b=>tempa7, amt=>amt2, y=>tempb3);
            mB4:  twoByOneMux port map(a=>tempa4 , b=>tempa8, amt=>amt2, y=>tempb4);
            mB5:  twoByOneMux port map(a=>tempa5 , b=>tempa9, amt=>amt2, y=>tempb5);
            mB6:  twoByOneMux port map(a=>tempa6 , b=>tempa10, amt=>amt2, y=>tempb6);
            mB7:  twoByOneMux port map(a=>tempa7 , b=>tempa11, amt=>amt2, y=>tempb7);
            mB8:  twoByOneMux port map(a=>tempa8 , b=>tempa12, amt=>amt2, y=>tempb8);
            mB9:  twoByOneMux port map(a=>tempa9,  b=>tempa13, amt=>amt2, y=>tempb9);
            mB10: twoByOneMux port map(a=>tempa10, b=>tempa14, amt=>amt2, y=> tempb10);
            mB11: twoByOneMux port map(a=>tempa11, b=>tempa15, amt=>amt2, y=> tempb11);
            mB12: twoByOneMux port map(a=>tempa12, b=>tempa16, amt=>amt2, y=> tempb12);
            mB13: twoByOneMux port map(a=>tempa13, b=>tempa1, amt=>amt2, y=> tempb13);
            mB14: twoByOneMux port map(a=>tempa14, b=>tempa2, amt=>amt2, y=> tempb14);
            mB15: twoByOneMux port map(a=>tempa15, b=> tempa3, amt=>amt2, y=> tempb15);
            mB16: twoByOneMux port map(a=>tempa16, b=> tempa4, amt=>amt2, y=> tempb16);
            
            mC1:  twoByOneMux port map(a=>tempb1 , b=>tempb9, amt=>amt3, y=>tempc1);
            mC2:  twoByOneMux port map(a=>tempb2 , b=>tempb10, amt=>amt3, y=>tempc2);
            mC3:  twoByOneMux port map(a=>tempb3 , b=>tempb11, amt=>amt3, y=>tempc3);
            mC4:  twoByOneMux port map(a=>tempb4 , b=>tempb12, amt=>amt3, y=>tempc4);
            mC5:  twoByOneMux port map(a=>tempb5 , b=>tempb13, amt=>amt3, y=>tempc5);
            mC6:  twoByOneMux port map(a=>tempb6 , b=>tempb14, amt=>amt3, y=>tempc6);
            mC7:  twoByOneMux port map(a=>tempb7 , b=>tempb15, amt=>amt3, y=>tempc7);
            mC8:  twoByOneMux port map(a=>tempb8 , b=>tempb16, amt=>amt3, y=>tempc8);
            mC9:  twoByOneMux port map(a=>tempb9,  b=>tempb1, amt=>amt3, y=> tempc9);
            mC10: twoByOneMux port map(a=>tempb10, b=>tempb2, amt=>amt3, y=> tempc10);
            mC11: twoByOneMux port map(a=>tempb11, b=>tempb3, amt=>amt3, y=> tempc11);
            mC12: twoByOneMux port map(a=>tempb12, b=>tempb4, amt=>amt3, y=> tempc12);
            mC13: twoByOneMux port map(a=>tempb13, b=>tempb5, amt=>amt3, y=> tempc13);
            mC14: twoByOneMux port map(a=>tempb14, b=>tempb6, amt=>amt3, y=> tempc14);
            mC15: twoByOneMux port map(a=>tempb15, b=> tempb7, amt=>amt3, y=> tempc15);
            mC16: twoByOneMux port map(a=>tempb16, b=> tempb8, amt=>amt3, y=> tempc16);
            
            
            end Behavioral;
            
            
            
                            