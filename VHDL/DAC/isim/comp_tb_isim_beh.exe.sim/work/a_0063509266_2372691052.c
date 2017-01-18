/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/tom/firstprinciples-audio/VHDL/DAC/comp_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *STD_TEXTIO;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_2271993008_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0063509266_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4376);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3256);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4376);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3256);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0063509266_2372691052_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;

LAB0:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4264);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(105, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(107, ng0);
    t3 = (t0 + 3504);
    t7 = (t0 + 2792U);
    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t8 = (t0 + 6884U);
    t10 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t9, t8);
    std_textio_write5(STD_TEXTIO, t3, t7, t10, (unsigned char)0, 0);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 3504);
    t3 = (t0 + 2616U);
    t4 = (t0 + 2792U);
    std_textio_writeline(STD_TEXTIO, t1, t3, t4);
    goto LAB6;

}

static void work_a_0063509266_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int64 t14;

LAB0:    t1 = (t0 + 3944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(120, ng0);

LAB6:    t2 = (t0 + 4296);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t5 = (t0 + 4296);
    *((int *)t5) = 0;
    xsi_set_current_line(122, ng0);
    t2 = xsi_get_transient_memory(24U);
    memset(t2, 0, 24U);
    t3 = t2;
    memset(t3, (unsigned char)3, 24U);
    t6 = (23 - 23);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t5 = (t3 + t8);
    *((unsigned char *)t5) = (unsigned char)2;
    t9 = (t0 + 4440);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 24U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(124, ng0);
    t14 = (800 * 1000LL);
    t2 = (t0 + 3752);
    xsi_process_wait(t2, t14);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    t3 = (t0 + 992U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t4 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(126, ng0);
    t2 = xsi_get_transient_memory(24U);
    memset(t2, 0, 24U);
    t3 = t2;
    memset(t3, (unsigned char)2, 24U);
    t5 = (t0 + 4440);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 24U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(128, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_0063509266_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0063509266_2372691052_p_0,(void *)work_a_0063509266_2372691052_p_1,(void *)work_a_0063509266_2372691052_p_2};
	xsi_register_didat("work_a_0063509266_2372691052", "isim/comp_tb_isim_beh.exe.sim/work/a_0063509266_2372691052.didat");
	xsi_register_executes(pe);
}
