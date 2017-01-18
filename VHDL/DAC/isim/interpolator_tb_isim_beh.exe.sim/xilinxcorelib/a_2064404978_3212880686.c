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
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
extern char *STD_STANDARD;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void xilinxcorelib_a_2064404978_3212880686_p_0(char *t0)
{
    char t29[16];
    char t37[16];
    char t39[16];
    char t46[16];
    char t48[16];
    char t52[16];
    char t56[16];
    char t61[16];
    char t63[16];
    char t67[16];
    char t71[16];
    char t76[16];
    char t78[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    int t25;
    unsigned char t26;
    char *t27;
    char *t30;
    char *t31;
    char *t32;
    int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t40;
    char *t41;
    int t42;
    unsigned int t43;
    char *t45;
    char *t47;
    char *t49;
    char *t50;
    int t51;
    char *t53;
    char *t54;
    char *t55;
    char *t57;
    char *t58;
    char *t60;
    char *t62;
    char *t64;
    char *t65;
    int t66;
    char *t68;
    char *t69;
    char *t70;
    char *t72;
    char *t73;
    char *t75;
    char *t77;
    char *t79;
    char *t80;
    int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;

LAB0:    t3 = (t0 + 2744U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    t5 = (!(t4));
    if (t5 == 1)
        goto LAB7;

LAB8:    t6 = (0 == 0);
    t2 = t6;

LAB9:    if (t2 == 1)
        goto LAB4;

LAB5:    t8 = (t0 + 2744U);
    t9 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t8, 0U, 0U);
    if (t9 == 1)
        goto LAB10;

LAB11:    t7 = (unsigned char)0;

LAB12:    t1 = t7;

LAB6:    if (t1 == 0)
        goto LAB2;

LAB3:    t88 = (t0 + 9912);
    *((int *)t88) = 1;

LAB1:    return;
LAB2:    t27 = (t0 + 15716);
    t30 = ((STD_STANDARD) + 384);
    t31 = (t0 + 2144U);
    t32 = *((char **)t31);
    t31 = (t0 + 15472U);
    t33 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t32, t31);
    t34 = xsi_int_to_mem(t33);
    t35 = xsi_string_variable_get_image(t29, t30, t34);
    t38 = ((STD_STANDARD) + 1008);
    t40 = (t39 + 0U);
    t41 = (t40 + 0U);
    *((int *)t41) = 1;
    t41 = (t40 + 4U);
    *((int *)t41) = 40;
    t41 = (t40 + 8U);
    *((int *)t41) = 1;
    t42 = (40 - 1);
    t43 = (t42 * 1);
    t43 = (t43 + 1);
    t41 = (t40 + 12U);
    *((unsigned int *)t41) = t43;
    t36 = xsi_base_array_concat(t36, t37, t38, (char)97, t27, t39, (char)97, t35, t29, (char)101);
    t41 = (t0 + 15756);
    t47 = ((STD_STANDARD) + 1008);
    t49 = (t48 + 0U);
    t50 = (t49 + 0U);
    *((int *)t50) = 1;
    t50 = (t49 + 4U);
    *((int *)t50) = 18;
    t50 = (t49 + 8U);
    *((int *)t50) = 1;
    t51 = (18 - 1);
    t43 = (t51 * 1);
    t43 = (t43 + 1);
    t50 = (t49 + 12U);
    *((unsigned int *)t50) = t43;
    t45 = xsi_base_array_concat(t45, t46, t47, (char)97, t36, t37, (char)97, t41, t48, (char)101);
    t50 = ((STD_STANDARD) + 384);
    t53 = xsi_int_to_mem(16);
    t54 = xsi_string_variable_get_image(t52, t50, t53);
    t57 = ((STD_STANDARD) + 1008);
    t55 = xsi_base_array_concat(t55, t56, t57, (char)97, t45, t46, (char)97, t54, t52, (char)101);
    t58 = (t0 + 15774);
    t62 = ((STD_STANDARD) + 1008);
    t64 = (t63 + 0U);
    t65 = (t64 + 0U);
    *((int *)t65) = 1;
    t65 = (t64 + 4U);
    *((int *)t65) = 4;
    t65 = (t64 + 8U);
    *((int *)t65) = 1;
    t66 = (4 - 1);
    t43 = (t66 * 1);
    t43 = (t43 + 1);
    t65 = (t64 + 12U);
    *((unsigned int *)t65) = t43;
    t60 = xsi_base_array_concat(t60, t61, t62, (char)97, t55, t56, (char)97, t58, t63, (char)101);
    t65 = ((STD_STANDARD) + 384);
    t68 = xsi_int_to_mem(16);
    t69 = xsi_string_variable_get_image(t67, t65, t68);
    t72 = ((STD_STANDARD) + 1008);
    t70 = xsi_base_array_concat(t70, t71, t72, (char)97, t60, t61, (char)97, t69, t67, (char)101);
    t73 = (t0 + 15778);
    t77 = ((STD_STANDARD) + 1008);
    t79 = (t78 + 0U);
    t80 = (t79 + 0U);
    *((int *)t80) = 1;
    t80 = (t79 + 4U);
    *((int *)t80) = 1;
    t80 = (t79 + 8U);
    *((int *)t80) = 1;
    t81 = (1 - 1);
    t43 = (t81 * 1);
    t43 = (t43 + 1);
    t80 = (t79 + 12U);
    *((unsigned int *)t80) = t43;
    t75 = xsi_base_array_concat(t75, t76, t77, (char)97, t70, t71, (char)97, t73, t78, (char)101);
    t80 = (t29 + 12U);
    t43 = *((unsigned int *)t80);
    t82 = (40U + t43);
    t83 = (t82 + 18U);
    t84 = (t83 + 2U);
    t85 = (t84 + 4U);
    t86 = (t85 + 2U);
    t87 = (t86 + 1U);
    xsi_report(t75, t87, (unsigned char)2);
    goto LAB3;

LAB4:    t1 = (unsigned char)1;
    goto LAB6;

LAB7:    t2 = (unsigned char)1;
    goto LAB9;

LAB10:    t11 = (t0 + 2304U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    if (t14 == 1)
        goto LAB13;

LAB14:    t11 = (t0 + 2304U);
    t17 = *((char **)t11);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)3);
    if (t19 == 1)
        goto LAB19;

LAB20:    t16 = (unsigned char)0;

LAB21:    if (t16 == 1)
        goto LAB16;

LAB17:    t15 = (unsigned char)0;

LAB18:    t10 = t15;

LAB15:    t7 = t10;
    goto LAB12;

LAB13:    t10 = (unsigned char)1;
    goto LAB15;

LAB16:    t23 = (t0 + 2144U);
    t24 = *((char **)t23);
    t23 = (t0 + 15472U);
    t25 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t24, t23);
    t26 = (t25 <= 16);
    t15 = t26;
    goto LAB18;

LAB19:    t11 = (t0 + 2144U);
    t20 = *((char **)t11);
    t11 = (t0 + 15472U);
    t21 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t20, t11);
    t22 = (t21 >= 16);
    t16 = t22;
    goto LAB21;

}

static void xilinxcorelib_a_2064404978_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:
LAB3:    t1 = (t0 + 9992);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void xilinxcorelib_a_2064404978_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:
LAB3:    t1 = (t0 + 10056);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void xilinxcorelib_a_2064404978_3212880686_init()
{
	static char *pe[] = {(void *)xilinxcorelib_a_2064404978_3212880686_p_0,(void *)xilinxcorelib_a_2064404978_3212880686_p_1,(void *)xilinxcorelib_a_2064404978_3212880686_p_2};
	xsi_register_didat("xilinxcorelib_a_2064404978_3212880686", "isim/interpolator_tb_isim_beh.exe.sim/xilinxcorelib/a_2064404978_3212880686.didat");
	xsi_register_executes(pe);
}
