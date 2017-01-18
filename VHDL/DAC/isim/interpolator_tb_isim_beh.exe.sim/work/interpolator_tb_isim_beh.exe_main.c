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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *STD_TEXTIO;
char *XILINXCORELIB_P_1837083571;
char *IEEE_P_1242562249;
char *IEEE_P_3564397177;
char *XILINXCORELIB_P_0292540400;
char *XILINXCORELIB_P_0347517956;
char *XILINXCORELIB_P_2180628434;
char *IEEE_P_3499444699;
char *IEEE_P_0774719531;
char *IEEE_P_3972351953;
char *XILINXCORELIB_P_0567843662;
char *XILINXCORELIB_P_0249265902;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    std_textio_init();
    xilinxcorelib_p_1837083571_init();
    ieee_p_3564397177_init();
    xilinxcorelib_p_0292540400_init();
    xilinxcorelib_p_0347517956_init();
    xilinxcorelib_p_2180628434_init();
    xilinxcorelib_a_0603771330_3212880686_init();
    xilinxcorelib_a_3662482571_3212880686_init();
    work_a_1375962570_0681451590_init();
    xilinxcorelib_a_0047017559_3212880686_init();
    xilinxcorelib_a_1306502088_3212880686_init();
    work_a_1804515599_0718839327_init();
    xilinxcorelib_a_4267006726_3212880686_init();
    xilinxcorelib_a_2953236300_3212880686_init();
    work_a_2096475468_0723186728_init();
    xilinxcorelib_a_2214399669_3212880686_init();
    xilinxcorelib_a_2150015760_3212880686_init();
    work_a_0739738662_3013487713_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    ieee_p_3972351953_init();
    xilinxcorelib_p_0567843662_init();
    xilinxcorelib_p_0249265902_init();
    ieee_p_3620187407_init();
    xilinxcorelib_a_2736837929_3212880686_init();
    xilinxcorelib_a_2064404978_3212880686_init();
    work_a_1346362221_0492527432_init();
    work_a_0586331692_3212880686_init();
    work_a_1368295071_2372691052_init();


    xsi_register_tops("work_a_1368295071_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    XILINXCORELIB_P_0292540400 = xsi_get_engine_memory("xilinxcorelib_p_0292540400");
    XILINXCORELIB_P_0347517956 = xsi_get_engine_memory("xilinxcorelib_p_0347517956");
    XILINXCORELIB_P_2180628434 = xsi_get_engine_memory("xilinxcorelib_p_2180628434");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3972351953 = xsi_get_engine_memory("ieee_p_3972351953");
    XILINXCORELIB_P_0567843662 = xsi_get_engine_memory("xilinxcorelib_p_0567843662");
    XILINXCORELIB_P_0249265902 = xsi_get_engine_memory("xilinxcorelib_p_0249265902");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
