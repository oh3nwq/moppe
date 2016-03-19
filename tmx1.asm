#define VERSION_1 "5.0" 		! OH3NWQ 2006-03-25 22:08
! version
!                  ^^^
!                  3 chars
!

#define VERSION_3 "99"			! OH3NWQ 2006-03-26 00:01
! subversion
!		   ^^
!		   2 chars	
!

#define VERSION_2 "18.06.06"		! OH3NWQ 2006-03-26 00:01
! date
!		   ^^^^^^^
!                  dd.mm.yy
!		   8 chars	
!

#ifdef TMF1
#define VERSION_0 "TMF1 ", VERSION_1
#define BAND '7'
#else
#define VERSION_0 "TMN1 ", VERSION_1
#define BAND '2'
#endif

       
!----------------------------------------------------------------------
!
!  NOKIA MOBIRA TMx-1 phones (some at least, TMN1/TMF1 tested and proved working)
!
!  uPD7810 CPU
!  MB1501 or MB87006 PLLs
!  MAS 7845 LFU
!  MAS 7825 NMT-modem
!  MC144111 6bit DAC
!  i8253 timer
!  what else
!  and other misc fluff
!
!  Usable with reprogrammed handsets HSN2/HSF2 on MBUS
!
!
!  Sun Mar 26 17:33:18 EEST 2000
!  Juha Nurmela, OH5NXO
!
!  Dirty hands on Juha's software
!  Vesa Tervo, 	 OH3NWQ
!  oh3nwq@sral.fi
!
!  http://raapr.org/moppe/
!
!----------------------------------------------------------------------
!
! 	Nokia is a trade mark of Nokia Oyj, Finland 
! 	Mobira has at least been the trade mark of Nokia and 
!       later a the trade mark of Mobira SA, Argentina
!	Argentina is a country in America
!
! This program IS NOT, nor has it ever been, copyright of Nokia or Mobira.
! No copyrighted source code was used in making of this software.
! There was no need to reverse engineer the code.
! ...and I have never been in any part of America.
!
! 	Parts of the code, however, is written in Nokia. 
! 	Not the company, but at summer cottage, 
! 	which is located at the town of Nokia...
!
! For further copyright and software information, read the 
! "Vesa Tervo OH3NWQ Binary And Source Code License Agreement"
! at the end of the source code or the compiled binary code
!
!----------------------------------------------------------------------
! 
!
!	This software is given to - and only to - licensed ham radio 
!	operators FOR LICENSED RADIO AMATEUR USE. The software is given
! 	FREE OF CHARGE and AS IT IS. No warranty is given in any way, 
!	nor is the suitability guaranteed for any purpose.
! 	The user of this program takes the full responsibility 
! 	of any direct or indirect consequencies caused by 
! 	using this program. Using the program indicates that the
! 	USER ACCEPTS THIS STATEMENT, the agreement and acknowledges 
!	his/her responsibility.
! 	
!  To use the program you must read, understand and agree the license agreement 
!  at the end of the program source code and/or binary code
!
!----------------------------------------------------------------------

!----------------------------------------------------------------------
!
! Remember the new and improved CLK2 Hz. Danger of 921600 ints per second...
!
!----------------------------------------------------------------------

#define TESTCHAR 0x12


!                  ^^^^^^^^        
!shown             12345678ABCDEFGH
!                  vvvvvvvvvvvvvvvv


#define PROVERB   " raapr   .org   " /* v5.0 OH3NWQ */
!#define PROVERB  " What's cookin'?" /* v4.5 OH3NWQ */
!#define PROVERB  " Plays  For Sure" /* v4.4 OH3NWQ */
!#define PROVERB  "#ham.fi @ IRCnet" /* v4.2 OH3NWQ - come to where the flawor is */
!#define PROVERB  " Jo oli aikakin " /* v4.0 OH3NWQ */	
!#define PROVERB  " Hakuna  matata " /* v3.9 OH3NWQ */
!#define PROVERB  "Its goodto talk " /* v3.8 OH3NWQ - I know, it should be It's */
!#define PROVERB  "STARGATE  SG-1  " /* v3.7 OH3NWQ */
!#define PROVERB  " C2H5OH omskakas" /* v3.6 OH3NWQ */
!#define PROVERB  "Fortune cookie  " /* v3.5 OH3NWQ */
!#define PROVERB  "Low userIQ error" /* v3.4 OH3NWQ */
!#define PROVERB  "  TELE  NO SERV " /* v3.3 OH3NWQ */
!#define PROVERB  " F.U.B.   A.R.  " /* v3.2 OH3NWQ - insufficient user IQ error */
!#define PROVERB  "..on thebeach..." /* v3.1 OH3NWQ */
!#define PROVERB  "and for dessert?" /* v3.0 OH3NWQ */
!#define PROVERB  "Summer  vacation" /* v2.9 OH3NWQ */
!#define PROVERB  "Power   failure " /* v2.8 OH3NWQ */
!#define PROVERB  "Scott MeUp Beamy" /* v2.6 OH3NWQ */
!#define PROVERB  " I made   this  " /* v2.4 OH3NWQ - hmm, seen that before... */
!#define PROVERB  "oh3nwq @sral.fi " /* v2.3 OH3NWQ */
!#define PROVERB  "Warp 13, Mr.Sulu" /* v2.2 OH3NWQ */	
!#define PROVERB  "     You Stinker" /* v2.1 OH3NWQ */	
!#define PROVERB  " Hauskaa Wappua " /* v2.0 OH3NWQ */	
!#define PROVERB  " I made   this  " /* v1.7 OH3NWQ */	
!#define PROVERB  "Tnks forthe fish" /* v1.6 */
!#define PROVERB  "Dave, mymind is " /* v1.5 */
!#define PROVERB  " *YAWN*  Zzz... " /* v1.4 */
!#define PROVERB  "Hasta lavvista !" /* v1.3 */
!#define PROVERB  "I'll be back !  " /* v1.2 */

!----------------------------------------------------------------------
! 18.3.2000
!
! v1.1 OH5NXO
! Some CTCSS first cuts. Need an indicator ? The 'T' icon in LCD ?
! Center reading also.
! A/D warnings delayed.
!
! v1.2 OH5NXO
! Duplex area used and xmit limits verified.
! Center display polished (still in no particular units, maybe 15Hz / tick)
! 1+ etc for freq bump.
! +/- on xmit bump power.
!
! v1.4 OH5NXO
! Ugh.
!
! v1.5 OH5NXO
! Touch adint ANM reload (rssi 99 errors, did not help ?). <sure it did - de OH3NWQ>
! update_LFU_vol opened audio accidentally (keyclick x# errors).
! "dolby".
!
! v1.6 OH5NXO
! relay 
!
! v 1.7	OH3NWQ
!        - correction to the temperature measurements (now values go up when temp rises)
!        - charger menu
! 	 - battery voltage presented in hundreds of millivolts :)  
!
! v 1.8 OH3NWQ
!	 - voltage presented in volts e.g. 14.7V as instructed by oh5nxo
!
! v 1.9	OH3NWQ
!	 - adjusting the BCON
!
! v 2.0	OH3NWQ 
!	 - battery charger *should* work now
!	 - no current adjusting or monitoring
!	 - yäk, the battery algorithm looks bad as originally I had had
!	   the compare in the wrong way... ?xxx is skipped, not executed after true compare ...
!	   I will clean it up later - this part is learnt from oh5nxo... :)
!
! v 2.4 OH3NWQ 
!	 - battery charger should work *NOW*
!
! v 2.6 OH3NWQ
!	 - transverter set (showing the real vco frequency on tx -  f input with vco qrg)
!	 - automatic sanity checking and restoring the defaults
! 	 BUG - 99 MUTE - doesn't always return to normal mode
!	 - pin query  
!	 BUG - mbus collisions (now more than before??)
!
! v 2.7 OH3NWQ
! 	 - pin, now *** echoed (not really, if you look at the code)
!
! v 2.8 OH3NWQ
!        - last number of the pin query now checked
!
! v 2.9 OH3NWQ
! 	 - two software versions that can be used on TMx1 radios, 
!	   only the reset default values are different
!	 - the light control 
!        - corrected one bug and created intentionally another
!	 - working on the 99-mute - it is better now? 
!	   still work to do: exiting 99-mute opens sql, when started with sql closed & never opened
!
! v 3.0 OH3NWQ
!	 - corrected the default scanner band limits for TMN (f.sc2 > f.sc1)
!	 - finished the 99-mute
!	 - favourite qrg after reset_some
!	 - if sw change tmn1 <-> tmf1 do reset_some
! 	 - timeout counter for menu implemented - does not do anything though 
!
! v 3.1 OH3NWQ
!	 - sanity of the memories now checked on boot (not just parameters)
!	 - rejects respected in scanning
!	 - afc display sign corrected - frequency offset in Hz
!
! v 3.2 OH3NWQ
!	 - forgotten (low programmer IQ error)
!
! v 3.3 OH3NWQ
!	 - corrected missing label at checking rejects at sc1
!	 - moved the reject checking to a new common subroutine
!	 - sc3 scanner (4 memories at scanner setup)
!	 - sc4 scanner (memory scanner)
!
! v 3.4 OH3NWQ
!	 - better scanner 4 routine - not perfect, just better
!	 - configurable power display during tx
!	 - 99-mute cleared after hw-ptt
!
! v 3.5 OH3NWQ
!	 - testing ffsk sending (handset button)
! 	 - new percent_to_6msb table (in byte2x.asm)
!
! v 3.6 OH3NWQ
!	 - rx band scanning sc5
!	 - changed ctcss from tab to byte
!		.    0 = no tone 
!		.  123 = 123 Hz
!		.  255 = 255 Hz 
!		.  and so on
!	 - ctcss's saved on memories
!	 - status display shows the active ctcss tone
!	 - [T] on display = ctcss active
!
! v 3.7 OH3NWQ
!	- when overtemp & overvolt happened at the same time, overtemp was ignored...
!  	- ctcss recalled after scanning memories
!	- corrected saving ctcss info to byte (was word)
!
! v 3.8 OH3NWQ
!	- corrected the bug in ctcss
! 	- FCN=SHIFT sticky only for a few buttons 
!	- SHIFT 3694* sends now a DTMF string 3694
!	- MUTE when scanning rejects the frequency (zeroed at boot) 
!
! v 3.9 OH3NWQ
! 	- EMPTY shown on display if empty memory recalled
!	- Messages during memory and parameter sanitation
!	- current status display  42%+ means that battery 
!	  is charged with 42% of maximum current
!	- first thingies of rx band limits (does not check if repeater shift is used)
!	- corrected bug: txpwr display and 100% power.
!	- voltage status display now in volts with one decimal
!
! v 4.0 OH3NWQ
!       - added the contact information
!       - compiled in an xbox running gentoox linux
!
! v 4.1 OH3NWQ
!       - TMN1, 1.297.475 is a repeater channel, adjusted repeater band limits
!
!
! v 4.2 OH3NWQ
!	- setting the default band scan limits (scan 5) were missing in TMN1
!	- test responder mode in scanner: scans frequencies 
!	  and sends a packet when receives a carrier 
!
!
! v  4.3 OH3NWQ
!	- deleted v4.2 test responder functionality for now
!	  as you can't switch it off
!
!
! v  4.4 OH3NWQ
!	- testing the tx_on_carr again as now I have a semi-working
!	  eprommer again... 4.41 hmmm - it seems to work wrong way around
!
!
! v  5.0 OH3NWQ
!	- corrected the tx_on_carr and showing the version 
!	  number at startup 
!
!
!----------------------------------------------------------------------
!
! To do:
!
! xvtr -> correct the input of f...ing band limits / duplex limits / scanning etc
! xvtr -> displayed (intentionally) now only on rx
! [<->] transverter active 
!
! these button combinations are free for future use (shortcuts)
! fcn PTT ... PTT
! fcn 1   ... 1
! fcn 2   ... 2
! fcn 3   ... 3
! fcn 4   ... 4
! fcn 5   ... 5
! fcn 6   ... 6
! fcn 7   ... 7
! fcn 8   ... 8
! fcn 9   ... 9
! fcn 0   ... 0
! fcn o-o ... o-o
! fcn HF  ... HF
! fcn *   ... *


#ifndef TMN1
#ifndef TMF1
	assign 99=69
#endif
#endif



#define MBUSID "TMx1"
#define HS_ID  "HSN2"

!----------------------------------------------------------------------
!
!used in many places
OFF = 0
ON  = 1

!----------------------------------------------------------------------
!
!  extended keycodes, 'X' '.', where
!  "XB" is extension bus (address and data follow)
!  "XC" is CW output      (text to send follow)
!  "XT" is ctcss output
!  "XD" is DTM........ hmmm.... yay.

!----------------------------------------------------------------------
!
!  portpins
!
!  PA
!
!  DATA and DTC are suitable for future expansion, now they are
!  left as unused inputs (there is 100kohm pulldown).
!  Very conveniently routed to the SIS module.
!  Remember the mode-trick for i2c later (flip between input and output,
!  and keep output latch at "0").
!  SCL/SDA not i2c although the names imply so.
!
SCL    = 0x01 ! output synth, D/A, LFU (and eeprom)
SDA    = 0x02 ! in/out synth, D/A, LFU
TSLG   = 0x04 ! output tx synth loopgain, "1" = slow, "0" = fast
DATA   = 0x08 ! in/out unused as of today.
LFUSTB = 0x10 ! output LFU strobe
CRM    = 0x20 ! output car radio mute
EXTA   = 0x40 ! output external alert
DTC    = 0x80 ! in/out unused as of today (+PTT in Pavel's software)
!
!  PB
!
!  EEOFF kept low, to get +5V, GND and /PTT into eeprom slot.
!
SD68   = 0x01 ! output 6/8V portable/car
TSEN   = 0x02 ! output tx synth enable pulse
RSEN   = 0x04 ! output rx synth enable pulse
PB3_NC = 0x08 ! no connection ? Available, how nice.
TXON   = 0x10 ! output tx supply "1"
TSON   = 0x20 ! output tx synth supply "1"
TAON   = 0x40 ! output tx audio supply "1"
EEOFF  = 0x80 ! output eeprom supply, "0" to supply +5V
!
!  PC
!
! PC0  = TXD output
! PC1  = RXD input
!
I2DA   = 0x04 ! in/out eeprom i2c data. Nominated as the /PTT. 10kohm pullup.
PAGE   = 0x08 ! output select eprom page at 0x8000, 1=flip from 0xC000
DADIS  = 0x10 ! output D/A enable, low active, thus DA DISABLE
! PC5  = CI input (aka netfree)
WDCLR  = 0x40 ! output watchdog clear, 2usec every 100msec says authotrity
PWROFF = 0x80 ! output power-off telephone
!
!  A/D inputs
!
! AN0 FSKL
! AN1 BCR  battery current
! AN2 BTMP battery temperature
! AN3 RSSI
! AN4 PFB  power feedback
! AN5 BATT +12V
! AN6 TEMP ambient temperature
! AN7 TIMEOUT (huh ? oh, yes. low in cold start)
!
!  chipselects
!
MODEM_DATA = 0xC000 ! MAS7825 modem    aka MENA
MODEM_CSR  = 0xC001

i8253_TMR0 = 0xC400 ! i8253 timer      aka TENA (confusing name)
i8253_TMR1 = 0xC401
i8253_TMR2 = 0xC402
i8253_CTRL = 0xC403

SISE  = 0xC800 ! Sis processor ? unwired chipselect to audio card
AMULE = 0xD400 ! 74259 AMU/LE (deviation latch) 3 LSbits for SMOD (D0 A0..2)

!----------------------------------------------------------------------
!
!  output latch on audio module, 74259, A2..0 and D0
!

!----------------------------------------------------------------------
!
!  Datatypes the menu supports
!
CFG_NOTYPE 	= 0
CFG_FREQ   	= 1
CFG_FOFF   	= 2
CFG_TAB    	= 3
CFG_DIGIT  	= 4
CFG_BYTE   	= 5
CFG_MSEC   	= 6
CFG_SEC    	= 7
CFG_MINUTE 	= 8
CFG_STRING 	= 9
CFG_DYN    	= 10
CFG_RST    	= 11
CFG_EXEC   	= 12	! XXX no functionality yet
CFG_WORD   	= 13
CFG_PERCENT	= 14
CFG_HELP   	= 15 
CFG_VOLT   	= 16	! OH3NWQ
CFG_BYTE_UPDATE = 17	! OH3NWQ
CFG_DYN_I	= 18	! OH3NWQ
CFG_DYN_V	= 19	! OH3NWQ 
CFG_PIN		= 20    ! OH3NWQ 06.06.00 23:06
CFG_FREQ_CONST  = 21	! OH3NWQ 18.06.00 16:19
CFG_CTCSS	= 22 	! OH3NWQ 09.07.00 17:02

CFG_CONSTANT    = 0x80	! ORed into type

!----------------------------------------------------------------------
!
!  external RAM 8192 bytes
!  stack is located at the end of the ram.
!  Remember, workarea only 256 bytes (V.wa)
!  DO NOT CHANGE V from workarea !

	.data
	.org 0xE000
ram:
!----------------------------------------------------------------------
!
!  Configurable data. Keep each variable name and .rs on one row.
!
#define SIZE_FREQ 3 /* 24 bits for binary freq in kHz */
#define SIZE_MSEC 2 /* millisecs as a word */

!= start of nonvolatile area ==========================================
cfg_start_area:

	cfg_alertvol:       	.rs 1
	cfg_keyclick:       	.rs 1

	cfg_ccir_idx:       	.rs 1
	cfg_dtmf_idx:       	.rs 1

	cfg_mic_gain:       	.rs 1
	cfg_mic_src:        	.rs 1

	cfg_onhook_act:     	.rs 1

	cfg_mycall:         	.rs 8
	cfg_my_mbusid:      	.rs 4
	cfg_lights:	    	.rs 1  		! seconds ! OH3NWQ 23.05.00 19:36		

	cfg_if_dir:         	.rs 1 		! table of above, below
	cfg_if_freq:        	.rs SIZE_FREQ
	cfg_afc_ctrl:       	.rs 1 		! percent value
	cfg_deviation:      	.rs 1	 	! percent value
	cfg_lfu_vol:        	.rs 1

	cfg_tx_timer:       	.rs 1 		! minutes
	cfg_tx_delay:      	.rs SIZE_MSEC

	cfg_chan_step:      	.rs 1 		! table of 25, 20, 12.5 or 10

	cfg_txband_high:    	.rs SIZE_FREQ
	cfg_txband_low:     	.rs SIZE_FREQ
	cfg_txpwr:          	.rs 1           ! percents
	cfg_rxband_high:    	.rs SIZE_FREQ
	cfg_rxband_low:     	.rs SIZE_FREQ
	cfg_freq_implied:   	.rs SIZE_FREQ
	cfg_my_favorite:    	.rs SIZE_FREQ
	cfg_callfreq:       	.rs SIZE_FREQ
	cfg_rptr_area_high: 	.rs SIZE_FREQ
	cfg_rptr_area_low:  	.rs SIZE_FREQ
	cfg_duplex_dir:     	.rs 1
	cfg_duplex_off:     	.rs SIZE_FREQ

	cfg_xvtr_switch:	.rs 1		! tab
	cfg_xvtr_offset:	.rs SIZE_FREQ	! frequency
	cfg_xvtr_multiply:	.rs 1 		! 1,2,3,...byte

	cfg_pin_code:       	.rs 8
	cfg_pin_length:		.rs 1   ! OH3NWQ 06.06.00
	cfg_pin_type:       	.rs 1
		!OFF = 0	! OH3NWQ 08.06.00 
		!ON  = 1	! OH3NWQ 08.06.00 

	cfg_sc1_high:       	.rs SIZE_FREQ
	cfg_sc1_low:        	.rs SIZE_FREQ
	cfg_sc2_high:       	.rs SIZE_FREQ
	cfg_sc2_low:        	.rs SIZE_FREQ
	cfg_sc3_freq_0:     	.rs SIZE_FREQ
	cfg_sc3_freq_1:     	.rs SIZE_FREQ
	cfg_sc3_freq_2:     	.rs SIZE_FREQ
	cfg_sc3_freq_3:     	.rs SIZE_FREQ
	cfg_sc5_low:       	.rs SIZE_FREQ
	cfg_sc5_high:     	.rs SIZE_FREQ

	cfg_scan_wait:      	.rs 1  		! SECONDS
	cfg_scan_pers:      	.rs 1  		! MINUTES
	cfg_scan_listen:    	.rs 1  		! SECOND
	cfg_scan_unreject:  	.rs 1  		! MINUTE
	cfg_autoscan_time:  	.rs 1
	cfg_reject_0:       	.rs SIZE_FREQ
	cfg_reject_1:       	.rs SIZE_FREQ
	cfg_reject_2:       	.rs SIZE_FREQ
	cfg_reject_3:       	.rs SIZE_FREQ
	cfg_reject_4:       	.rs SIZE_FREQ
	cfg_reject_5:       	.rs SIZE_FREQ
	cfg_reject_6:       	.rs SIZE_FREQ
	cfg_reject_7:       	.rs SIZE_FREQ
	cfg_reject_8:       	.rs SIZE_FREQ
	cfg_reject_9:       	.rs SIZE_FREQ

	cfg_sqdelay:        	.rs SIZE_MSEC
	cfg_sqhyst:         	.rs 1           ! percent value
	cfg_sqlevel:        	.rs 1           ! percent value
	cfg_sqtail:         	.rs SIZE_MSEC
	cfg_step_rate:      	.rs SIZE_MSEC

	cfg_txtone1:        	.rs 8
	cfg_txtone2:        	.rs 8
	cfg_txtone3:        	.rs 8
	cfg_txtone4:        	.rs 8
	cfg_txtone5:        	.rs 8
	cfg_txtone6:        	.rs 8
	cfg_txtone7:        	.rs 8
	cfg_txtone8:        	.rs 8

	cfg_script_0:       	.rs 8 ! executable scripts
	cfg_script_1:       	.rs 8
	cfg_script_2:       	.rs 8
	cfg_script_3:       	.rs 8
	cfg_script_4:       	.rs 8
	cfg_script_5:       	.rs 8
	cfg_script_6:       	.rs 8
	cfg_script_7:       	.rs 8
	cfg_script_8:       	.rs 8
	cfg_script_9:       	.rs 8

	cfg_ctcss_tone:      	.rs 1  ! BYTE
	cfg_roger_idx:      	.rs 1  ! "Shirley, don't call me Roger"

    	cfg_cw_speed:       	.rs 2  ! WORD
    	cfg_cw_pitch:       	.rs 2  ! WORD

	cfg_dolby:          	.rs 1  ! TAB

	cfg_offhook_act:    	.rs 1  ! TAB, 0 NONE

	cfg_volt_warn:      	.rs 1  ! PERCENT
	cfg_temp_warn:      	.rs 1  ! PERCENT

	cfg_lazy_beep:      	.rs 1  ! TAB, 0 OFF
	
	cfg_charger_switch: 	.rs 1	! TAB, 0 OFF
		!OFF     = 0
		!ON      = 1
		
	cfg_charger_v_end:	.rs 1	! BYTE
	cfg_charger_v_resume:	.rs 1	! BYTE
	cfg_charger_t_end:	.rs 1	! BYTE
	cfg_charger_t_resume:	.rs 1	! BYTE
	
	cfg_bcon:	 	.rs 1   ! percent
	cfg_bcon_trickle:  	.rs 1   ! percent

 	cfg_tx_on_carr:		.rs 1   ! TAB, 0 OFF   ! OH3NWQ 2005-07-11 19:55
 	
 	cfg_XXX_0:         	.rs 4
 	cfg_XXX_1:          	.rs 4
 	cfg_XXX_2:          	.rs 4
 	cfg_XXX_3:          	.rs 4
 	
	cfg_pmr_band_low:	.rs SIZE_FREQ	! OH3NWQ 18.06.00 16:04
	cfg_pmr_band_high: 	.rs SIZE_FREQ	! OH3NWQ 18.06.00 16:04

	sanity_parameters:	.rs 1	! =TESTCHAR if memory is sane 
	sanity_band:		.rs 1	! =BAND if changed do reset_some
					! move these to another place or change values to
					! force reset_some on new version
	cfg_pwr_disp:		.rs 1

cfg_end_area:

!----------
		MEM_max = 100		! number of mammaries	0..MEM_max-1
		
		MEM_flags  =  0 				  	!  1 byte misc flags
		MEM_rx     =  1 				  	!  3 bytes rx freq
		MEM_offtx  =  1+SIZE_FREQ 			  	!  3 bytes offset or separate tx
		MEM_name   =  1+SIZE_FREQ+SIZE_FREQ 		  	!  3 bytes name
		MEM_ctcss  =  1+SIZE_FREQ+SIZE_FREQ+SIZE_FREQ	  	!  1 byte  for ctcss
		
		MEM_dummy1 =  1+SIZE_FREQ+SIZE_FREQ+SIZE_FREQ+1		!  1 byte RFU
		MEM_dummy2 =  1+SIZE_FREQ+SIZE_FREQ+SIZE_FREQ+2		!  1 byte RFU
		MEM_dummy3 =  1+SIZE_FREQ+SIZE_FREQ+SIZE_FREQ+3		!  1 byte RFU
		MEM_dummy4 =  1+SIZE_FREQ+SIZE_FREQ+SIZE_FREQ+4		!  1 byte RFU
		MEM_dummy5 =  1+SIZE_FREQ+SIZE_FREQ+SIZE_FREQ+5		!  1 byte RFU
		MEM_size   =  1+SIZE_FREQ+SIZE_FREQ+SIZE_FREQ+6 	! 16 bytes per memory total

		MEM_EXIST  	= 0x01
		MEM_SCAN   	= 0x02
		MEM_REJECT 	= 0x04	! temporary reject 	! OH3NWQ 08.07.00 18:02 
		MEM_DUPLEX 	= 0x10
		MEM_OFFTX  	= 0x20
		MEM_TONE  	= 0x40  ! OH3NWQ 08.07.00

	.org ram + 2047 - MEM_max * MEM_size
	sanity_memories:	.rs 1				! OH3NWQ 25.06.00 18:30

	.org ram + 2048 - MEM_max * MEM_size
memories:

	.org ram + 2048          ! 2 kB for config and memories
end_memories:

size_memories = end_memories - memories
config_slack  = memories - cfg_end_area

ASSERT(MEM_max < 101)
ASSERT(config_slack > 0)

workarea: ! XXX cook up some macros to give "safety" with LO(var)

	volume:       		.rs 1
	rx_freq:      		.rs SIZE_FREQ
	tx_freq:      		.rs SIZE_FREQ
	duplex_state:		.rs 1

	scan_mode:    		.rs 1  	! last scan modes used, a mask
	scan_state:   		.rs 1  	! 0 or ...
		! OFF     = 0
 		STEPPING   = 1
 		WAITING    = 2
 		LISTENING  = 3
 		WORKING_HF = 94
		WORKING_PACKET_RADIO = 99

	mem_idx:      		.rs 1
	mem_flags:    		.rs 1
	mem_name:     		.rs 3

end_nonvolatile: !=========================================================

 	scan_which:		.rs 1	! OH3NWQ 25.06.00 18:59
 		SC_1 = 0x01	! repeater channels
 		SC_2 = 0x02	! simplex channels
		SC_3 = 0x04	! list of 4 channels   	  
 		SC_4 = 0x08	! memory channels   	  
 		SC_5 = 0x10	! whole rx band scan   	 
 		
 		SC_6 = 0x20	! PMR channels		  -  *WON'T BE DONE EVER*
		SC_7 = 0x40	! 3694 / 3699 scan   	  -  *WON'T BE DONE EVER*
 		SC_8 = 0x80	! packet radio channels   -  *WON'T BE DONE EVER*

 	scan_number:		.rs 1	! OH3NWQ 25.06.00 18:59
 		
	charger_state:		.rs 1
		!OFF 	    = 0
		CHARGE      = 1
		SUSPEND     = 2
 
	charger_suspend:   	.rs 1
		!OFF        = 0
		OVERTEMP    = 0x5F	! =  95
		OVERVOLT    = 0xA0	! = 160

	charger_switch_old: 	.rs 1	! OH3NWQ 01.05.00 14:14
  
	tx_on:	       		.rs 1  ! LSbit for real txon, rest for "want"
	tx_pinned:   		.rs 1  ! xmit frequency is pinned down, separate from rx.

	vco_freq:     		.rs SIZE_FREQ
	scratch_freq: 		.rs SIZE_FREQ

	rx_freq_display: 	.rs SIZE_FREQ	! OH3NWQ 11.05.00 22:16
	tx_freq_display: 	.rs SIZE_FREQ	! OH3NWQ 11.05.00 22:16
	
	rx_div:      		.rs 6  ! programmable divider + reference divider, longs
	tx_div:      		.rs 6  ! programmable divider + reference divider, longs

	ctcss_tone:		.rs 1  ! OH3NWQ 09.07.00 14:43
	ctcss_active:		.rs 1  ! OH3NWQ 11.07.00

	i2c_jmpbuf:  		.rs 2  ! setjmp/longjmp stack state for errors.
	i2c_MA:      		.rs 1  ! shadow MA register (during i2c access)

	lfu_regs:    		.rs 4  ! All 4.

	rssi:        		.rs 1
	rssi_prev:   		.rs 1
	pfb:         		.rs 1
	pfb_prev:    		.rs 1
	sig_peak:    		.rs 1  ! for display purposes, peak here for 1 second
	sqopen:      		.rs 1
	sq_forced:   		.rs 1
	sq_changed:  		.rs 1
	
	timer_sig:   		.rs 1  ! ticks
	timer_sq:    		.rs 1  ! ticks

	timer_step:  		.rs 1  ! ticks
	timer_scan:  		.rs 1  ! seconds
	timer_pers:  		.rs 1  ! minutes

	timer_fcn:   		.rs 1  ! seconds
	timer_light:   		.rs 1  ! seconds
	timer_menu:  		.rs 1  ! minutes

	status_light:		.rs 1  ! boolean OFF/ON

	chr_curr:    		.rs 1
	chr_prev:    		.rs 1
	kbd_flags:   		.rs 1
	 	SHIFT     = 0x01
	 	ALPHA     = 0x02
	 	KEYLOCK   = 0x04		
	 	!T_MARKER = 0x08	! OH3NWQ 10.07.00 20:42
	 	!LEFT	  = 0x10	! OH3NWQ 10.07.00 20:42
	 	!RIGHT	  = 0x20	! OH3NWQ 10.07.00 20:42
	 	!MINUS	  = 0x40	! OH3NWQ 10.07.00 20:42

	alpha_idx:   		.rs 1
	kbd_index:   		.rs 1
	kbd_index_old:		.rs 1  ! OH3NWQ 08.06.00 21:24	
	kbd_buffer:  		.rs 8
	prt_buffer:  		.rs 16 ! scratch for printouts
	alpha_box:   		.rs 1

	timer_ticks:    	.rs 1  ! ticks (gnah :)
	timer_kbd_idle: 	.rs 1  ! ticks
	timer_notices:  	.rs 1  ! cleared every minute

	timer_txon:     	.rs 1  ! minutes

	subseconds: 		.rs 1
	seconds:    		.rs 1
	minutes:    		.rs 1
	hours:      		.rs 1

	pending_notices: 	.rs 1 ! any warnings/etc printed lately ?
	delay_temp:      	.rs 1
	delay_batt:      	.rs 1
	
	current:		.rs 1  ! OH3NWQ 19.07.00 18:16

	afc_count:       	.rs 2  ! Center measurement in raw form
	mute_99_active:		.rs 1  ! OH3NWQ 23.05.00 13:06

	menu_active: 		.rs 1 ! bool
	menu_ptr:    		.rs 2 ! current record in menu, top or sub
	menu_topptr: 		.rs 2 ! toplevel ptr, recall when rising
	
	pin_query_active:	.rs 1 ! bool
	
	temp_reject_0:       	.rs SIZE_FREQ
	temp_reject_1:       	.rs SIZE_FREQ
	temp_reject_2:       	.rs SIZE_FREQ
	temp_reject_3:       	.rs SIZE_FREQ
	temp_reject_4:       	.rs SIZE_FREQ
	temp_reject_5:       	.rs SIZE_FREQ
	temp_reject_6:       	.rs SIZE_FREQ
	temp_reject_7:       	.rs SIZE_FREQ
	temp_reject_8:       	.rs SIZE_FREQ
	temp_reject_9:       	.rs SIZE_FREQ

	timer_temp_reject:	.rs 1	! minutes  - count down for temporary rejects
	temp_reject_count:	.rs 1

!  A/D converter is in scan mode, INTAD used, ad_int refreshes
!  half of ad_regs per interrupt, uses ad_ptr for quickish [HL] stores
!  and there is another yucko hack with ring incrementing.

	ad_ptr:  		.rs 2
	
	.align 4
	ad_regs:            ; ASSERT((ad_regs & 0xF) == 0)
	ad_FSKL: 		.rs 1
	ad_BCR:  		.rs 1
	ad_BTMP: 		.rs 1
	ad_RSSI: 		.rs 1
	ad_PFB:  		.rs 1
	ad_BATT: 		.rs 1
	ad_TEMP: 		.rs 1
	ad_LOCK: 		.rs 1
	
        ASSERT(. == ad_regs + 8)

end_workarea:

	ASSERT(. <= workarea + 256)

!------------------------------------------------------------

#include "mbus.asm" /* get the variables */

!----------------------------------------------------------------------


	.org 0xFFFE
stack:

!----------------------------------------------------------------------
!
!
!
	.text
!--------------------
begin:
	.org 0x0000     ! /RESET
	di
	jmp _start

!--------------------
	.org 0x0004     ! /NMI - restart
	jmp begin

!
!  Flags are not tested when entrypoints
!  have only one unmasked source.
!  The flag will be automatically cleared (when vectoring ?).
!
!--------------------
	.org 0x0008     ! INTT1 - 112 Hz (INTT0 not used)
	jmp systick

!--------------------
	.org 0x0010     ! INT1 /INT2
	ei
	reti

!--------------------
	.org 0x0018     ! INTE0 - timer/event counter, NETFREE indication
	jmp netfree

!--------------------
	.org 0x0020     ! INTEIN INTAD - CI/TO edge, A/D complete (AD used)
	jmp adint

!--------------------
	.org 0x0028     ! INTST INTSR - serial port (both interrupts unmasked)
	jmp serint

	ASSERT(. <= 0x0060) ! catch overrun
!--------------------
	.org 0x0060     ! SOFTI - software interrupt (might be used)
	reti

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  Call table
!
#define CALT_REC(x) tab_/**/x = (. - 0x0080) / 2; .word x;
	ASSERT(. <= 0x0080) ! catch overrun
!--------------------
	.org 0x0080

	ASSERT(. <= 0x00C0) ! End of call table

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  interrupt functions, no register saved yet
!

systick:
	ori PC, WDCLR
	exa
	exx

	mov A, [timer_ticks]
	sui A, 1
	aci A, 0
	mov [timer_ticks], A         ! crawls to 0, from max 255

	mov A, [timer_sig]
	sui A, 1
	aci A, 0
	mov [timer_sig], A           ! crawls to 0, from max 255

	mov A, [timer_kbd_idle]
	adi A, 1
	sbi A, 0
	mov [timer_kbd_idle], A      ! crawls to 255

	mov A, [timer_sq]
	gti A, 1
	?jr 1f
	sui A, 1
	mov [timer_sq], A            ! stays at 0 or 1, crawls to 1, from max 255
1:
	mov A, [timer_step]
	gti A, 1
	?jr 1f
	sui A, 1
	mov [timer_step], A          ! stays at 0 or 1, crawls to 1, from max 255
1:
	mov A, [subseconds]
	adi A, 1
	mov [subseconds], A
	gti A, 111
	?jr 1f
	call asecond
	mvi A, 0
	mov [subseconds], A
1:
	mov A, [subseconds]
	ani A, 0xF
	xri A, 0xE
	nei A, 0
	?call check_charger

	mov A, [subseconds]	! once a second Save AFC count 
	ani A, 0x7F		! 111 = 6f = 110 1111
	xri A, 0x37
	nei A, 0
	?call afc_meas
!-
	neiw LO(menu_active), OFF
	?jmp 1f

	mov A, [timer_menu]	! OH3NWQ 25.05.00 11:32
	nei A, 0		
	?jmp 1f			! OH3NWQ 26.05.00 if 0 timer already elapsed

	mov A, [subseconds]	! menu timer  
	ani A, 0x7F		! has a second elapsed?
	xri A, 0x43
	eqi A, 0
	?jmp 1f			! not now John, I have a headache
	mov A, [timer_menu]	! OH3NWQ 25.05.00 11:32
	gti A, 1		! OH3NWQ 25.05.00 11:32
	?call menu_timeout	! OH3NWQ 25.05.00 11:32
	
	mov A, [timer_menu]	
	sui A, 1
	mov [timer_menu], A  	! menu off at 1 - stays at 0 
!-
1:
	mov A, [subseconds]
	
	ani PC, ~WDCLR
	exx
	exa
	ei
	reti

! each either returns or falls into next at overflow

asecond: !----------------------------------------

	!call afc_meas        	! Save AFC count every second (could be tighter)
	call check_charger	! OH3NWQ 29.4.00 check charger every second - now 111/16 times a second

	mov A, [timer_scan]
	gti A, 1
	?jr 1f
	sui A, 1
	mov [timer_scan], A	! stays at 0 or 1, crawls to 1 from 255
1:
	mov A, [timer_light]	! OH3NWQ 18.06.00 12:12
	gti A, 1		! OH3NWQ 18.06.00 12:12
	?jr 1f			! OH3NWQ 18.06.00 12:12
	sui A, 1		! OH3NWQ 18.06.00 12:12
	mov [timer_light], A    ! stays at 0 or 1, crawls to 1 from 255
1:

	mov A, [timer_fcn]
	sui A, 1
	aci A, 0
	mov [timer_fcn], A   ! crawls to 0

	mov A, [seconds]     !----------------------
	adi A, 1             !
	mov [seconds], A     !
	gti A, 59            !
	?ret                 !
	mvi A, 0             !
	mov [seconds], A     !----------------------

aminute: !----------------------------------------

	!mov A, [cfg_bcon]       	! OH3NWQ 30.4.00 - hack
	!mov [set_bcon], A		! hack - the charger current setting
	!call DAC_update		! takes place at next minute - hack
				 	! to be correted later (TM) 
				 	! deleted later = 30-04-00 22:13
	mvi A, 0
	mov [pending_notices], A

	mov A, [timer_txon]
	sui A, 1
	aci A, 0
	mov [timer_txon], A

	mov A, [timer_pers]
	gti A, 1
	?jr 1f
	sui A, 1
	mov [timer_pers], A  ! stays at 0 or 1, crawls to 1 from 255
1:
	mov A, [minutes]     !-----------------------
	adi A, 1             !
	mov [minutes], A     !
	gti A, 59            !
	?ret                 !
	mvi A, 0             !
	mov [minutes], A     !-----------------------

ahour: !----------------------------------------
	mov A, [hours]       !-----------------------
	adi A, 1             !
	mov [hours], A       !
	gti A, 23            !
	?ret                 !
	mvi A, 0             !
	mov [hours], A       !-----------------------

aday: !----------------------------------------

	ret

!----------------------------------------------------------------------
!
!  Save current A/D half, prepare for next.
!  HL wraps back to ad_regs xxx0 from xxx8.
!
adint:
	exa
	exh
	lhld [ad_ptr]
	mov A, CR0
	stax [HL]+
	mov A, CR1
	stax [HL]+
	mov A, CR2
	stax [HL]+
	mov A, CR3
	stax [HL]+
	ani L, ~0x08    ; ASSERT((ad_regs & 0xF) == 0)
	shld [ad_ptr]   ! xxx4 when next round is 4,5,6,7; xxx0 when next 0,1,2,3
	mov A, L        ! x0 or x4
	ani A, 0x04     ! 00 or 04
	sll A           ! 00 or 08 (ANI2 bit)
	mov ANM, A
	skit INTFAD     ! fresh readings
	?nop
	exh
	exa
	ei
	reti

!----------------------------------------------------------------------
!!----------------------------------------------------------------------
!!
!!  SYNTHESIZERS
!!
!!  By adding some extra bits,
!!  this works on both MB87006 and MB1501 PLLs.
!!                     10+7        11+7   dividers
!!
!!  Linear NA is (again) used to skip the N,A division.
!!  This time it would be simple;
!!    lxi HL, rx_div             ! 17 or 18 effective bits (max. (with 128/129))
!!    lxi DE, rx_N               ! receives N-number
!!    mov B, [cfg_prescaler]
!!    call divide_long_by_B      ! B replaced by A-number
!!
!!  MB87006 largest divisor 131071 * 10 kHz = 1310.710 MHz	(2^17-1)
!!                       128 * 128 * 25 kHz =  409.600 MHz
!!                       128 * 128 * 12.5   =  204.800 MHz
!!
!!  MB1501  largest divisor 262143 * 10 kHz = 2621.430 MHz	(2^18-1)
!!                       128 * 128 * 25 kHz =  409.600 MHz
!!                        64 *  64 * 25 kHz =  102.400 MHz (unsupported yet)
!!                        64 *  64 * 12.5   =   51.200 MHz (unsupported yet)
!!
!  Preparation. Once only. Nothing to do.
!  The extra MSbit in reference divider of MB1501 is set to 0,
!  so it has the same 128/129 prescaler like MB87006 cards.
!

synth_init:
	ret

synth_receive:

	mov A, [rx_div + 4]       ! extra bit or two
	call synth_byte
	mov A, [rx_div + 3]
	call synth_byte

	mvi A, 0xFF
	call synth_bit            ! C=1

	ori PB, RSEN
	nop                       ! xtal/3 = state, 4 states, 1 nop about 1usec ok
	nop
	ani PB, ~RSEN             ! end pulse.

	mov A, [rx_div + 2]
	call synth_byte       ! actually only 2 LSbits used ever
	mov A, [rx_div + 1]
	call synth_byte
	mov A, [rx_div + 0]
	call synth_byte

	mvi A, 0x00
	call synth_bit        ! C=0

	ori PB, RSEN
	nop
	nop
	ani PB, ~RSEN
	ret

synth_xmit:

	mov A, [tx_div + 4]       ! extra bit or two
	call synth_byte
	mov A, [tx_div + 3]
	call synth_byte

	mvi A, 0xFF
	call synth_bit            ! C=1

	ori PB, TSEN
	nop
	nop
	ani PB, ~TSEN

	mov A, [tx_div + 2]
	call synth_byte       ! actually only 2 LSbits used ever
	mov A, [tx_div + 1]
	call synth_byte
	mov A, [tx_div + 0]
	call synth_byte

	mvi A, 0x00
	call synth_bit        ! C=0

	ori PB, TSEN
	nop
	nop
	ani PB, ~TSEN
	ret

synth_byte:
	call 1f ; call 1f; call 1f; call 1f
	call 1f ; call 1f; call 1f

synth_bit:
1:
	sllc A
	?ani PA, ~SDA
	skn CY
	?ori PA, SDA
	nop
	nop
	ori PA, SCL      ! rising edge seems the active one
	nop
	nop
	ani PA, ~SCL
	ret

!
!  vco freq at [HL] into divisor/refdiv [DE] and back over freq.
!  _ref is also updated. XXX this could (should) be totally generic.
!  XXX 25 works down to 409 MHz, VHF could not work even with 12.5.
!  XXX Should parametrize prescalers too !
!  Area near 380...409 MHz uses 12.5 kHz (128/129 limitation from dual
!  modulus prescalers).
!
ponder_about_freq:

	mvi B, 25                    ! 25 kHz
	call divide_long_by_B        ! [DE] = [HL] / 25, B has remainder.

	nei B, 0
	?jmp ponder_takes_25         ! ?Not. exact division = accept.
	nei B, 1
	?jmp ponder_takes_25         ! ?Not. 1kHz offset = accept anyway.
	nei B, 24
	?jmp ponder_takes_25         ! ?Not. -1kHz offset = accept anyway.

	nei B, 12
	?jmp ponder_takes_12_5       !  go there when 12.5 works (rounded I/F)
	nei B, 13
	?jmp ponder_takes_12_5       !  go there when 12.5 works (F/I dednuor)

	mvi B, 20
	call divide_long_by_B        ! [DE] = [HL] / 20, B has remainder.

	nei B, 0
	?jmp ponder_takes_20         ! ?Not. exact division = accept.

! each ponder_takes_XXX still has remainder of division in B

ponder_takes_10:
	mvi B, 10
	call divide_long_by_B        ! redo /, shift would be a tad quicker.
	mvi C, 10
	lxi EA, 1280                 ! 12800 / 1280 gives 10 kHz,
	jmp ponder_continues

ponder_takes_20:
	mvi C, 20
	lxi EA, 640                  ! 12800 / 640 gives 20 kHz
	jmp ponder_continues

! after trying 25, the divisor must be multiplied by 2 and LSbit added

ponder_takes_12_5:
	mvi A, 0
	sub A, B           	! B can be 0 or 12(13). reduced into CY
	ldax [DE+0]
	rll A
	stax [DE+0]
	ldax [DE+1]
	rll A
	stax [DE+1]
	ldax [DE+2]
	rll A
	stax [DE+2]           	! *= 2 and LSbit added
	mvi C, 12
	lxi EA, 1024            ! 12800 / 1024 gives 12.5 kHz
	jmp ponder_continues

ponder_takes_25:
	ldax [DE+2]
	eqi A, 0x00           	! 128 * 128 == 16384 == 0x004000
	?jr 1f
	ldax [DE+1]
	lti A, 0x40           	! choose 12.5 instead, for frequencies near 400 MHz
	?jr 1f
	jmp ponder_takes_12_5
1:
	mvi C, 25
	lxi EA, 512             ! 12800 / 512 gives 25 kHz

ponder_continues:

	steax [DE+3]            ! _ref saved (unused MSbyte always 0)

	push HL
	push DE
	pop HL
	pop DE                  ! exchange to recalc freq
	mov A, C
	nei A, 12
	?mvi A, 25              ! yuckockoo
	mov B, A
	call multiply_long_by_B

	eqi C, 12
	?jr 1f
	ldax [DE+2]      	! div was got by / 25 * 2, fq is so div * 25 / 2
	slr A
	stax [DE+2]
	ldax [DE+1]
	rlr A
	stax [DE+1]
	ldax [DE+0]
	rlr A
	stax [DE+0]
1:
	ret

!
!  Refresh divisors and align back frequencies (into their effective values)
!

freq_changed:

	neiw LO(sq_forced), 0    	! sq NOT forced.
	?call squelch_now_closed

	! RX part

	call determine_rx_vco    	! I/F to the left I/F to the right

	lxi HL, vco_freq
	lxi DE, rx_div
	call ponder_about_freq

	call synth_receive      	! receiver PLL updated here.

	call ocv_xr_enimreted

	! TX part (potentially in vain)

	call determine_tx_freq

	lxi HL, tx_freq
	lxi DE, tx_div          	! for later use
	call ponder_about_freq

	call determine_display_freq	! OH3NWQ 11.05.00 22:44
	ret

ocv_xr_enimreted:

	lxi HL, vco_freq
	lxi BC, cfg_if_freq
	lxi DE, rx_freq

	mov A, [cfg_if_dir]
	eqi A, 0
	?jmp add_longs    
	jmp subtract_longs    ! normally, rx=vco-if


determine_rx_vco:

	lxi HL, rx_freq
	lxi BC, cfg_if_freq
	lxi DE, vco_freq

	mov A, [cfg_if_dir]
	eqi A, 0
	?jmp subtract_longs				
	jmp add_longs        ! normally, vco=rx+if	
	

determine_display_freq:
	mov H, [tx_freq]		! OH3NWQ
	mov [tx_freq_display], H	! 

	mov H, [tx_freq+1]		! 
	mov [tx_freq_display+1], H	! 

	mov H, [tx_freq+2]		! 
	mov [tx_freq_display+2], H	! SIZE_FREQ = 3

	mov H, [rx_freq]		! OH3NWQ
	mov [rx_freq_display], H	! 

	mov H, [rx_freq+1]		! 
	mov [rx_freq_display+1], H	! 

	mov H, [rx_freq+2]		! 
	mov [rx_freq_display+2], H	! SIZE_FREQ = 3
	
	mov A, [cfg_xvtr_switch]
	nei A, 0		
	?ret				! OH3NWQ 11.05.00 22:52

	lxi HL, rx_freq			! OH3NWQ 11.05.00 22:53
	lxi BC, cfg_xvtr_offset
	lxi DE, rx_freq_display
					! show ony on rx - for debug
	mov A, [cfg_xvtr_switch]	! OH3NWQ 12.05.00 00:00 ding
	nei A, 1
	?jmp add_longs				
	jmp subtract_longs				

determine_vco_freq:
	mov A, [cfg_xvtr_switch]
	nei A, 0		
	?ret				! OH3NWQ 

	lxi HL, rx_freq			! OH3NWQ 
	lxi BC, cfg_xvtr_offset
	lxi DE, rx_freq_display
					! 
	mov A, [cfg_xvtr_switch]	! 
	nei A, 1
	?jmp subtract_longs				
	jmp add_longs				

	

! rx_freq or duplex_state has changed, what to do to tx_freq
! HL=rx, DE=tx, add, sub, copy what is needed

determine_tx_freq:

	lxi HL, rx_freq         ! generally in command of tx location
	lxi BC, cfg_duplex_off  ! increment/decrement maybe
	lxi DE, tx_freq

	mov A, [duplex_state]
	eqi A, 0
	?jr 1f
	jmp copy_long           ! 0: DE=HL
1:
	eqi A, 1
	?jr 2f
	mov A, [cfg_duplex_dir]
	eqi A, 0
	?jmp add_longs
	jmp subtract_longs     ! 1: normally, DE=HL-BC
2:
	eqi A, 2
	?jr 3f
	mov A, [cfg_duplex_dir]
	eqi A, 0
	?jmp subtract_longs
	jmp add_longs          ! 2: normally, DE=HL+BC
3:
	ret         ! 3, tx and rx are unconnected. do nothing.


! fixups for flipping with R key

enter_reverse_duplex:
	lxi HL, rx_freq
	lxi BC, cfg_duplex_off
	lxi DE, rx_freq
	mov A, [cfg_duplex_dir]
	nei A, 0
	?call subtract_longs
	mov A, [cfg_duplex_dir]
	eqi A, 0
	?call add_longs
	ret

leave_reverse_duplex:
	lxi HL, rx_freq
	lxi BC, cfg_duplex_off
	lxi DE, rx_freq
	mov A, [cfg_duplex_dir]
	nei A, 0
	?call add_longs
	mov A, [cfg_duplex_dir]
	eqi A, 0
	?call subtract_longs
	ret

! Restore into duplex (2 to 1)

ok_with_reverse_duplex:
	call leave_reverse_duplex  ! 2 to 0 fixups
	mvi A, 1
	mov [duplex_state], A

	call freq_changed
	jmp redraw

!  If inside rptr low/high, set duplex, else normal

set_duplex_wrt_freq:

	lxi HL, rx_freq
	mviw LO(duplex_state), 0     ! Assume simplex

	lxi DE, cfg_rptr_area_high   ! must be below this for duplex
	call skip_if_freq_below
	ret                          ! skipped if below higher limit
	lxi DE, cfg_rptr_area_low    ! below this simplex
	call skip_if_freq_below
	mviw LO(duplex_state), 1     ! skipped if below lower limit
	ret

!  Is it legal to transmit ?

skip_if_tx_legal:

	lxi HL, tx_freq

	lxi DE, cfg_txband_low       ! lower limit
	call skip_if_freq_above
	ret                          ! illegal return, skipped if above lower
	lxi DE, cfg_txband_high      ! must be below this to xmit
	call skip_if_freq_below
	ret                          ! illegal return, skipped if below upper
	
	! check for PMR band 	     ! OH3NWQ 18.06.00 16:01
	lxi DE, cfg_pmr_band_low     ! lower limit
	call skip_if_freq_above	     !	
	rets                         ! not in PMR - ok
	lxi DE, cfg_pmr_band_high        
	call skip_if_freq_below
	rets                         ! not in PMR - ok	
	
	ret                          ! in PMR - illegal.

!----------------------------------------------------------------------
wont_actually_xmit:
	call warning; .asciz "ILLEGAL!"  ! I'm sorry Dave, you can't do that.
	ret

start_xmit:
	mov A, [cfg_tx_timer]
	adi A, 1
	sbi A, 0              ! translate 0 to 1 etc, steps are rough (1/minute)
	mov [timer_txon], A

	oriw LO(tx_on), 1

	call skip_if_tx_legal
	jmp wont_actually_xmit ! Sorry.

	ori PA, CRM            ! relays etc
	call start_tx_delay

	ani PA, ~TSLG
	ori PB, TSON          

	call disconnect_audio  ! enough delay for the txpll to wakeup ?
	call DAC_update

	call synth_xmit

	call update_deviation
	call draw_currfreq     ! enough delay for the txpll to lock ?

	call wait_tx_delay

	ori PA, TSLG
	ori PB, TXON

	call ctcss_maybe

	call mbus_sendsig     ! SERV into ROAM
	mvi A, ON
	mov [sq_changed], A   ! will be picked up when returning to rx
	ret

stop_xmit:
	aniw LO(tx_on), ~1

stop_xmit_stealth:

	ani PB, ~TXON
	call start_tx_delay

	call synth_receive
	call draw_currfreq     ! delay
	ani PB, ~TSON

	oniw LO(sq_forced), 1
	?call squelch_now_closed
	offiw LO(sq_forced), 1
	?call connect_audio

	call i8253_tone_off   ! maybe

	call wait_tx_delay
	ani PA, ~CRM          ! relays etc

	ret

start_tx_delay:
	lxi HL, cfg_tx_delay
	ldeax [HL]
	mvi A, 9
	eadd EA, A
	mvi A, 10
	div A
	mov A, EAH
	eqi A, 0
	?lxi EA, 255
	mov A, EAL
	mov [timer_ticks], A   ! txd timer
	ret

wait_tx_delay:
1:
	mov A, [timer_ticks]   ! txd timer wait
	eqi A, 0
	?jr 1b
	ret

!  Is it legal to receive ? for USA only	!OH3NWQ
skip_if_rx_legal:

	lxi HL, rx_freq

	lxi DE, cfg_rxband_low       ! lower limit
	call skip_if_freq_above
	ret                          ! illegal return, skipped if above lower
	lxi DE, cfg_rxband_high      ! must be below this to rx
	call skip_if_freq_below
	ret                          ! illegal return, skipped if below upper
	rets                         ! legal.
	
!-----------------------------------------------------------
! OH3NWQ 28.4.00 18:27
! let's switch on the charger in the beginning
!-----------------------------------------------------------

charger_init:
	mvi A, CHARGE			! OH3NWQ
	mov [charger_state], A	
	
	mov A, [cfg_charger_switch]
	mov [charger_switch_old], A	! 01.05.00 14:39
	
	mvi A, OFF			
	mov [charger_suspend], A	

	jmp check_charger		! 30-04-00 22:23


!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  MC144111 DAC
!
!  There are 2816 different PowerControl steps (in theory),
!  the coarse dac can have 64 values, and the fine dac 44.  XXX 
!

DAC_init:
	!	jmp DAC_update	    ! nop	

DAC_update:
	ani PC, ~DADIS              ! select DAC

	! cfg_afc_ctrl is percent, transfer into byte and just use 6 MSbits

	mov A, [cfg_afc_ctrl]
	call map_percents_to_6msb	! OH3NWQ 03.07.00 20:17 
	call DAC_byte               ! AFC

	!mvi A, 0	    		! 01-05-00 00:55  
	mov A, [cfg_bcon_trickle] 	! 04.05.00 13:25  trickle if suspended...	
	
	mov B, [charger_suspend]	! 04.05.00 13:26  ...but not overtemp
	!nei B, OVERTEMP		! 04.05.00 13:26  
	ani B,  OVERTEMP		! OH3NWQ 11.07.00 21:00
	nei B, OVERTEMP			! OH3NWQ 11.07.00 21:00
	?mvi A, 0			! 04.05.00 13:26  T>max, I = 0

	mov B, [charger_state]	    	! 30-04-00 21:42
	nei B, CHARGE			! 01-05-00 00:55
	?mov A, [cfg_bcon]		! 01-05-00 00:55
	
	mov B, [cfg_charger_switch]    	! 30-04-00 21:42  if switched off,  I = 0
	nei B, OFF			! 30-04-00 21:42
	?mvi A, 0			! 30-04-00 21:43

	call map_percents_to_6msb 	! OH3NWQ 04.07.00 16:19 
	call DAC_byte               

	! use Vesku's table (thanks !) to map percents to nice TX power levels

	mov A, [cfg_txpwr]
	sll A                       ! word array, offsets 0, 2, ... 200
	lxi EA, txpwr_curve
	eadd EA, A
	dmov HL, EA

	ldax [HL]+
	sll A
	sll A
	call DAC_byte               ! PC coarse with tabled 6 bits

	ldax [HL]+
	sll A
	sll A
	call DAC_byte               ! PC fine with tabled 6 bits

	nop
	nop
	nop
	nop
	ori PC, DADIS               ! latch and unselect
	ret


! send 6 MSbits

DAC_byte:
	call 1f; call 1f; call 1f;    ! 3 bits
	call 1f; call 1f              ! 2 bits, and FALLTHRU for last.

DAC_bit:
1:
	sllc A
	?ani PA, ~SDA
	skn CY
	?ori PA, SDA
	nop
	nop
	nop
	nop
	ori PA, SCL
	nop
	nop
	nop
	nop
	ani PA, ~SCL      ! falling edge seems the active one for DAC
	nop
	nop
	ret

!----------------------------------------------------------------------
!!----------------------------------------------------------------------
!!
!!  I2C with DATA and DTC (ONLY INPUTS in Port A !)
!!
!!  Original circuits do not include pullups, use of these functions
!!  requires replacing any 100k pulldowns into usable pullups.
!!  It is okay to make these mods at the "SIS replacement card".
!!  PA Output latches are 0 always, and MA is used to pull or release
!!  the pin.
!!
!  We allow clocksync but not very long.
!
!  Use i2c_read and i2c_write,
!  address (R/W bit overridden) in A
!  buffer without address-byte in [HL]
!  buffer length in C
!  A, B, C, HL destroyed.

!---
!  skip-return on success, normal return on busy/timeout/etc error.

i2c_read:
	sspd [i2c_jmpbuf]      ! setjmp

	call i2c_start

	ori B, 0x01            ! reading. set R//W bit
	call i2c_write_byte
	jr 2f
1:
	call i2c_read_byte
	mov A, B
	stax [HL]+
2:
	dcr C
	?jr 1b
	jmp i2c_success

!---
i2c_write:
	sspd [i2c_jmpbuf]      ! setjmp

	call i2c_start

	ani B, ~0x01           ! writing. drop R//W bit
	call i2c_write_byte
	jr 2f
1:
	ldax [HL]+
	mov B, A
	call i2c_write_byte
2:
	dcr C
	?jr 1b
	jmp i2c_success

!---
!  Try to create a stop and longjump to caller with skip.

i2c_timeout:
i2c_noack:
i2c_busy:
	mvi A, DATA            ! so DTC is output
	mov MA, A              ! clock low
	mvi A, 0               ! 0 is both output
	mov MA, A              ! data low too
	ori A, DTC             ! 1 is input
	mov MA, A              ! clock released
	ori A, DATA            ! 1 inputs
	mov MA, A              ! data released too

	lspd [i2c_jmpbuf]      ! zap
	ret                    ! "sorry."

i2c_success:
	call i2c_stop
	rets                   ! "okay", skip failure jump below calling line

!---
i2c_release_clock:
	oriw LO(i2c_MA), DTC   ! 1 is input
	ldaw LO(i2c_MA)
	mov MA, A              ! clock released.

	mvi A, 255             ! guard
1:
	nop
	nop
	offi PA, DTC           ! clock still low
	?jr 1f                 ! ?Not. delayers done.
	dcr A
	?jr 1b
	jmp i2c_timeout        ! go unwind stack and fail miserably
1:
	ret

!---
i2c_pull_clock:
	aniw LO(i2c_MA), ~DTC  ! 0 is output
	ldaw LO(i2c_MA)
	mov MA, A              ! clock pulled.
	ret

!---
i2c_release_data:
	oriw LO(i2c_MA), DATA  ! 1 is input
	ldaw LO(i2c_MA)
	mov MA, A              ! data released.
	ret

!---
i2c_pull_data:
	aniw LO(i2c_MA), ~DATA ! 0 is output
	ldaw LO(i2c_MA)
	mov MA, A              ! data pulled.
	ret

!---
i2c_get_ack:
	call i2c_release_data  ! to be able to see the ack

	mvi A, 255             ! guard
1:
	nop
	nop
	oni PA, DATA           ! data still high
	?jr 1f                 ! ?Not. slave receiver pulls it for ack.
	dcr A
	?jr 1b
	jmp i2c_noack          ! go unwind stack and fail miserably
1:
	ret

!---
i2c_start:
	mviw LO(i2c_MA), DTC | DATA
	ldaw LO(i2c_MA)
	mov MA, A

	ani PA, ~(DTC | DATA)  ! output latches low during the whole schebang

	oni PA, DATA
	?jmp i2c_busy
	oni PA, DTC
	?jmp i2c_busy

	call i2c_pull_data     ! START
	jmp i2c_pull_clock

!---
i2c_stop:
	call i2c_pull_data
	call i2c_release_clock
	jmp i2c_release_data   ! STOP

!---
i2c_clock:
	call i2c_release_clock
	jmp i2c_pull_clock

!---
i2c_bit_out:
	sllc B
	?jr 1f
	call i2c_release_data
	jmp i2c_clock
1:
	call i2c_pull_data
	jmp i2c_clock

!---
i2c_write_byte:
	call i2c_bit_out
	call i2c_bit_out
	call i2c_bit_out
	call i2c_bit_out

	call i2c_bit_out
	call i2c_bit_out
	call i2c_bit_out
	call i2c_bit_out

	call i2c_get_ack
	jmp i2c_clock

!---
i2c_bit_in:
	call i2c_release_clock
	sll B
	offi PA, DATA
	?ori B, 0x01
	jmp i2c_pull_clock
	
!---
i2c_read_byte:
	call i2c_release_data

	call i2c_bit_in
	call i2c_bit_in
	call i2c_bit_in
	call i2c_bit_in

	call i2c_bit_in
	call i2c_bit_in
	call i2c_bit_in
	call i2c_bit_in

	eqi C, 0
	?call i2c_pull_data    ! ack when not reading last byte

	jmp i2c_clock

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  AMU/LE (deviation latch) 3 LSbits control modulation, 74259. D0 A0..2
!  SVS deviation kept at minimum after /RESET

update_deviation:
	mov A, [cfg_deviation]
	call map_percents_to_6msb	! was byte ! OH3NWQ 04.07.00 16:20 
	slr A  ! 7F
	slr A  ! 3F
	slr A  ! 1F
	slr A  ! 0F
	slr A  ! 07
	mov [AMULE + 0], A
	slr A  ! 03
	mov [AMULE + 1], A
	slr A  ! 01
	mov [AMULE + 2], A
	ret

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  buffer at HL&C, crc kept in EA (prep to FFFF)
!
crc:
	push DE
	push BC
	push HL                   !  crc = crchi ^ crc16_table[crclo ^ c]
	jr 2f
1:
	mov A, EAL                ! old crclo
	xrax [HL]+                ! crclo ^ c
	mov E, A                  ! is index into both tabs
	mov A, EAH                ! old crchi
	mvi D, HI(crctbl_lo)      ! lower 8 bits of crc word ...
	xrax [DE]                 ! ... against old crchi ...
	mov EAL, A                ! ... is new crclo
	mvi D, HI(crctbl_hi)      ! upper 8 bits of crc word ...
	ldax [DE]                 ! ... is ...
	mov EAH, A                ! ... new crchi
2:
	dcr C
	?jr 1b
	pop HL
	pop BC
	pop DE
	ret

!----------------------------------------------------------------------
!!----------------------------------------------------------------------
!!
!!  MAS7825 NMT-modem
!!
!! XXX "our MSK moron format"
!! XXX 6 useful bytes and crc16: Cs ss ss dd dd dF crchi crclo
!! XXX bit- and frame-syncs there (sent MSbit 1st)
!! 1010 1010  1010 1010  -  AAAA  16 bits
!! 1010 1010  1010 1010  -  AAAA
!! 1010 1010  1010 1010  -  AAAA
!! 1010 1010  1010 1010  -  AAAA
!! 1010 1010  1010 1010  -  AAAA  lotsa bitsa synca
!! 1100 0100  1101 0111  -  C4D7  MPT-1327 SYNC word
!! and a trailer   0000  also after crc at the end
!!
!! Doesn't immediately resemble the NMT ones (sent ? bit 1st)
!! 1010 1010  1010 101  bitsync   15 bits
!! 1110 0010  010       framesync 11 bits
!!
!! MPT-1327 SYNT word
!! 0011 1011  0010 1000  3B28 (doesn't help us a bit).
!!
!! NMT code writes 55 D5 23 in the head, so the data is LSbit 1st ?
!! inverted:
!! 1010 1010  1010 10
!! 1111 0001  00
!! additional 1 and then 0 must be sent to complete the NMT-framesync

modem_init:
	call modem_hunt
	ret

modem_hunt:
	mvi A, 0xE0             ! clear rxtx, timer, hunt mode
	mov [MODEM_CSR], A
	nop
	mvi A, 0x11             ! set SHM RINTE
	mov [MODEM_CSR], A
	ret

! HL&C
! syncs and crc added here

modem_xmit:
	nei C, 0
	?ret                    ! huh

	lxi EA, 0xFFFF
	call crc                ! payload only, EA used a bit below

	mvi A, 0x02             ! set TINTE
	mov [MODEM_CSR], A

	mvi A, 0x55
	call modem_xmit_1       ! sync words
	mvi A, 0xD5
	call modem_xmit_1
	mvi A, 0x23
	call modem_xmit_1

	mvi A, 0xAA
	call modem_xmit_1       ! 10 sync words
	call modem_xmit_1       ! 
	call modem_xmit_1       ! 
	call modem_xmit_1       ! 
	call modem_xmit_1       ! 
	call modem_xmit_1       ! 
	call modem_xmit_1       ! 
	call modem_xmit_1       ! 
	call modem_xmit_1       ! 
	call modem_xmit_1       ! 

	mvi A, 0xC4
	call modem_xmit_1       ! sync words
	mvi A, 0xD7
	call modem_xmit_1       ! sync words

	jr 2f                   ! start loop
1:
	ldax [HL]+
	call modem_xmit_1
2:
	dcr C
	?jr 1b

	mov A, EAH
	xri A, 0xFF
	call modem_xmit_1       ! MSByte 1st
	mov A, EAL
	xri A, 0xFF
	call modem_xmit_1
	mvi A, 0x00
	call modem_xmit_1       ! junk
1:
	mov A, [MODEM_CSR]
	offi A, 0x08            ! TXE clear (transmit in progress no more)
	?jr 1b

	call modem_hunt         ! return to receive
	ret

modem_xmit_1:
1:
	mov B, [MODEM_CSR]
	oni B, 0x04             ! TFLAG set. Buffer empty.
	?jr 1b
	mov [MODEM_DATA], A
	ret

modem_check:
	mov A, [MODEM_CSR]
	oni A, 0x01             ! RFLAG set. Byte available.
	?ret
	mov A, [MODEM_DATA]
	! handle byte XXX
	ret

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  i8253
!
!  Center measurement is done with TMR0 and TMR1
!  CLK0 is "455 kHz"
!  CLK1 is 921600 Hz
!  OUT1 is inverted into GATE0
!
!  TMR1 runs in mode 0, gives almost exact gate for TMR0
!  (error is >= 0 and < one CLK1)
!  TMR0 run in mode 2, reloads from each gate and
!  downcounts to 0 during the gate. Ideal end count is 0.
!
!!----------------------------------------------------------------------
!!
!!  CTCSS & CCIR & misc txtones require a rewire of TMR2.
!!
!!  Locate the i8253 on the audiocard. There is a 4 legged double diode
!!  near the timer chip. Cut the trace connecting pins 1 and 2 of the diode.
!!  This prevents the cpu from being interrupted by the tones.
!!
!!  Locate traces coming into the i8253 pins 20 and 24, from the
!!  4040 divider chip pins 7 and 12. You'll see testing points in
!!  both traces. Cut the trace connecting pins 12 and 24, make the
!!  cut near 4040. Next to the trace is the another trace in question.
!!  Solder very short wire to connect pin 24 into the pins 7 and 20.
!!  Pin 12 is left unconnected by this mod.
!!  This gives a nice 921600 Hz input for the TMR2 of the i8253 too.
!!
!!  The double diode pin 4, connected to timer pin 23, emits the
!!  tones. 5 volt square wave. Both CCIR and CTCSS.
!!  When not emitting a tone the output is quiet (+5V) (digital noise ?)
!!  so no switch is needed for the CTCSS (?). CCIR is switched on
!!  and off as needed with the XMIC input.
!!
!!  CCIR is routed to MAS7845 XMIC pin 34. 100kohm and 1kohm
!!  in series to ground from the diode. 100nF from the midpoint
!!  into MAS pin. There are NMT audio filters ahead, do not worry.
!!
!!  CTCSS is another case. Pick your filters, voltage dividers,
!!  insertion point....
!!
!!  CLK2 is 921600Hz after the mod (originally 7200 Hz). GATE2 is high.
!!  OUT2 is tone output square wave.  921.6k / X = CTCSS, so, X = 921.6k / CTCSS

TMR2_HZ = 921600         ! after the rewire

! these are handpicked to produce no rounding errors

AFC_CNT0 = 31850         ! ideal count for exact 455kHz input
AFC_CNT1 = 64512         ! about 70 msec of gate for TMR0

! Above gives one tick in CNT0 for each 15 Hz of error from 455 KHz

i8253_init:
	
	mvi A, 0b00110100        ! TMR0, LSB then MSB, rate gen (2), binary count
	mov [i8253_CTRL], A      ! control word

	mvi A, AFC_CNT0 % 256
	mov [i8253_TMR0], A      ! CNT0 LSB
	mvi A, AFC_CNT0 / 256
	mov [i8253_TMR0], A      ! CNT0 MSB

	mvi A, 0b01110000        ! TMR1, LSB then MSB, terminal count, binary count
	mov [i8253_CTRL], A      ! control word

	call afc_meas

	call i8253_tone_off
	ret

afc_meas:
	mov A, [i8253_TMR0]      ! CNT0 LSB  TMR0 is stopped from gate
	mov [afc_count + 0], A
	mov A, [i8253_TMR0]      ! CNT0 MSB
	mov [afc_count + 1], A

	mvi A, AFC_CNT1 % 256
	mov [i8253_TMR1], A      ! CNT1 LSB
	mvi A, AFC_CNT1 / 256
	mov [i8253_TMR1], A      ! CNT1 MSB, gate reloads TMR0

	ret

i8253_tone_off:
	mvi A, 0b10010000        ! TMR2, LSB only, terminal count, binary count
	mov [i8253_CTRL], A      ! control word

	mvi A, 1
	mov [i8253_TMR2], A      ! OUT2 soon rises and stays
	ret

i8253_tone_load:

	mvi A, 0b10110110        ! TMR2, LSB then MSB, square wave, binary count
	mov [i8253_CTRL], A      ! control word

	mov A, EAL
	mov [i8253_TMR2], A      ! CNT2 LSB
	mov A, EAH
	mov [i8253_TMR2], A      ! CNT2 MSB and OUT2 wiggles

	ret


!
!  EA contains Hz for a tone out from TMR2.
!  Tradition of yucko solutions continues:
!  to avoid division by 9+ bits, this reduces the divisor into 8 bits
!  by predividing it with powers of two. Result is then divided
!  with the same power. Accuracy gets worse for over 255 Hz,
!  but those are just "courtesy" tones (ccir is handled separately).
!
!  Check (for fun):
!  921600 / 1446 Hz = 637
!  921600 / 180 / 2 / 2 / 2 = 640
!  921600 / 640 = 1440 Hz
!
i8253_tone_hz:

	push BC

	! reduction of divisor

	mvi C, 0         ! count number of shifts
1:
	mov A, EAH       ! divisor small enough ?
	nei A, 0
	?jr 1f           ! now in 8 bits
	dslr EA          ! another /= 2 (could do something with the CYs ?)
	adi C, 1
	jr 1b            ! more ?
1:
	mov A, EAL       ! reduced divisor
	mov B, A

	! 24/8 division

	lxi EA, TMR2_HZ / 256    ! 2 MSBytes
	div A                    ! 1st divide
	dmov HL, EA              ! H is surely 0, save L
	lxi EA, TMR2_HZ % 65536  ! 2 LSbytes
	mov EAH, A               ! smack remainder from above
	div B                    ! second divide (remainder ignored)
	mov A, L
	mov EAH, A               ! EA has result of divide

	! fix of the result
1:
	nei C, 0                 ! still more shifts needed.
	?jr 1f
	dslr EA                  ! another /= 2
	sui C, 1
	jr 1b                    ! more ?
1:
	call i8253_tone_load     ! play it (the count)

	pop BC
	ret

!
!  Constant time (in BC XXX scale) of given (in A) DTMF tone
!
i8253_synthesize_dtmf:

	! map A into HL and DE, tone pair

	! XXX

	lxi EA, 0              ! to compare BC against at the end

	mvi A, 0b10010000      ! TMR2, LSB only, terminal count, binary count
	mov [i8253_CTRL], A    ! control word

	! use nmi to bail this out ? always 400 ms tones then

	di                     ! loop timing critical

	! watchdog tickle
	! calculate next sample, lowtone + hightone, position ptrs over links
	! load timer 2 with the sample
	! bump samplepointers from the links.
	! loop more or not.

#if nmi_hacko
	lxi BC, i8253_TMR2
1:
	ldax [HL]+          !  7
	addx [DE]+          ! 11 in case 'twist' is needed, the tables have it
	mov [BC], A         !  7 CNT2 LSB
	ldax [HL]           !  7
	mov L, A            !  4
	ldax [DE]           !  7
	mov E, A            !  4
	jr 1b               ! 10
nmi_warp_me_here:
	                    ! 57 states. 64.674 kHz PWM
#else

1:
	xri PC, WDCLR       ! 20

	ldax [HL]+          !  7
	addx [DE]+          ! 11 in case 'twist' is needed, the tables have it
	mov [i8253_TMR2], A ! 17 CNT2 LSB

	ldax [HL]           !  7
	mov L, A            !  4
	ldax [DE]           !  7
	mov E, A            !  4

	dcx BC              !  7
	deq EA, BC          ! 11 zero.
	?jr 1b              ! 10 ?Not. more.
	                    !--------------
	                    ! 105 states.  1 state = 1/fXTAL/3. 35.109 kHz PWM
	                    ! 28.48 usec
#endif

	ei

	jmp i8253_tone_off

!----------------------------------------------------------------------
!
! CTCSS -------------------------------------------------------------
!
!  67.0  69.3  71.9  74.4  77.0  79.7  82.5  85.4
!  88.5  91.5  94.8  97.4 100.0 103.5 107.2 110.9
! 114.8 118.8 123.0 127.3 131.8 136.5 141.3 146.2
! 151.4 156.7 162.2 167.9 173.8 179.9 186.2 192.8
! 203.5 206.6 210.7 218.1 225.7 229.1 233.6 241.8
! 250.3 254.1
!
! 921600 /  67 = 13755, 921600 / 13755 =  67.00,  6700 /  67.0 = 100% ok
! 921600 /  82 = 11239. 921600 / 11239 =  82.00,  8200 /  82.5 = 99.39% hmm
! 921600 /  83 = 11157. 921600 / 11157 =  82.60,  8260 /  82.5 = 100.12% ok
! 921600 / 127 =  7256. 921600 /  7256 = 127.01, 12701 / 127.3 = 99.77% ok
! 921600 / 254 =  3628. 921600 /  3628 = 254.02, 25402 / 254.1 = 99.97% ok
!
!! OH3NWQ 13.07.00 14:56 
! now the program accepts 15-255 Hz 
! in 1 Hz steps
!
!----------------------------------------------------------------------
ctcss_init:
	mov A, [cfg_ctcss_tone]	
	mov [ctcss_tone], A		
	ret

ctcss_maybe:
	mov A, [ctcss_tone]	
	eqi A, 0
	?jr 1f	
	jmp i8253_tone_off      
1:	
	lxi EA, 0
	mov EAL, A
	jmp i8253_tone_hz        	

!ye_old_ctcss_maybe:
	!mov A, [cfg_ctcss_idx]
	!nei A, 0
	!?jmp i8253_tone_off      ! Silence timer (part paranoia, it's quick anyway)
	!
	!call map_idx_to_txtone   ! gives us [HL]
	!jmp i8253_tone_off       ! skipped if ok idx used.
	!
	!call str2i               ! CTCSS Hz into EA
	!lxi HL, 0
	!dne EA, HL
	!?jmp i8253_tone_off      ! Hmph. Indexes empty string.
	!
	!jmp i8253_tone_hz        ! hertz

update_tone_marker:
	mov A, [ctcss_tone]	
	nei A, 0
	?jr 1f

	mvi A, ON
	mov [ctcss_active], A 		! set T

	call prep_tx_msg
	mvi A, 'l'
	stax [DE]+
	mvi A, 'D'
	stax [DE]+
	jmp append_tail
	
1:	
	mvi A, OFF
	mov [ctcss_active], A 		! clear T

	call prep_tx_msg
	mvi A, 'l'
	stax [DE]+
	mvi A, 'd'
	stax [DE]+
	jmp append_tail

!----------------------------------------------------------------------
!
! CCIR ---------------------------------------------------------------
! 
! Tone #   EIA    CCIR   ZVEI1   ZVEI2   ZVEI3   PZVEI     EEA
!                                        DZVEI              
! 0        600    1981    2400    2400    2200    2400    1981
! 1        741    1124    1060    1060     970    1060    1124
! 2        882    1197    1160    1160    1060    1160    1197
! 3       1023    1275    1270    1270    1160    1270    1275
! 4       1164    1358    1400    1400    1270    1400    1358
! 5       1305    1446    1530    1530    1400    1530    1446
! 6       1446    1540    1670    1670    1530    1670    1540
! 7       1587    1640    1830    1830    1670    1830    1640
! 8       1728    1747    2000    2000    1830    2000    1747
! 9       1869    1860    2200    2200    2000    2200    1860
! A       2151    2400    2800     885     825     970    1055
! B       2435     930     810     810     740     810     930
! X/C     2010    2247     970     740    2600    2800    2247
! D       2295     991     885     680     885     885     991
! R/E      459    2110    2600     970    2400    2600    2110
! F      No/tone  1055     680    2600     680     680    2400
! 
! Timing
! Preamble 673ms 673ms   673ms   673ms   673ms   673ms   673ms
! Gap       65ms  65ms    65ms    65ms    65ms    65ms    65ms
! Tone      33ms  40ms   100ms   100ms   100ms   100ms   100ms
! X Tone    65ms  40ms   100ms   100ms   100ms   100ms   100ms
! 
! The Preamble is used as a battery saving mechanism, similar to todays
! digital pagers, thus the pager looks for its preamble, if not heard it
! shuts off to standby mode. Not all systems use the Preamble, that is why
! its called 5/6 tone paging. You may only have 5 tones when not using the
! Preamble.
! 
! In 5/6 tone paging a consecutive number is never sent. thus a pager with
! capcode 1-12344, would be sent using the a Preamble tone of 1/600Hz,
! followed by a 65ms gap of silence, then 2/882Hz, 3/1023Hz, 4/1164Hz each
! 33ms long, the second four is transmitted using the R (Repeat) Tone of
! R/459Hz.
! 
! The second address of a pager is activated by sending the X tone after the
! pagers capcode, thus 1-12345X.
! 
! The chart above inlcudes both 5/6 Tone & HSC Tones. For 5/6 Tone pagers only
! Tones 0-9, X, & R are used. Tones A-F are for use in HSC Pagers
! and 5/6 Tone ANI systems.
! 
! Made a program to check CCIR. Much less than 1% error in all tones.
!---------------------------------------------------------------------

ccir_tab:
	.word   465 	! 0   norm 1981   our 1981.9   100.0
	.word   819 	! 1   norm 1124   our 1125.3   100.1
	.word   769 	! 2   norm 1197   our 1198.4   100.1
	.word   722 	! 3   norm 1275   our 1276.5   100.1
	.word   678 	! 4   norm 1358   our 1359.3   100.1
	.word   637 	! 5   norm 1446   our 1446.8   100.1
	.word   598 	! 6   norm 1540   our 1541.1   100.1
	.word   561 	! 7   norm 1640   our 1642.8   100.2
	.word   527 	! 8   norm 1747   our 1748.8   100.1
	.word   495 	! 9   norm 1860   our 1861.8   100.1
	.word   384 	! A   norm 2400   our 2400.0   100.0
	.word   990 	! B   norm  930   our  930.9   100.1
	.word   410 	! X/C norm 2247   our 2247.8   100.0
	.word   929 	! D   norm  991   our  992.0   100.1
	.word   436 	! R/E norm 2110   our 2113.8   100.2
	.word   873 	! F   norm 1055   our 1055.7   100.1
	.word     1 	! or else ! (hundreds of kHz wont pass the filters)

!----------------------------------------------------------------------
!
!  HL points to serie, C has length
!!
!!  "LL8 911" would transmit CCIR like
!!    120 msec of 8
!!     40 msec of silence
!!     40 msec of 9
!!     40 msec of 1
!!     40 msec of E
!!
!!  40 msec is not very exact...
!

txtone_len:
	mvi B, 0
1:
	ldax [HL+B]
	nei A, 0
	?jr 1f
	adi B, 1
	gti B, 7
	?jr 1b
1:
	mov A, B
	mov C, A
	ret
	
ccir_xmit:
	call LFU_select_xmic
	mvi E, -1             ! no previous tone.
	jre 3f                ! start loop for 1..8 chrs
1:
	ldax [HL]+
	eqi A, 'L'
	?jr 2f
	adi B, 6              ! make it (next chr) longer
	dcr C
	?jr 1b                ! what is that next one ?
	ret                   ! longer nothing ? okay.
2:
	call map_chr_to_hex
	nea A, E              ! not same.
	?mvi A, 0xE           ! ?Not. repeat tone then.
	mov E, A              ! remember prev tone.
	push HL
	call ccir_xmit_1
	pop HL
	mov A, B
	call pause            ! tone duration
3:
	mvi B, 6              ! default length for next tone
	dcr C
	?jr 1b

	call i8253_tone_off
	call LFU_select_mic
	ret

ccir_xmit_1:
	lti A, 0x10        ! 16 possibilities 0..9, A..F, else silence...
	?mvi A, 0x10       ! ... here.
	sll A              ! word array
	lxi EA, ccir_tab
	eadd EA, A
	dmov HL, EA
	ldeax [HL]          ! count value into EA

	jmp i8253_tone_load ! raw count

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  LFU
!

LFU_init:
	! FSKT 00 bit 3: 0  connect transmitted data
	! FSKE 00 bit 4: 1  connect received data
	! TXP  00 bit 5: 1  supply to tx parts and 4kHz filter
	mvi A, 0b110000 | 0x00
	mov [lfu_regs + 0], A

	call update_LFU_vol

	call update_LFU_come

	! S    11 bit 0 : 1   connect MIC
	! XS   11 bit 1 : 0   connect XMIC
	! AGCE 11 bit 3 : 1   tx audio agc enable
	! SVE  11 bit 4 : 0   connect supervisory signal loopback
	mvi A, 0b001001 | 0xC0
	mov [lfu_regs + 3], A

	jmp update_LFU

update_LFU_vol:
	! VOL  01 bit 3..0 rx audio volume
	! SPK  01 bit 4    rx audio connect
	mov A, [cfg_lfu_vol]
	lti A, 0xF
	?mvi A, 0xF
	aniw LO(lfu_regs + 1), ~0b001111          ! volume bits away
	oraw LO(lfu_regs + 1)
	ori A, 0x40
	staw LO(lfu_regs + 1)

	jmp update_LFU_one

update_LFU_come:
	! H    10 bit 2 : 1   rx audio connect
	! RXP  10 bit 3 : 1   rx parts supply
	! COME 10 bit 4 : 0   compander enable
	! MICO 10 bit 5 : 1   connect mics, "1" is on. aka TXDE.
	mvi A, 0b101100 | 0x80
	staw LO(lfu_regs + 2)
	mov A, [cfg_dolby]
	eqi A, 0
	?oriw LO(lfu_regs + 2), 0b010000
	ldaw LO(lfu_regs + 2)

	jmp update_LFU_one

LFU_select_mic:
	! FSKT 00 bit 3    connect transmitted data
	aniw LO(lfu_regs + 0), ~0b001000          ! FSKT OFF
	ldaw LO(lfu_regs + 0)
	call update_LFU_one

	! MICO 10 bit 5    connect mics, "1" is on. aka TXDE.
	oriw LO(lfu_regs + 2), 0b100000           ! mics ON
	ldaw LO(lfu_regs + 2)
	call update_LFU_one

	! S    11 bit 0    connect MIC
	! XS   11 bit 1    connect XMIC
	oriw LO(lfu_regs + 3),  0b000001          ! MIC ON
	aniw LO(lfu_regs + 3), ~0b000010          ! XMIC ON
	ldaw LO(lfu_regs + 3)
	jmp update_LFU_one

LFU_select_xmic:
	! FSKT 00 bit 3    connect transmitted data
	aniw LO(lfu_regs + 0), ~0b001000          ! FSKT OFF
	ldaw LO(lfu_regs + 0)
	call update_LFU_one

	! MICO 10 bit 5    connect mics, "1" is on. aka TXDE.
	oriw LO(lfu_regs + 2), 0b100000           ! mics ON
	ldaw LO(lfu_regs + 2)
	call update_LFU_one

	! S    11 bit 0    connect MIC
	! XS   11 bit 1    connect XMIC
	oriw LO(lfu_regs + 3),  0b000010          ! XMIC ON
	aniw LO(lfu_regs + 3), ~0b000001          ! MIC OFF
	ldaw LO(lfu_regs + 3)
	jmp update_LFU_one

LFU_select_fsk:
	! MICO 10 bit 5    connect mics, "1" is on. aka TXDE.
	aniw LO(lfu_regs + 2), ~0b100000         ! mics OFF
	ldaw LO(lfu_regs + 2)
	call update_LFU_one

	! FSKT 00 bit 3    connect transmitted data
	oriw LO(lfu_regs + 0), 0b001000          ! FSKT ON
	ldaw LO(lfu_regs + 0)
	jmp update_LFU_one

connect_audio:
	mov A, [lfu_regs + 1]
	ori A, 0b010000
	! SPK  01 bit 4    rx audio connect
	jr 1f
disconnect_audio:
	mov A, [lfu_regs + 1]
	ani A, ~0b010000
1:
	mov [lfu_regs + 1], A

	jmp update_LFU_one

update_LFU:
	mov A, [lfu_regs + 0]
	call update_LFU_one

	mov A, [lfu_regs + 1]
	call update_LFU_one

	mov A, [lfu_regs + 2]
	call update_LFU_one

	mov A, [lfu_regs + 3]
	call update_LFU_one
	ret

update_LFU_one:
	call 1f ; call 1f; call 1f; call 1f
	call 1f ; call 1f; call 1f; call 1f
	ori PA, LFUSTB
	nop
	nop
	ani PA, ~LFUSTB    ! end pulse
	ret
1:
	sllc A
	?ani PA, ~SDA
	skn CY
	?ori PA, SDA
	nop
	nop
	ori PA, SCL      ! rising edge seems the active one
	nop
	nop
	ani PA, ~SCL
	ret

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  CPU configuration

cpu_init:

	mvi PA, DTC | DATA   ! off: EXTA, CRM, LFUSTB, TSLG, SDA, SCL
	mvi A, DTC | DATA
	mov MA, A            ! inputs 1 (DTC and DATA left as inputs, unused)


	mvi PB, TAON         ! off: EEOFF, TSON, TAON, RSEN, TSEN, SD68
	mvi A, 0
	mov MB, A            ! inputs 1 (all outputs)


	mvi PC, 0x20 | DADIS | 0x02   ! off: PWROFF, WDCLR, PAGE, I2DA(our /PTT)
	mvi A, 0x23                   ! CI,RXD,TXD special
	mov MCC, A
	mvi A, 0x20 | I2DA | 0x02     ! magics for CI and RXD (I2DA is our /PTT)
	mov MC, A            ! inputs 1


	lxi HL, ad_regs
	shld [ad_ptr]

	mvi ANM, 0x00  ! scan mode, faster xtal, first group 0..3


	mvi TMM, 0x20  ! TMR0 run from f/12 into F/F, TMR1 run from f/384
	mvi A, 3
	mov TM0, A     ! 921.6 kHz, to generate serial 9600 bd for MBUS
	mvi A, 0xFF
	mov TM1, A     ! to generate 112 Hz systick (will use like 100 Hz)


	mvi A, 0x5E
	mov SML, A     ! 1stop, odd parity, 8bits, x16 clock
	mvi A, 0
	mov SMH, A     ! flush
	mvi A, 0x0C
	mov SMH, A     ! rx enable, tx enable, internal TO clock

	ori PC, WDCLR
	
	skit INTFST    ! flush tx
	?nop
	skit INTFSR    ! flush rx
	?nop
	skit ER        ! flush rx
	?nop
	mov A, RXB
	mov A, RXB
	mov A, RXB
	skit INTFST    ! flush tx
	?nop
	skit INTFSR    ! flush rx
	?nop
	skit ER        ! flush rx
	?nop

	mvi A, 0
	mov EOM, A     ! not interested at PWM capabilities

	mvi A, 0x08
	mov ETMM, A    ! clear ECNT at CI falling edge, internal f/12 clock
	lxi EA, 1843
	dmov ETM0, EA  ! 921.6 kHz / ETM0 = 500 Hz, about 20 mbus chars.

	ani PC, ~WDCLR

	ret

enable_ints:

	ani MKL, ~0x24 ! INTE0, INTT1
	ani MKH, ~0x07 ! INTST, INTSR, INTAD

	skit INTFT1
	?nop
	skit INTFE0
	?nop
	skit INTFST
	?nop
	skit INTFSR
	?nop
	skit INTFAD
	?nop

	ret

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  Audio stuff etc
!

vol_mute:
	mvi A, 0
	mov [volume], A
	jmp vol_set

vol_inc:
	mov A, [volume]
	adi A, 1
	lti A, 9
	?mvi A, 9
	mov [volume], A
	jmp vol_set

vol_dec:
	mov A, [volume]
	sui A, 1
	aci A, 0
	lti A, 9
	?mvi A, 9
	mov [volume], A
	jmp vol_set

vol_set:
	call redraw
	jmp mbus_sendvol

pwr_inc:
	mov A, [cfg_txpwr]
	adi A, 1
	lti A, 100
	?mvi A, 100
	mov [cfg_txpwr], A
	call DAC_update
	jmp redraw

pwr_dec:
	mov A, [cfg_txpwr]
	sui A, 1
	aci A, 0
	lti A, 100
	?mvi A, 100
	mov [cfg_txpwr], A
	call DAC_update
	jmp redraw

!----------------------------------------------------------------------
!----------------------------------------------------------------------

redraw:
	mov A, [menu_active]
	eqi A, OFF
	?jmp draw_menu

	call draw_top_row
	jmp draw_kbd_buffer

! Something like
!
! "??? SQ V"
! "D 434775"

draw_top_row:
	lxi HL, prt_buffer

	mov A, [mem_idx]
	lti A, MEM_max
	?jre 2f
	mov A, [mem_name]
	nei A, 0
	?jre 1f
	stax [HL]+
	mov A, [mem_name + 1]
	nei A, 0
	?mvi A, ' '
	stax [HL]+
	mov A, [mem_name + 2]
	nei A, 0
	?mvi A, ' '
	stax [HL]+
	jre 3f
1:
	mvi A, 'M'
	stax [HL]+
	mov A, [mem_idx]
	lxi EA, 0
	mov EAL, A
	mvi B, 10
	div B
	mov A, EAL
	adi A, '0'
	stax [HL]+
	mov A, B
	adi A, '0'
	stax [HL]+
	jr 3f
2:
	mvi A, ' '
	stax [HL]+
	stax [HL]+
	stax [HL]+
3:
	mvi A, ' '
	stax [HL]+

	mov A, [cfg_sqlevel]
	lti A, 100
	?mvi A, 99
	lxi EA, 0
	mov EAL, A
	mvi B, 10
	div B
	mov A, EAL
	adi A, '0'
	eqiw LO(sq_forced), 0
	?mvi A, 'S'
	stax [HL]+
	mov A, B
	adi A, '0'
	eqiw LO(sq_forced), 0
	?mvi A, 'Q'
	stax [HL]+

	mvi A, ' '
	stax [HL]+

	mov A, [volume]
	adi A, '0'
	stax [HL]+

	mvi C, 8
	lxi HL, prt_buffer
	jmp mbus_send_upper

draw_bottom_row:
	neiw LO(scan_state), STEPPING
	?jmp draw_scan_mode

	jmp draw_currfreq

draw_scan_mode:
	lxi HL, prt_buffer
	mvi A, 's'
	stax [HL]+
	mvi A, 'c'
	stax [HL]+
	!mvi A, 'a'	! OH3NWQ 08.07.00 17:55 
	!stax [HL]+	! OH3NWQ 08.07.00 17:55 
	mvi A, ':'
	stax [HL]+      ! OH3NWQ 12.07.00       	
			! now "sc:     "  - was "SCAN    "

	lxi HL, prt_buffer + 7
	mov B, [scan_mode]
	mvi A, 'B'		! OH3NWQ 11.07.00 22:30 
	offi B, SC_5		! OH3NWQ 08.07.00 17:55 
	?stax [HL]-		! OH3NWQ 08.07.00 17:55 
	mvi A, 'M'		! OH3NWQ 11.07.00 22:30
	offi B, SC_4
	?stax [HL]-
	mvi A, 'L'		! OH3NWQ 11.07.00 22:30
	offi B, SC_3
	?stax [HL]-
	mvi A, 'R'		! OH3NWQ 11.07.00 22:30
	offi B, SC_2
	?stax [HL]-
	mvi A, 'S'		! OH3NWQ 11.07.00 22:30
	offi B, SC_1
	?stax [HL]-

	mvi A, ' '
	lti L, LO(prt_buffer + 3)	! OH3NWQ 10.07.00 19:52
	?stax [HL]-
	lti L, LO(prt_buffer + 3)	! OH3NWQ 10.07.00 19:53
	?stax [HL]-
	lti L, LO(prt_buffer + 3)	! OH3NWQ 10.07.00 19:53
	?stax [HL]-
	lti L, LO(prt_buffer + 3)	! OH3NWQ 10.07.00 19:53 
	?stax [HL]-			! OH3NWQ 08.07.00 17:56 

	lxi HL, prt_buffer
	mvi C, 8
	jmp mbus_send_lower

draw_currfreq:
	lxi HL, rx_freq_display		! OH3NWQ 11.05.00 22:42
	eqiw LO(tx_on), 0
	?lxi HL, tx_freq_display	! OH3NWQ 11.05.00 22:42

	ldeax [HL]
	ldax [HL+2]
	mov B, A
	lxi HL, prt_buffer
	call i2buf
	mov A, [duplex_state]
	nei A, 0
	?jr 1f
	nei A, 1
	?mvi A, 'D'
	nei A, 2
	?mvi A, 'R'
	nei A, 3
	?mvi A, 'X'
	gti A, ' '
	?mvi A, '?'
	mov [prt_buffer + 0], A
1:
	lxi HL, prt_buffer
	mvi C, 8
	jmp mbus_send_lower

draw_kbd_buffer:
	mov C, [kbd_index]
	nei C, 0
	?jmp draw_bottom_row    ! No value under edit. Show default bottom row

	lxi HL, kbd_buffer
	lxi DE, prt_buffer
	jr 2f
1:
	ldax [HL]+
	stax [DE]+
2:
	dcr C
	?jr 1b

	mov B, [alpha_box]
	nei B, 0
	?mvi B, ' '
	mvi C, 8
	mov A, [kbd_index]
	sub C, A
	jr 2f
1:
	mov A, B
	stax [DE]+
	mvi B, ' '
2:
	dcr C
	?jr 1b

	lxi HL, prt_buffer
	mvi C, 8
	jmp mbus_send_lower

! Keep B

format_EA:
	lxi HL, prt_buffer + 5
	mvi C, 4
1:
	dcx HL
	mvi A, 10
	div A
	adi A, '0'
	stax [HL]
	dcr C
	?jr 1b

	mvi C, 3 ! blank out at max 4 leading zeroes
1:
	ldax [HL]
	eqi A, '0'   ! leading zero.
	?jr 1f
	mvi A, ' '
	stax [HL]+
	dcr C
	?jr 1b       ! 4 times max.
1:
	ret

alpha_off:
	push VA
	mov A, [kbd_flags]
	ani A, ~ALPHA
	mov [kbd_flags], A ! clear alpha state

	call mbus_update_lights
	pop VA
	ret

keylock_on:
	push VA
	mov A, [kbd_flags]
	ori A, KEYLOCK
	mov [kbd_flags], A ! clear keylock state

	call mbus_update_lights
	pop VA
	ret

keylock_off:
	push VA
	mov A, [kbd_flags]
	ani A, ~KEYLOCK
	mov [kbd_flags], A ! clear keylock state

	call mbus_update_lights
	pop VA
	ret


fcn_off:
	push VA
	mvi A, 0
	mov [timer_fcn], A
	mov A, [kbd_flags]
	ani A, ~SHIFT
	mov [kbd_flags], A ! clear shifted state

	call mbus_update_lights
	pop VA
	ret

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!----------------------------------------------------------------------
!
!  New keyboard press in A, B nz if typematic
!
got_key:
	mov C, [chr_curr]
	mov [chr_prev], C
	mov [chr_curr], A

	mov C, [timer_kbd_idle]
	mviw LO(timer_kbd_idle), 0

	eqiw LO(timer_fcn), 0
	?mviw LO(timer_fcn), 15        ! bump up if running

	! ! OH3NWQ 06.06.00 15:24 
	!   INSERT HERE TEST IF WE ARE IN THE MIDDLE OF PIN QUERY
	!   and if this is the case jump to chr_input

	eqiw LO(pin_query_active), OFF
	?jmp pin_input       

	call backlight_on		! OH3NWQ 19.06.00 12:52
	call clear_99_mute		! OH3NWQ 19.06.00 12:52

	mov A, [chr_curr]		! OH3NWQ 19.06.00

	nei A, 'Q'
	?jmp do_quit
	nei A, 'P'
	?jmp do_ptt_button

	nei A, '+'
	?jmp do_plus
	nei A, '-'
	?jmp do_minus

	! other input ignored during xmit XXX

	eqiw LO(tx_on), 0
	?ret

	nei A, 'M'
	?jmp do_mute

	nei A, 'C'
	?jmp do_clear

	nei A, 'F'
	?jmp do_fcn
	nei A, 'A'
	?jmp do_r_alpha

	nei A, '?'
	?jmp do_menu_mft
	nei A, 'O'
	?jmp do_ok_lock
	nei A, 'N'
	?jmp do_next_prev
	nei A, 'R'
	?jmp do_rcl_sto

	nei A, '#'
	?jmp do_enter
	nei A, '*'
	?jmp do_star

	nei A, 'E'
	?jmp do_handset
	nei A, 'H'
	?jmp do_hf

	call scan_stop

	! all that is left are the digits

	offiw LO(kbd_flags), ALPHA
	?jmp alpha_input             ! ALPHA was not off, go.

pin_input:
chr_input:                 	! re-entry for specials as regulars

	nei A, 'Q'		! for pin query...
	?jmp do_quit

	mov B, [kbd_index]
	lti B, 8
	?ret

	lxi HL, kbd_buffer
	stax [HL+B]
	adi B, 1
	mov [kbd_index], B

	eqiw LO(menu_active), OFF
	?jmp menu_input       ! Maybe it will want to touch the buffer

	jmp draw_kbd_buffer

	
alpha_star_tab: .ascii "*/?,.+`~!@#$%^&()_={}\\|;:'\"<>"

alpha_tab:      .ascii "[\\]0ABC1DEF2GHI3JKL4MNO5PQR6STU7VWX8YZ-9"

alpha_input_proloque:

	mov B, [kbd_index]
	nei B, 0
	?mviw LO(alpha_idx), 0 ! first chr, rewind ABC to 'A'
	lti C, 150
	?mviw LO(alpha_idx), 0 ! second of idle, rewind ABC to 'A'
	eqaw LO(chr_prev)
	?mviw LO(alpha_idx), 0 ! different key

	eqaw LO(chr_prev)
	?jr 1f        	! different key
	nei B, 0
	?jr 1f        	! no character
	lti C, 150
	?jr 1f        	! interval over 1 sec
	sui B, 1	! rewind over the changing character
1:
	lti B, 8
	?mvi B, 8 - 1   ! last chr cell is problematic....

	ret

alpha_star_input:
	call alpha_input_proloque ! fetches B, amongst other fluff

	mov C, [alpha_idx]
	lti C, SIZE(alpha_star_tab)
	?mvi C, 0
	mov A, C                     ! index for picking this chr
	adi C, 1
	lti C, SIZE(alpha_star_tab)
	?mvi C, 0
	mov [alpha_idx], C           ! until next time, maybe

	lxi HL, alpha_star_tab
	ldax [HL+A]                ! map into chr

	jmp alpha_input_epiloque  ! uses the B, hrmph huh.

alpha_input:
	call alpha_input_proloque ! get B, also.

	mov C, [alpha_idx]
	lti C, 4
	?mvi C, 0

	lxi HL, alpha_tab
	sui A, '0'
	sll A
	sll A ! *= 4
	add A, C
	ldax [HL+A]

	adi C, 1
	lti C, 4
	?mvi C, 0
	mov [alpha_idx], C

	! FALLTHRU

alpha_input_epiloque:
	lxi HL, kbd_buffer
	stax [HL+B]
	adi B, 1
	lti B, 8
	?mvi B, 8
	mov [kbd_index], B

	jmp draw_kbd_buffer

!---------------------------------------------------------------------
!---------------------------------------------------------------------
!
! LIGHTS (for OH5NOL)			! OH3NWQ 18.06.00 12:17
!---------------------------------------------------------------------

check_lights:				! OH3NWQ 18.06.00 12:24
	mov A, [cfg_lights]
	nei A, OFF
	?ret

	mov A, [timer_light]		! OH3NWQ 20.06.00 11:06
	nei A, 1			! OH3NWQ 20.06.00 11:06
	?jmp backlight_off		! OH3NWQ 20.06.00 11:06
	
	mov A, [timer_light]		! OH3NWQ 20.06.00 11:06
	nei A, 0			! err - we are here because
	?jmp backlight_init		! cfg_lights was 0 but is changed
	
	ret                          	! lights ok - return

backlight_init:				! OH3NWQ 18.06.00 
	mov A, [cfg_lights]
	mov [timer_light], A
	
	mvi A, ON
	mov [status_light], A

	ret
		
backlight_off:				
	mov A, [status_light]
	nei A, OFF
	?ret

	mvi A, OFF
	mov [status_light], A

	call prep_tx_msg

	mvi A, 'l' 			! lights
	stax [DE]+
	mvi A, 'b' 			! backlight OFF
	stax [DE]+

	jmp append_tail
	ret

backlight_on:				! OH3NWQ 18.06.00 12:24
	mov A, [timer_light]		! OH3NWQ 20.06.00 11:06
	nei A, 0			! OH3NWQ 20.06.00 11:06
	?ret				! lights permanently on -> return
	
	mov A, [cfg_lights]
	mov [timer_light], A

	mvi A, ON
	mov [status_light], A

	call prep_tx_msg

	mvi A, 'l' 			! lightshow
	stax [DE]+
	mvi A, 'B' 			! backlight ON
	stax [DE]+

	jmp append_tail
	ret

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  SCANNER
!

scan_stop:
	push VA
	mvi A, 0
	staw LO(timer_step)
	staw LO(timer_scan)
	staw LO(timer_pers)

	neiw LO(scan_state), 0
	?jr 1f

	staw LO(scan_state)
	
	call ctcss_init		! OH3NWQ 11.07.00 23:07
	mov A, [scan_which]	! OH3NWQ 11.07.00 23:07
	nei A, SC_4		! OH3NWQ 11.07.00 23:07
	?call 2f		! OH3NWQ 11.07.00 23:07
	
	push BC
	push DE
	push HL
	push EA
	call update_tone_marker
	call mbus_update_lights 
	pop EA
	pop HL
	pop DE
	pop BC
1:
	pop VA
	ret

2:
	!recall memory to get the right ctcss
	mvi A, SC_1
	mov [scan_which], A
	
	mov A, [scan_number]
	call recall_memory 
	ret
	
scan_start:
	mvi A, SC_1
	mov [scan_which], A

	lxi HL, kbd_buffer
	mov C, [kbd_index]
	mviw LO(kbd_index), 0

	nei C, 0
	?jre 3f

	mvi B, 0
	jr 2f
1:
	ldax [HL]+
	nei A, '1'
	?ori B, SC_1
	nei A, '2'
	?ori B, SC_2
	nei A, '3'
	?ori B, SC_3
	nei A, '4'
	?ori B, SC_4
	nei A, '5'		! OH3NWQ 10.07.00 22:45
	?ori B, SC_5		! OH3NWQ 10.07.00 22:45
	!nei A, '6'
	!?ori B, SC_6
	!nei A, '7'
	!?ori B, SC_7
	!nei A, '8'
	!?ori B, SC_8
2:
	dcr C
	?jr 1b
	mov A, B

	ani A, 0x1F		! OH3NWQ 10.07.00 22:45
	eqi A, 0
	?staw LO(scan_mode)
3:	
	neiw LO(scan_mode), 0		! if scan mode is still 0
	?jmp scan_stop			! jump to scan_stop

	call scan_step_now
	call update_tone_marker

	jmp mbus_update_lights         ! nz scan_state will light HF

scan_step_now:
	ldaw LO(scan_state)
	push VA                        ! were we already stepping, or ?
	mviw LO(scan_state), STEPPING
	mvi A, 0
	staw LO(timer_scan)
	staw LO(timer_pers)

	call scan_next_one
	call start_step_timer        ! starts timer_step

	pop VA
	eqi A, STEPPING
	?call redraw                 ! change into stepping.
	ret

scan_next_one:

	mov A, [scan_which]
	nei A, SC_1
	?jmp scan_1
	nei A, SC_2
	?jmp scan_2
	nei A, SC_3
	?jmp scan_3
	nei A, SC_4
	?jmp scan_4
	nei A, SC_5
	?jmp scan_5
	!nei A, SC_6
	!?jmp scan_6
	!nei A, SC_7
	!?jmp scan_7
	!nei A, SC_8
	!?jmp scan_8
	
	jmp scan_0

!	lxi HL, rx_freq
!	lxi DE, cfg_sc2_low          ! below this = currently sc1
!	call skip_if_freq_below
!	jre scan_2

scan_0:
scan_6:
scan_7:
scan_8:
	! priority channel scan
	!fallthrough to_scan_1
to_scan_1:
	call update_tone_marker	
	lxi HL, cfg_sc1_low  
	lxi DE, rx_freq       
	call copy_long        
	mvi C, 1
	lxi HL, rx_freq
	call step_channels_down
	
	mvi A, SC_1
	mov [scan_which], A
	ret	

scan_1:
	! repeater scan
	oniw LO(scan_mode), SC_1
	?jre to_scan_2

	lxi HL, rx_freq
	lxi DE, cfg_sc1_low       
	call skip_if_freq_below
	jr 1f
	call to_scan_1
1:
	mvi C, 1
	lxi HL, rx_freq
	call step_channels_up

	lxi DE, rx_freq
	call copy_long

	call scan_skip_not_reject
	jr 1b
	
	lxi HL, rx_freq
	lxi DE, cfg_sc1_high         
	call skip_if_freq_above
	jr 1f                        	! skipped if above higher limit

to_scan_2:
	call update_tone_marker
	mvi A, SC_2
	mov [scan_which], A

	lxi HL, cfg_sc2_low  
	lxi DE, rx_freq       
	call copy_long        
	mvi C, 1
	lxi HL, rx_freq
	call step_channels_down
	ret

1:
	call leave_memories
	call set_duplex_wrt_freq
	call freq_changed
	ret

scan_2:
	! simplex scan
	oniw LO(scan_mode), SC_2
	?jre to_scan_3

	lxi HL, rx_freq
	lxi DE, cfg_sc2_low       
	call skip_if_freq_below
	jr 1f
	call to_scan_2
1:
	mvi C, 1
	lxi HL, rx_freq
	call step_channels_up
	lxi DE, rx_freq
	call copy_long

	call scan_skip_not_reject
	jr 1b

	lxi HL, rx_freq
	lxi DE, cfg_sc2_high         
	call skip_if_freq_above
	jr 1f                        	! skipped if above higher limit

to_scan_3:
	call update_tone_marker
	mvi A, SC_3
	mov [scan_which], A
	
	mvi A, 0xFF			! sc3 0,1,2,3
	mov [scan_number], A
	ret			

1:
	call leave_memories
	call set_duplex_wrt_freq
	call freq_changed
	ret
	
scan_3:
	! sc3 list scan
	oniw LO(scan_mode), SC_3
	?jmp to_scan_4
1:
	mov A, [scan_number]
	adi A, 1
	lti A, 4			! 4 sc3 memories 
	?jmp to_scan_4
	mov [scan_number], A
	
	nei A, 0
	?jre go_scan3_0
	nei A, 1
	?jre go_scan3_1
	nei A, 2
	?jre go_scan3_2
	!fallthrough to go_scan3_3

go_scan3_3:
	lxi HL, cfg_sc3_freq_3  
	lxi DE, rx_freq       
	call copy_long        
	jmp 3f

go_scan3_2:	
	lxi HL, cfg_sc3_freq_2
	lxi DE, rx_freq       
	call copy_long        
	jmp 3f		

go_scan3_1:
	lxi HL, cfg_sc3_freq_1
	lxi DE, rx_freq       
	call copy_long        
	jmp 3f
	
go_scan3_0:	
	lxi HL, cfg_sc3_freq_0
	lxi DE, rx_freq       
	call copy_long        
3:
	call scan_skip_not_reject
	jmp 1b

	call leave_memories
	call set_duplex_wrt_freq
	call freq_changed
	ret
	
to_scan_4:
	call update_tone_marker
	mvi A, SC_4
	mov [scan_which], A

	mvi A, 0xFF
	mov [scan_number], A
	ret
	
scan_4:
	! memory scan
	oniw LO(scan_mode), SC_4
	?jre to_scan_5
1:
	mov A, [scan_number]
	adi A, 1
	lti A, MEM_max		! 100 memories
	?jre to_scan_5
	
	mov [scan_number], A	
				! memory number in A
	! rewritten recall_memory 
	! if NOT EXIST or NOT SCANNED -> jr 1b
	
	mov C, A                         ! remember memory number
	mvi B, MEM_size
	mul B
	lxi HL, memories
	dadd EA, HL                      ! record ptr
	dmov HL, EA

	ldax [HL]+                 ; ASSERT(MEM_flags == 0)
	oni A, MEM_EXIST
	?jre 1b
					! on a future release: select which memories are scanned
	!oni A, MEM_SCAN		! OH3NWQ 01.07.00 11:21  
	!?jr 1b				! OH3NWQ 01.07.00 11:21 
	
	mov [mem_idx], C
	mov [mem_flags], A

	lxi DE, rx_freq            ; ASSERT(MEM_rx == 1)
	call copy_long
	inx HL
	inx HL
	inx HL
	lxi DE, tx_freq            ; ASSERT(MEM_offtx == 4)
	call copy_long             ! shortly overwritten unless separate tx
	inx HL
	inx HL
	inx HL
	lxi DE, mem_name           ; ASSERT(MEM_name == 7)
	call copy_long             ! shortly overwritten unless separate tx
	inx HL			! OH3NWQ 11.07.00 22:55
	inx HL			! OH3NWQ 11.07.00 22:55
	inx HL	
	ldax [HL]+		! OH3NWQ 12.07.00 12:15 
	mov [ctcss_tone], A	   ; ASSERT(MEM_ctcss == 10)
	
	mov A, [mem_flags]
	mvi B, 0
	offi A, MEM_DUPLEX
	?mvi B, 1           ! normal duplex memory
	offi A, MEM_OFFTX
	?mvi B, 3           ! separate tx freq

	mov [duplex_state], B

	call freq_changed
	! call redraw		! not while scanning	
	ret

to_scan_5:	
	call update_tone_marker
	lxi HL, cfg_sc5_low  	! 19.07.00
	lxi DE, rx_freq       
	call copy_long        
	mvi C, 1
	lxi HL, rx_freq
	call step_channels_down
	
	mvi A, SC_5
	mov [scan_which], A
	ret	

scan_5:
	! rx band scan
	oniw LO(scan_mode), SC_5
	?jmp to_scan_1

	lxi HL, rx_freq
	lxi DE, cfg_sc5_low       
	call skip_if_freq_below
	jr 1f
	call to_scan_5
1:
	mvi C, 1
	lxi HL, rx_freq
	call step_channels_up
	lxi DE, rx_freq
	call copy_long

	call scan_skip_not_reject
	jr 1b

	lxi HL, rx_freq
	lxi DE, cfg_sc5_high         
	call skip_if_freq_above
	jr 1f
	jmp to_scan_1
1:
	call leave_memories
	call set_duplex_wrt_freq
	call freq_changed
	ret

start_step_timer:

	lxi HL, cfg_step_rate
	ldeax [HL]
	mvi B, 10
	div B
	mov A, EAL
	lti B, 5
	?adi A, 1
	gti A, 1
	?mvi A, 1
	staw LO(timer_step)
	ret

scan_skip_not_reject:

	lxi HL, rx_freq
	lxi DE, cfg_reject_0
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, cfg_reject_1
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, cfg_reject_2
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, cfg_reject_3
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, cfg_reject_4
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, cfg_reject_5
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, cfg_reject_6
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, cfg_reject_7
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, cfg_reject_8
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, cfg_reject_9
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, temp_reject_0
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, temp_reject_1
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, temp_reject_2
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, temp_reject_3
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, temp_reject_4
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, temp_reject_5
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, temp_reject_6
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, temp_reject_7
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, temp_reject_8
	call skip_if_different_freqs
	jmp 1f

	lxi HL, rx_freq
	lxi DE, temp_reject_9
	call skip_if_different_freqs
	jmp 1f
	
	rets
1:
	ret

check_scan:
	neiw LO(scan_state), 0
	?ret                         ! not scanning
	neiw LO(timer_step), 1
	?jr 1f
	neiw LO(timer_scan), 1
	?jr 1f
	neiw LO(timer_pers), 1
	?jr 1f
	ret                          ! timers still running or not running
1:
	eqiw LO(scan_state), STEPPING
	?jmp scan_step_now           ! any timer during other than STEPPING

	mov A, [rssi]
	mov B, [cfg_sqlevel]
	lta A, B                     ! rssi < sql.
	?jmp scan_promising_one      ! ?Not. stay here for a while.

	jmp scan_step_now            ! no sig. next.

scan_promising_one:
	mviw LO(scan_state), WAITING
	mviw LO(timer_step), 0
	mviw LO(timer_scan), 2       ! walk away soon if nothing happens.
	call update_tone_marker

	call squelch                 ! and see what happens
	call redraw            
	ret

scan_squelch_closing:
	mviw LO(scan_state), WAITING
	mviw LO(timer_step), 0
	mov A, [cfg_scan_wait]
	mov [timer_scan], A
	ret

scan_squelch_opening:
	mviw LO(scan_state), LISTENING
	mviw LO(timer_step), 0
	mov A, [cfg_scan_listen]
	mov [timer_scan], A
	mov A, [cfg_scan_pers]
	mov [timer_pers], A
	ret

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  MAIN
!
main:

	mvi A, 200
	call pause       ! twiddle here around 2 seconds

	! Go on.

	call mbus_hello
	call handset_init

	mvi A, 200			! OH3NWQ 2006-03-25 11:43
	call pause      ! twiddle again	! OH3NWQ 2006-03-25 11:43

	call menu_init
	call synth_init
	call i8253_init
	call ctcss_init
	call update_tone_marker
	call charger_init    
	call LFU_init
	call DAC_init
	call modem_init
	call freq_changed
	call disconnect_audio

	mvi A, OFF			! OH3NWQ 2006-03-25 10:49	
	mov [cfg_tx_on_carr], A		! OH3NWQ 2006-03-25 10:49

1:
	oni PC, I2DA
	?jr 1b          ! dual purpose, time to see the version & avoid stuck ptt

	call check_pin	! OH3NWQ 24.05.00 18:51

	call redraw
	call mbus_sendsig
	call mbus_sendvol
	call squelch_now_closed
	call backlight_init

	eqiw LO(scan_state), 0
	?call scan_start

mainloop:
	call check_warnings

	call mbus_process

	call check_ptt_pin

	eqiw LO(tx_on), 0
	?jmp txmain

	! only during receive

	call read_rssi           ! before below ones use [rssi]

	call squelch
	call check_rssi_display
	call check_dynamic_menu
	call check_scan
	call check_serv
	call timeout_fcn
	call check_lights
	jmp mainloop

	! only during tx

txmain:
	call check_stuck_tx

	mov A, [cfg_pwr_disp]		! OH3NWQ 01.07.00
	eqi A, ON			! OH3NWQ 01.07.00
	?jr 1f				! OH3NWQ 01.07.00

	call read_pfb			! OH3NWQ 01.07.00
	call check_pfb_display		! OH3NWQ 01.07.00
	call check_dynamic_menu
	jmp mainloop
1:					! OH3NWQ 13.07.00
	call txpwr_to_pfb		! OH3NWQ 13.07.00
	call check_dynamic_menu		! OH3NWQ 13.07.00
	jmp mainloop			! OH3NWQ 13.07.00

check_stuck_tx:
	mov A, [timer_txon]
	eqi A, 0
	?ret

	call stop_xmit_stealth

	mvi A, 1
	mov [timer_txon], A   ! yell again after in a minute

	call warning; .asciz "STUCK TX" ! dont skip this
	ret

check_charger:
	mov B, [charger_switch_old]	! 01.05.00 14:30
	mov A, [cfg_charger_switch]
	eqa A, B
	?call update_charger_switch

	mov A, [cfg_charger_switch]	! if update happens, A is lost
	nei A, OFF
	?jmp stop_charging

	mov A, [charger_state]
	nei A, SUSPEND
	?jmp check_suspend

	mov B, [cfg_charger_v_end]	! OH3NWQ
	call read_BATT			! Battery voltage in A
	lta A, B			! Vbat < Vend 
	?call set_overvolt

	mov B, [cfg_charger_t_end]
	call read_BTMP			! Battery temperature in A
	lta A, B			! Tend < Tbat
	?call set_overtemp

	ret

set_overvolt:
	mvi A, SUSPEND
	mov [charger_state], A
	
	mov A, [charger_suspend]
	ori A, OVERVOLT
	mov [charger_suspend], A
	
	call DAC_update
	ret

set_overtemp:
	mvi A, SUSPEND
	mov [charger_state], A

	mov A, [charger_suspend]
	ori A, OVERTEMP
	mov [charger_suspend], A
	
	call DAC_update
	ret
	
stop_charging:
	mvi A, OFF
	mov [charger_state], A
	
	call DAC_update

	ret

check_suspend:
	mov B, [cfg_charger_v_resume]	! OH3NWQ
	call read_BATT			! Battery voltage in A
	gta A, B			! Vbat > Vres
	?call reset_overvolt

	mov B, [cfg_charger_t_resume]	! OH3NWQ
	call read_BTMP			! Battery temperature in A
	gta A, B			! Tbat > Tres
	?call reset_overtemp 	
	
	mov A, [charger_suspend]
	nei A, 0
	?jmp start_charging
	ret
	
reset_overvolt:
	mov A, [charger_suspend]
	ani A, ~OVERVOLT
	mov [charger_suspend], A
	ret
	
reset_overtemp:
	mov A, [charger_suspend]
	ani A, ~OVERTEMP
	mov [charger_suspend], A
	ret

start_charging:
	mvi A, ON			! OH3NWQ
	mov [cfg_charger_switch], A	! just a dummy

	mvi A, CHARGE	
	mov [charger_state], A
	
	mvi A, OFF
	mov [charger_suspend], A

	jmp DAC_update			! no ret to save time
	
update_charger_switch:
	mov A, [cfg_charger_switch]
	mov [charger_switch_old], A
	
	nei A, ON
	?jmp start_charging
	
	jmp DAC_update 			! no ret to save time
		
check_warnings:
	eqiw LO(timer_kbd_idle), 255
	?ret

	call check_temperature
	call check_voltage
	ret

check_voltage:
	mov B, [cfg_volt_warn]		! OH3NWQ A->B
	call read_BATT			! OH3NWQ added - puts V*10 to A
	lta A, B			! OH3NWQ - had to switch A and B
	?jmp ok_voltage
	mov A, [delay_batt]
	adi A, 1
	mov [delay_batt], A
	eqi A, 0
	?ret
	offiw LO(pending_notices), 1
	?ret
	oriw LO(pending_notices), 1
	call warning; .asciz "LOW VOLTAGE" ! dont skip this
	ret
	
ok_voltage:
	mvi A, 0
	mov [delay_batt], A
	ret

check_temperature:
	mov B, [cfg_temp_warn]
	mov A, [ad_TEMP]
	xri A, 0xFF			! OH3NWQ  pöh käännä se excel taulukko...
	call map_byte_to_temperature	! OH3NWQ 
	gta A, B
	?jmp ok_temperature
	mov A, [delay_temp]
	adi A, 1
	mov [delay_temp], A
	eqi A, 0
	?ret
	offiw LO(pending_notices), 2
	?ret
	oriw LO(pending_notices), 2
	call warning; .asciz "OVERTEMPERATURE"
	ret
	
ok_temperature:
	mvi A, 0
	mov [delay_temp], A
	ret

!  Notice To The Tenant...

1: .ascii " R R R RRRR R "  ! VE

warning:
	lxi HL, 1b
	mvi C, SIZE(1b)
	call mbus_send_tones

notice:
	pop HL
	push HL
	pop DE
	mvi C, -1             ! Count DeMonet
1:
	adi C, 1
	ldax [DE]+
	eqi A, 0
	?jr 1b
	push DE               ! Return To Sender
	jmp mbus_send_lower

babble:
	pop EA
	lxi HL, 16
	dadd EA, HL
	push EA        ! ra
	lxi HL, 8
	dsub EA, HL
	push EA        ! lower
	dsub EA, HL
	push EA        ! upper
	pop HL
	mvi C, 8
	call mbus_send_upper
	pop HL
	mvi C, 8
	jmp mbus_send_lower

pause:
	staw LO(timer_ticks)
1:
	eqiw LO(timer_ticks), 0
	?jr 1b
	ret

timeout_fcn:
	oniw LO(kbd_flags), SHIFT
	?ret
	eqiw LO(timer_fcn), 0
	?ret
	jmp fcn_off

!-----------------------------------------------------------------
! If the old HF-farts from 3694/3699 are working on the repeater
! just press 99 MUTE and hey presto - you don't have to listen
! to them anymore

check_99_mute:

	mov A, [kbd_buffer + 0]
	eqi A, '9'
	?ret
	
	mov A, [kbd_buffer + 1]
	eqi A, '9'
	?ret
	
	mov A, [sqopen]		! OH3NWQ 24.06.00 
	nei A, 0		! return if squelch closed
	?ret

	mvi A, 99
	mov [mute_99_active], A
		
 	call disconnect_audio

	call do_clear		! remove 99 from "tampon du clavier"
	call do_clear		! and from display

	call keylock_on	
	ret

!--------------------------------------------------------------
! [ANY]-Key pressed or the cb-transplants have stopped babbling

clear_99_mute:				! OH3NWQ 18.06.00 12:50
	mov A, [mute_99_active]
	eqi A, 99
	?ret

	mvi A, 0			! OH3NWQ 18.06.00 12:50
	mov [mute_99_active], A		! OH3NWQ 18.06.00 12:50

	call keylock_off
	call connect_audio
	ret

!--------------------------------------------------------------
!! put this frequency to the temporary reject list
!! OH3NWQ 13.7.00

temp_reject_qrg:
	mov A, [scan_state]
	eqi A, LISTENING
	?ret			! without a skip

	lxi DE, temp_reject_0
	mov A, [temp_reject_count]
1:
	nei A, 0
	?jr 1f

	sui A, 1
	lxi EA, 3
	dadd EA, DE
	dmov DE, EA		! DE += 3
	jr 1b
1:
	lxi HL, rx_freq
	call copy_long	

	mov A, [temp_reject_count]
	adi A, 1
	lti A, 10			! A=0..9
	?mvi A, 0			! rewind - use the oldest next
	mov [temp_reject_count], A	
	rets


!--------------------------------------------------------------
!! we have 2 external sources for xmission, "ptt" button
!! and /PTT (originally I2DA). Also signalling can want xmission,

check_ptt_pin:
	oni PC, I2DA
	?oriw LO(tx_on), 2
	offi PC, I2DA
	?aniw LO(tx_on), ~2

	jmp check_tx_state

check_tx_state:
	ldaw LO(tx_on)
	slrc A                ! CY gets the current TX status, "want" bits in A
	?jr 1f                ! CY skips this
	eqi A, 0              ! tx is on. A is zero (no "want")
	?ret                  ! Oh, is and should be tx.
	jmp stop_xmit
1:
	nei A, 0              ! tx is off. A is nonzero (someone "wants")
	?ret                  ! Oh, is not and should not tx.
	
	call clear_99_mute
	call scan_stop
	jmp start_xmit

check_serv:
	eqiw LO(sq_changed), OFF
	?call mbus_sendsig
	ret

!----------------------------------------------------------------------
squelch:
	neiw LO(scan_state), STEPPING
	?ret                           ! frozen squelch during stepping scanner
	mov A, [sqopen]
	eqi A, 0
	?jmp squelch_is_open
	jmp squelch_is_closed

squelch_is_closed:
	mov A, [cfg_sqlevel]
	mov B, [cfg_sqhyst]
	slr B               ! halve
	add A, B            ! use level + 1/2 hyst
	skn CY
	?mvi A, 0xFF
	mov B, [rssi]
	lta A, B
	?jmp 1f             ! ?Not. below lower limit. definitely closed.
	mov A, [timer_sq]
	nei A, 1
	?jmp squelch_now_open ! at 1, timeout
	eqi A, 0
	?ret                ! already timing.
	jmp start_sqdelay
1:
	mvi A, 0
	mov [timer_sq], A   ! stay closed.
	ret

start_sqdelay:
	lxi HL, cfg_sqdelay
	ldeax [HL]
	mvi A, 10
	div A
	mov A, EAL
	nei A, 0
	?jmp squelch_now_open ! no open delay
	mov [timer_sq], A
	ret

start_sqtail:
	lxi HL, cfg_sqtail
	ldeax [HL]
	mvi A, 10
	div A
	mov A, EAL
	nei A, 0
	?jmp squelch_now_closed ! no open delay
	mov [timer_sq], A
	ret

squelch_is_open:
	!mov A, [mute_99_active] 	! OH3NWQ 23.05.00 13:14
	!nei A, 99			! OH3NWQ 23.05.00 13:14	
	!?call check_99_mute		! OH3NWQ 23.05.00 13:14	
	
	mov A, [cfg_sqlevel]
	mov B, [cfg_sqhyst]
	slr B               ! halve
	sub A, B            ! use level - 1/2 hyst
	skn CY
	?mvi A, 0
	mov B, [rssi]
	gta A, B
	?jmp 1f             ! ?Not. above upper limit. definitely open.
	mov A, [timer_sq]
	nei A, 1
	?jmp squelch_now_closed ! at 1, timeout
	eqi A, 0
	?ret                ! already timing.
	jmp start_sqtail
1:
	mvi A, 0
	mov [timer_sq], A   ! stay open.
	ret

squelch_now_closed:
	call clear_99_mute	! OH3NWQ 18.06.00 12:58
	
	mvi A, 0
	mov [sqopen], A
	mvi A, 0
	mov [timer_sq], A
	mvi A, ON
	mov [sq_changed], A

	oniw LO(sq_forced), 1
	?call disconnect_audio              ! ?Not. close audio

	neiw LO(scan_state), LISTENING
	?call scan_squelch_closing          ! LISTENING and squelch closed
	ret

squelch_now_open:
	mov A, [cfg_tx_on_carr]		! OH3NWQ 2006-03-23 14:14
	nei A, ON			! OH3NWQ 2006-03-23 15:07
	?jmp do_long_handset		! OH3NWQ 2006-03-25 10:52

	mvi A, ON			! OH3NWQ 2006-03-25 10:51
	mov [sqopen], A
	mvi A, OFF			! OH3NWQ 2006-03-25 10:51
	mov [timer_sq], A
	mvi A, ON
	mov [sq_changed], A

	call connect_audio

	neiw LO(scan_state), WAITING        ! WAITING and squelch opened
	?call scan_squelch_opening
	ret

sq_override:
	mov A, [sq_forced]
	xri A, 1
	mov [sq_forced], A
	oniw LO(sq_forced), 1
	?call squelch_now_closed
	offiw LO(sq_forced), 1
	?call connect_audio
	jmp redraw

sq_inc:
	mviw LO(sq_forced), 0
	mov A, [cfg_sqlevel]
	lti A, 99
	?mvi A, 99
	adi A, 1
	mov [cfg_sqlevel], A
	jmp redraw

sq_dec:
	mviw LO(sq_forced), 0
	mov A, [cfg_sqlevel]
	lti A, 100
	?mvi A, 100
	sui A, 1
	aci A, 0
	mov [cfg_sqlevel], A
	jmp redraw

	!  Either
	!   currently we have NO audio, but user suggests
	!   that squelch ought to be OPEN.
	!  Or
	!   currently we HAVE audio, but user suggests
	!   that squelch ought to be CLOSED.
sq_auto:
	mviw LO(sq_forced), 0
	mov A, [sig_peak]
	mov B, [cfg_sqhyst]
	sll B
	eqiw LO(sqopen), 0
	?jr 1f
	sub A, B        ! sq level = peak rssi - 2 * hyst, when sq closed
	skn CY
	?mvi A, 0
	jr 2f
1:
	add A, B        ! sq level = peak rssi + 2 * hyst, when sq open
	skn CY
	?mvi A, 0xFF
2:
	mov [cfg_sqlevel], A
	jmp redraw

!----------------------------------------------------------------------
check_rssi_display:
	mov A, [rssi]
	mov B, [sig_peak]
	nea A, B
	?ret               ! same.
	lta A, B
	?jmp new_rssi      ! rssi has risen
	eqiw LO(timer_sig), 0
	?ret               ! still timing last peak
	jmp new_rssi

new_rssi:
	mov [sig_peak], A
	call mbus_sendsig
	mvi A, 200
	mov [timer_sig], A
	ret

read_rssi:
	mov A, [rssi]
	mov [rssi_prev], A
	mov A, [ad_RSSI]
	sui A, 30           ! XXX discard 30 steps from bottom
	skn CY
	?mvi A, 0
	mvi B, 100
	mul B
	mvi A, (255 - 30 - 30) ! XXX also discard 30 steps from top
	div A
	mov A, EAL
	lti A, 99
	?mvi A, 99
	mov [rssi], A
	ret

txpwr_to_pfb:			! OH3NWQ 13.07.00
	mov A, [cfg_txpwr]	
	lti A, 99		! 100 was shown :0 ! 19.07.00 this was in wrong place
	?mvi A, 99

	mov B, [sig_peak]
	nea A, B
	?ret               	! same.

	jmp new_pfb      	
	ret 

read_pfb:
	mov A, [pfb]
	mov [pfb_prev], A
	mov A, [ad_PFB]
	mvi B, 100
	mul B
	mvi A, (255 - 0 - 0) ! XXX floor and ceil
	div A
	mov A, EAL
	lti A, 99
	?mvi A, 99
	mov [pfb], A
	ret

check_pfb_display:
	mov A, [pfb]
	mov B, [sig_peak]
	nea A, B
	?ret               	! same.
	lta A, B
	?jmp new_pfb      	! pfb has risen
	eqiw LO(timer_sig), 0
	?ret               	! still timing last peak
	jmp new_pfb

new_pfb:
	mov [sig_peak], A
	call mbus_sendsig
	mvi A, 100
	mov [timer_sig], A
	ret

!----------------------------------------------------------------------

check_dynamic_menu:
	neiw LO(menu_active), OFF
	?ret
	lhld [menu_ptr]
	ldax [HL+offset_type]
	
	nei A, CFG_DYN
	?jr 1f
	nei A, CFG_DYN_I
	?jr 1f
	nei A, CFG_DYN_V
	?jr 1f
	ret
1:	
	eqiw LO(timer_ticks), 0
	?ret
	call draw_menu_lower     ! CFG_DYN need constant update
	mviw LO(timer_ticks), 100
	ret

canada:
	lxi HL, 1f
	mvi C, 8
	jmp mbus_send_lower
1:
	.asciz "FUBAR ! "

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  SMALL UTILITIES
!

map_chr_to_hex:
	gti A, '0' - 1         ! at or above ascii 0
	?ret
	lti A, 'a'             ! 0..9 or A..Z
	?jr 1f
	lti A, 'A'             ! 0..9
	?jr 2f
	sui A, '0'             ! '0' to 0 etc
	ret
1:
	sui A, 'a' - 10        ! 'a' to 0xA etc
	ret
2:
	sui A, 'A' - 10        ! 'A' to 0xA etc
	ret

str2i:
	mvi B, 0
1:
	ldax [HL+B]
	nei A, 0
	?jr 1f
	adi B, 1
	gti B, 7
	?jr 1b
1:
	mov A, B
	mov C, A
	jmp buf2i

map_idx_to_txtone:
	lxi HL, cfg_txtone1
	nei A, 1
	?rets
	lxi HL, cfg_txtone2
	nei A, 2
	?rets
	lxi HL, cfg_txtone3
	nei A, 3
	?rets
	lxi HL, cfg_txtone4
	nei A, 4
	?rets
	lxi HL, cfg_txtone5
	nei A, 5
	?rets
	lxi HL, cfg_txtone6
	nei A, 6
	?rets
	lxi HL, cfg_txtone7
	nei A, 7
	?rets
	lxi HL, cfg_txtone8
	nei A, 8
	?rets
	ret

! A contains 0..100, return A 0..255


!moved conversion tables to byte2x.asm
!------------------------------------------------

#include "byte2x.asm"


! For short number commands. Clear also the buffer.

get_the_number:
	mov C, [kbd_index]
	lxi HL, kbd_buffer
	call buf2i
	mvi A, 0
	mov [kbd_index], A
	mov A, EAL
	ret

!  Return 0 in BC without pending digits, else the number -1.
!  Buffer is also emptied.
!  used to multiply plain commands. (3 NEXT)

repeat_count:
	lxi BC, 0
	mov A, [kbd_index]
	nei A, 0
	?ret                  ! no digits, return 0
	mov C, A
	lxi HL, kbd_buffer
	call buf2i
	push EA
	pop BC                ! return number - 1
	eqi C, 0
	?sui C, 1
	mvi A, 0
	mov [kbd_index], A    ! zero out buffer
	ret

!  Divide frequency in [HL] (3 bytes) by B, e.g. freq / 25
!  Store result to [DE] (3 bytes), leave remainder in B

divide_long_by_B:
	ldeax [HL+1]      ! freq 2 MSBytes
	mov A, B          ! divisor
	div A
	steax [DE+1]      ! EAH result 2 MSBytes
	ldeax [HL]
	mov EAH, A        ! freq LSByte and remainder from above
	div B             ! leaves remainder in B
	mov A, EAL        ! result LSByte
	stax [DE]         ! into place
	ret

!  Multiply divisor in [HL] (3 bytes) by B, e.g. divisor * 25
!  Store result (e.g. frequency) into [DE] (3 bytes)

multiply_long_by_B:
	push BC
	ldax [HL+2]       ! [2] MSByte
	mul B
	push EA
	ldax [HL+1]       ! [1] middle byte
	mul B
	push EA
	ldax [HL]         ! [0] LSByte
	mul B
	steax [DE]        ! store result LSByte
	mov A, EAH
	pop EA            ! get 2nd *
	eadd EA, A        ! CY valid
	steax [DE+1]      ! store result middle byte
	mov A, EAH
	pop BC            ! get 1st *
	adc A, C          ! CY used
	stax [DE+2]       ! store result MSByte
	pop BC
	ret

! destination DE, HL+BC
add_longs:
	push BC
	ldax [HL]
	addx [BC]
	stax [DE]
	inx BC
	ldax [HL+1]
	adcx [BC]
	stax [DE+1]
	inx BC
	ldax [HL+2]
	adcx [BC]
	stax [DE+2]
	pop BC
	ret

! destination DE, HL-BC
subtract_longs:
	push BC
	ldax [HL]
	subx [BC]
	stax [DE]
	inx BC
	ldax [HL+1]
	sbbx [BC]
	stax [DE+1]
	inx BC
	ldax [HL+2]
	sbbx [BC]
	stax [DE+2]
	pop BC
	ret

! skip-return if freq is not zero (e.g. testing if setup freqs are set)

skip_if_not_empty_freq:
	ldax [HL]
	eqi A, 0
	?rets
	ldax [HL+1]
	eqi A, 0
	?rets
	ldax [HL+2]
	eqi A, 0
	?rets
	ret

skip_if_same_freqs:
	push DE
	ldax [HL]
	subx [DE]
	eqi A, 0
	?jr 1f
	inx DE
	ldax [HL+1]
	subx [DE]
	eqi A, 0
	?jr 1f
	inx DE
	ldax [HL+2]
	subx [DE]
1:
	pop DE
	eqi A, 0
	?ret          ! skips if freqs are different
	rets

skip_if_different_freqs:
	push DE
	ldax [HL]
	subx [DE]
	eqi A, 0
	?jr 1f
	inx DE
	ldax [HL+1]
	subx [DE]
	eqi A, 0
	?jr 1f
	inx DE
	ldax [HL+2]
	subx [DE]
1:
	pop DE
	eqi A, 0
	?rets          ! skips if freqs are different
	ret

! skip-return if long at [HL] is less than long at [DE] (HL-DE borrows)

skip_if_freq_below:
	push DE
	ldax [HL]
	subx [DE]
	inx DE
	ldax [HL+1]
	sbbx [DE]
	inx DE
	ldax [HL+2]
	sbbx [DE]
	pop DE
	sk CY
	?ret
	rets                 ! skip-return, freq is below

! skip-return if long at [HL] is greater than long at [DE] (DE-HL borrows)

skip_if_freq_above:
	push HL
	ldax [DE]
	subx [HL]
	inx HL
	ldax [DE+1]
	sbbx [HL]
	inx HL
	ldax [DE+2]
	sbbx [HL]
	pop HL
	sk CY
	?ret
	rets                 ! skip-return, freq is above

copy_long:
	ldeax [HL]
	steax [DE]
	ldax [HL+2]
	stax [DE+2]
	ret

copy_word:			! OH3NWQ 09.07.00 14:37
	ldeax [HL]		! OH3NWQ 09.07.00 14:37
	steax [DE]		! OH3NWQ 09.07.00 14:37
	ret			! OH3NWQ 09.07.00 14:37



! input in HL & C (kept), result to BEA,
! nondigits in buffer are not handled (funny results).
! leading blanks are skipped, thou.

buf2i:
	push BC
	push DE
	push HL
	mvi B, 0
	lxi EA, 0    ! collect here
1:
	nei C, 0
	?jr 1f
	ldax [HL]
	eqi A, ' '
	?jr 1f
	inx HL
	sui C, 1
	jr 1b
1:
	jmp 2f       ! start loop below, for 0 length input
1:
	dmov DE, EA
	mov A, B     ! copy BEA into ADE
	dadd EA, DE
	adc A, B     ! * 2 (in AEA)
	dadd EA, DE
	adc A, B     ! * 3
	dadd EA, DE
	adc A, B     ! * 4
	dadd EA, DE
	adc A, B     ! * 5
	dmov DE, EA
	mov B, A     ! copy AEA into BDE
	dadd EA, DE
	adc B, A     ! * 10 complete in BEA
	ldax [HL]+
	sui A, '0'
	eadd EA, A
	aci B, 0     ! ones added
2:
	dcr C
	?jre 1b
	mov A, B
	pop HL
	pop DE
	pop BC
	mov B, A     ! BEA has integer
	ret

! input in BEA
! output to [HL]...[HL+7]
! regs destroyed

i2buf:
	mvi A,  10000000 / 65536
	lxi DE, 10000000 % 65536
	call 1f
	adi A, '0'
	stax [HL+0]              ! 1_______ 0x67697f  0_______ 0x00ffff
	mvi A,  1000000 / 65536
	lxi DE, 1000000 % 65536
	call 1f
	adi A, '0'
	stax [HL+1]              ! 16______ 0x0bdbff  00______ 0x00ffff
	mvi A,  100000 / 65536
	lxi DE, 100000 % 65536
	call 1f
	adi A, '0'
	stax [HL+2]              ! 167_____ 0x012d9f  000_____ 0x00ffff
	mvi A,  10000 / 65536
	lxi DE, 10000 % 65536
	call 1f     
	adi A, '0'
	stax [HL+3]              ! 1677____ 0x001c2f  0006____ 0x00159f
	mvi A, 10
	div A
	adi A, '0'
	stax [HL+7]              ! 1677___5           0006___5
	mvi A, 10
	div A
	adi A, '0'
	stax [HL+6]              ! 1677__15           0006__35
	mvi A, 10
	div A
	adi A, '0'
	stax [HL+5]              ! 1677_215           0006_535
	mov A, EAL
	adi A, '0'
	stax [HL+4]              ! 16777215           00065535

	mvi C, 6
2:
	ldax [HL]
	eqi A, '0'
	?jr 2f
	mvi A, ' '
	stax [HL]+
	dcr C
	?jr 2b
2:
	ret
1:
	mvi C, -1
1:
	adi C, 1
	dsub EA, DE
	sbb B, A
	sk CY
	?jr 1b
	dadd EA, DE
	adc B, A
	mov A, C
	ret

! C has count of steps, [HL] has freq

step_channels_up:
	call align_freq
	call get_C_channels_span
	dmov DE, EA
	ldeax [HL]
	ldax [HL+2]
	dadd EA, DE
	aci A, 0
	steax [HL]
	stax [HL+2]
	ret

step_channels_down:
	call skip_if_aligned_freq
	sui C, 1
	call align_freq
	call get_C_channels_span
	dmov DE, EA
	ldeax [HL]
	ldax [HL+2]
	dsub EA, DE
	sbi A, 0
	steax [HL]
	stax [HL+2]
	ret

skip_if_aligned_freq:
	mov A, [cfg_chan_step]
	mvi B, 25
	nei A, 1
	?mvi B, 20
	nei A, 2
	?mvi B, 25        ! barf, 12.5 silliness
	nei A, 3
	?mvi B, 10
	lxi DE, scratch_freq
	call divide_long_by_B
	nei B, 0                    ! there was remainder.
	?rets                       ! no need to fixup steps, starting aligned
	mov A, [cfg_chan_step]
	eqi A, 2                    ! 12.5 index
	?ret
	eqi B, 12
	?ret
	rets                        ! aligned at 12.5

align_freq:
2:
	mov A, [cfg_chan_step]
	mvi B, 25
	nei A, 1
	?mvi B, 20
	nei A, 2
	?mvi B, 25        ! barf, 12.5 silliness
	nei A, 3
	?mvi B, 10
	lxi DE, scratch_freq
	call divide_long_by_B
	nei B, 0                    ! not aligned.
	?ret                        !
	eqi B, 12                   ! remainder 12
	?jr 1f
	mov A, [cfg_chan_step]
	eqi A, 2                    ! with 12.5 step
	?jr 1f
	ret                         ! aligned at 12.5
1:
	ldeax [HL]
	ldax [HL+2]
	mvi B, 1      ! i'm laughing too
	esub EA, B
	sbi A, 0
	steax [HL]
	stax [HL+2]
	jre 2b

! into EA kHz to add, max 255 * 25, 6375

get_C_channels_span:
	mov A, [cfg_chan_step]
	mvi B, 25
	nei A, 1
	?mvi B, 20
	nei A, 2
	?mvi B, 25        ! barf, 12.5 really
	nei A, 3
	?mvi B, 10
	mov A, C
	mul B
	mov A, [cfg_chan_step]
	nei A, 2
	?dslr EA        ! barf^2
	ret

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  CW beeper
!
!
! tabled bits 1=dit, 0=dash. right aligned into byte.
! unused bits contain first one 1, then zeroes (0b10000000 terminate).
!
! ______________________________________________  46 slots aka dit-times
! X XXX XXX X __X XXX __X XXX X __X X   X X X __ 
! P             A       R         I     S
! 46 slots / 5 chrs;  9.2  slots/chr.
! N chrs/min; N chrs / 60 sec
! 60 / ( 9.2 * N )  sec/slot
! 112 ticks/sec
! 730/N  ticks/slot

! Separate character, 3 dit-times of silence after last tone

cw_chr:
	eqi A, ' '
	?call cw_chr_1       ! *_---_
	call cw_pause        ! _
	call cw_pause        ! _
	ret

! sleep for one dit-time

cw_pause:
	lxi HL, cfg_cw_speed
	ldeax [HL]
	mov A, EAH
	eqi A, 0
	?lxi EA, 255        ! cannot go faster (also unreadable)
	mov A, EAL
	gti A, 40
	?mvi A, 40          ! be reasonable, we'd be here until next week
	lxi EA, 730         ! see above for maths. WPM into slept ticks
	div A
	mov A, EAL
	jmp pause

! play one cw character. No extra slot is appended, just the one silence.
! i.e. 2 slots per dit, 4 slots per dash.

cw_chr_1:               ! fill slots contained in chr
	push HL
	lxi HL, cw_tab
	ldax [HL+A]
	oni A, 0x7F         ! terminator 1-bit there ?
	?mvi A, 0b11001110  ! '?'
2:
	push VA
	call cw_tone_on
	pop VA
	sll A
	push VA
	skn CY               ! CY=0=dash
	?jr 1f
	call cw_pause
	call cw_pause
1:
	call cw_pause
	call cw_tone_off
	call cw_pause
	pop VA
	eqi A, 0x80         ! terminator shifted into place.
	?jr 2b
	pop HL
	ret                 ! done.

cw_tone_off:
	jmp i8253_tone_off

cw_tone_on:
	lxi HL, cfg_cw_pitch
	ldeax [HL]          ! Hz as configured in EA
	jmp i8253_tone_hz

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  Key specific actions
!
!----------------------------------------------------------------------

do_quit:

	ani PB, ~(TXON | TSON | TAON)

	call disconnect_audio
	call babble; .ascii PROVERB
	mvi A, 100
	call pause
	
	call babble; .ascii "73 Bye ! OH3NWQ "
	mvi A, 50
	call pause

	call mbus_handset_blank

	ori PC, PWROFF
	jmp .

do_menu_mft:
	eqiw LO(menu_active), OFF
	?jmp do_menu               ! MENU/MFT in menu never MFT
	offiw LO(kbd_flags), SHIFT
	?jmp do_mft
	jmp do_menu

do_ok_lock:
	eqiw LO(menu_active), OFF
	?jmp menu_ok               	! OK/LOCK in menu likewise never LOCK
	!offiw LO(kbd_flags), SHIFT	! OH3NWQ 01.07.00 LOCK command disabled
	!?jmp do_lock			! OH3NWQ 01.07.00 always OK
	jmp do_ok

do_r_alpha:
	offiw LO(kbd_flags), SHIFT
	?jmp do_alpha
	jmp do_r

do_next_prev:
	eqiw LO(menu_active), OFF
	?jmp menu_next_prev

	call scan_stop

	offiw LO(kbd_flags), SHIFT
	?jmp do_prev
	jmp do_next

do_rcl_sto:
	eqiw LO(menu_active), OFF
	?jmp menu_rcl_sto

	call scan_stop

	offiw LO(kbd_flags), SHIFT
	?jmp do_sto
	jmp do_rcl

!----------------------------------------------------------------------
do_clear:
	offiw LO(kbd_flags), SHIFT
	?jr 2f
	mov A, [kbd_index]
	dcr A
	?jr 1f
2:
	mvi A, 0
1:
	mov [kbd_index], A
	call fcn_off

	jmp redraw

do_plus:
	offiw LO(tx_on), 1
	?jmp pwr_inc                     ! + TXPWR if xmit

	eqiw LO(kbd_index), 0
	?jmp do_next_from_outer_space    ! + FREQ if digits

	offiw LO(kbd_flags), SHIFT
	?jmp sq_inc                      ! +SQ if FCN
	jmp vol_inc                      ! vol otherwise

do_minus:
	offiw LO(tx_on), 1
	?jmp pwr_dec
	
	eqiw LO(kbd_index), 0
	?jmp do_prev_from_outer_space    ! - FREQ if digits

	offiw LO(kbd_flags), SHIFT
	?jmp sq_dec
	eqi B, 0
	?jmp vol_mute    ! typematic -, mute instead (AND HURRY !)
	jmp vol_dec

do_mute:
	offiw LO(kbd_flags), SHIFT
	?jmp sq_auto

	neiw LO(kbd_index), 2		! OH3NWQ 23.06.00
	?jmp check_99_mute

	eqiw LO(scan_state), 0      	! scanning?
	?call temp_reject_qrg           ! yes? if LISTENING, reject this frequency
	
	jmp sq_override
	ret				! if returned with a skip

do_mft:
	call fcn_off
	ret

do_ok:
	call fcn_off
	call scan_stop

	eqiw LO(kbd_index), 0
	?jmp do_enter_really         ! digits OK

	mov A, [duplex_state]
	nei A, 2
	?jmp ok_with_reverse_duplex ! OK during input monitoring

	jmp recall_my_favorites     ! plain OK


do_fcn:
	mviw LO(timer_fcn), 15
	mov A, [kbd_flags]
	xri A, SHIFT
	mov [kbd_flags], A
	jmp mbus_update_lights

do_alpha:
	call fcn_off
	mov A, [kbd_flags]
	xri A, ALPHA
	mov [kbd_flags], A
	jmp mbus_update_lights

do_lock:
	call fcn_off
	mov A, [kbd_flags]
	xri A, KEYLOCK
	mov [kbd_flags], A
	jmp mbus_update_lights

do_handset:			! tests modem transmission
	
	offiw LO(kbd_flags), SHIFT
	?jmp do_long_handset
	
	call do_ptt_button		! OH3NWQ 02.07.00 13:33
	call LFU_select_fsk		! OH3NWQ 03.07.00 13:05 
	lxi HL, 1f			! OH3NWQ 03.07.00 20:26 
	mvi C, 6			! OH3NWQ 03.07.00 20:26 
	call modem_xmit 	

	call do_ptt_button		! OH3NWQ 02.07.00 13:33
	call LFU_select_mic		! OH3NWQ 03.07.00 13:05 
	ret				! 
1:
	.byte	0xc3, 0x69, 0x40, 0x36, 0x99, 0x0F	!  C 36940  36990 F

	
do_long_handset:			! tests modem transmission	
	call fcn_off
	
	call do_ptt_button		! OH3NWQ 02.07.00 13:33
	call LFU_select_fsk		! OH3NWQ 03.07.00 13:05 
	
	lxi HL, packet_recipient 	! OH3NWQ 03.07.00 20:26 
	mvi C, 8		 	! OH3NWQ 03.07.00 20:26 
	call modem_xmit 	

	lxi HL, 1f			! OH3NWQ 03.07.00 20:26 
	mvi C, 4			! OH3NWQ 03.07.00 20:26 
	call modem_xmit 	

	lxi HL, cfg_mycall		! OH3NWQ 01.07.00
	mvi C, 8			! OH3NWQ 01.07.00
	call modem_xmit 		! 

	lxi HL, 2f			! OH3NWQ 03.07.00 20:26 
	mvi C, 3			! OH3NWQ 03.07.00 20:26 
	call modem_xmit 	

	lxi HL, packet_message		! OH3NWQ 03.07.00 20:26 
	mvi C, 56			! OH3NWQ 03.07.00 20:26 
	call modem_xmit 	

	lxi HL, 3f			! OH3NWQ 03.07.00 20:26 
	mvi C, 6			! OH3NWQ 03.07.00 20:26 
	call modem_xmit 	

	call do_ptt_button		! OH3NWQ 02.07.00 13:33
	call LFU_select_mic		! OH3NWQ 03.07.00 13:05 
	ret				! 
	
packet_recipient:
	.ascii "EVERYONE"		
packet_message:
	.ascii "If packet radio sucked, it would be good for something. "
1:	
	.ascii " DE "
2: 	
	.ascii " : "
3:	
	.ascii " [END]"	

do_rcl:
	call scan_stop

	neiw LO(kbd_index), 0
	?jmp recall_previous_freqs

	call get_the_number
	call recall_memory
	ret

do_sto:
	call fcn_off

	call scan_stop

	offiw LO(kbd_flags), ALPHA
	?jmp name_memory                     ! STO in ALPHA state

	neiw LO(kbd_index), 0
	?jmp store_next_free_memory          ! STO without digits

	call get_the_number
	call store_memory
	ret

do_next:
	call scan_stop

	gtiw LO(mem_idx), 99
	?jmp memory_next

do_next_from_outer_space:
	call scan_stop

	call repeat_count
	adi C, 1
	lxi HL, rx_freq
	call step_channels_up
	
	lxi HL, rx_freq			! OH3NWQ 18.07.00 22:23
	lxi DE, cfg_rxband_high         ! OH3NWQ 18.07.00 22:23
	call skip_if_freq_above		! OH3NWQ 18.07.00 22:23
	jr 1f				! OH3NWQ 18.07.00 22:23

	lxi HL, cfg_rxband_low		! OH3NWQ 19.07.00 
	lxi DE, rx_freq			! rewind to 432.000 / 1240.000
	call copy_long
1:	
	call leave_memories
	call set_duplex_wrt_freq
	call freq_changed
	jmp redraw

do_prev:
	call scan_stop

	gtiw LO(mem_idx), 99
	?jmp memory_prev

do_prev_from_outer_space:
	call scan_stop

	call repeat_count
	adi C, 1
	lxi HL, rx_freq
	call step_channels_down

	lxi HL, rx_freq			! OH3NWQ 18.07.00 22:23
	lxi DE, cfg_rxband_low		! OH3NWQ 18.07.00 22:23
	call skip_if_freq_below		! OH3NWQ 18.07.00 22:23
	jr 1f				! OH3NWQ 18.07.00 22:23

	lxi HL, cfg_rxband_high		! OH3NWQ 19.07.00 
	lxi DE, rx_freq			! rewind to 438.000 / 1300.000
	call copy_long
1:	
	call leave_memories
	call set_duplex_wrt_freq
	call freq_changed
	jmp redraw

!  duplex state might be 3, reset here to 0..2

do_r:
	call fcn_off
	call scan_stop

	mov A, [duplex_state]
	nei A, 1
	?call enter_reverse_duplex  ! 1 to 2 fixups
	mov A, [duplex_state]
	nei A, 2
	?call leave_reverse_duplex  ! 2 to 0 fixups

	mov A, [duplex_state]
	adi A, 1
	lti A, 3
	?mvi A, 0
	mov [duplex_state], A

	call freq_changed
	jmp redraw

do_star:
	call scan_stop

	offiw LO(kbd_flags), ALPHA
	?jmp alpha_star_input		! ALPHA was not off, go stash '*'

	eqiw LO(kbd_index), 0
	?jr 1f

	nei B, 0
	?jmp repeater_beep         ! once only
	ret

1:
	offiw LO(kbd_flags), SHIFT	
	?jmp dtmf_from_buffer		! fcn 1234* - send dtmf
	jmp ccir_from_buffer		!     1234* - send ccir

! PTT button. Sticky TX without real PTT ?

do_ptt_button:
	call fcn_off
	call scan_stop

	oniw LO(tx_on), 4
	?jr 1f
	aniw LO(tx_on), ~4
	jmp check_tx_state
1:
	oriw LO(tx_on), 4
	jmp check_tx_state

! Button with the small handset in it.

!do_handset:
!	ret

! HF button	Hailing Frequencies open, sir !

do_hf:
	eqiw LO(kbd_index), 0
	?jmp scan_start

	neiw LO(scan_state), 0      ! already scanning.
	?jmp scan_start             ! ?Not. so start.

	call scan_stop
	jmp redraw

do_enter:
	call fcn_off
	call scan_stop

	offiw LO(kbd_flags), ALPHA
	?jmp chr_input             ! ALPHA was not off, go stash '#'

do_enter_really:
	call scan_stop

	eqiw LO(menu_active), OFF
	?call menu_accept

	neiw LO(menu_active), OFF
	?call cmd_accept

	mviw LO(kbd_index), 0
	call redraw
	ret

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
cmd_accept:
	mov A, [kbd_index]
	nei A, 0
	?ret
	gti A, 2
	?jmp cmd_memory
	nei A, 3
	?jmp cmd_3_digits
	nei A, 4
	?jmp cmd_4_digits

	jmp cmd_frequency

!----------------------------------------------------------------------
!
cmd_memory:
	call get_the_number
	jmp recall_memory

cmd_3_digits:
	jmp prep_implied_first

cmd_4_digits:
	jmp prep_implied_first

cmd_5_digits:
	jmp prep_implied_first

cmd_frequency:
	lxi HL, kbd_buffer
	mov C, [kbd_index]
	jmp go_HLC_freq

go_HLC_freq:
	call buf2i
	lxi HL, rx_freq
	steax [HL]
	mov A, B
	stax [HL+2]

	lxi HL, rx_freq
	lxi DE, cfg_rxband_low
	call skip_if_freq_below
	jr 1f

	lxi HL, cfg_rxband_low
	lxi DE, rx_freq
	call copy_long

	!call redraw
	!ret
1:
	lxi HL, rx_freq
	lxi DE, cfg_rxband_high
	call skip_if_freq_above
	jr 1f

	lxi HL, cfg_rxband_high
	lxi DE, rx_freq
	call copy_long
	
	!call redraw
	!ret
1:	
	call leave_memories
	call set_duplex_wrt_freq
	call freq_changed
	ret

prep_implied_first:
	lxi HL, cfg_freq_implied
	ldeax [HL]
	ldax [HL+2]
	mov B, A
	lxi HL, prt_buffer
	call i2buf                  ! prt_buffer has implied part of freq
	lxi DE, prt_buffer + 8
	lxi EA, kbd_buffer
	mov A, [kbd_index]
	eadd EA, A
	dmov HL, EA
	mov C, A                    ! overwrite from the end with kbd input
	jr 2f
1:
	dcx HL
	dcx DE
	ldax [HL]
	stax [DE]
2:
	dcr C
	?jr 1b
	lxi HL, prt_buffer
	mvi C, 8
	jmp go_HLC_freq

!----------------------------------------------------------------------
!
!
leave_memories:
	oriw LO(mem_idx), 0x80

	mviw LO(mem_name + 0), 0
	mviw LO(mem_name + 1), 0
	mviw LO(mem_name + 2), 0

	call ctcss_init
	call update_tone_marker
	ret

memory_prev:
	call repeat_count

	mov A, [mem_idx]
	ani A, 0x7F
	mvi C, 100
1:
	sui A, 1
	lti A, MEM_max
	?mvi A, MEM_max-1
	mov E, A
	call index_memories
	ldax [HL]
	offi A, MEM_EXIST
	?jr 1f
	mov A, E
	dcr C
	?jr 1b
	ret                     ! Sorry.
1:
	mov A, E
	jmp recall_memory

memory_next:
	call repeat_count

	mov A, [mem_idx]
	ani A, 0x7F
	mvi C, 100
1:
	adi A, 1
	lti A, MEM_max
	?mvi A, 0
	mov E, A
	call index_memories
	ldax [HL]
	offi A, MEM_EXIST
	?jr 1f
	mov A, E
	dcr C
	?jr 1b
	ret                     ! Sorry.
1:
	mov A, E
	jmp recall_memory

index_memories:
	lti A, MEM_max
	?mvi A, MEM_max-1
	mvi B, MEM_size
	mul B
	lxi HL, memories
	dadd EA, HL
	dmov HL, EA
	ret

name_memory:
	call alpha_off

	lxi HL, kbd_buffer
	lxi DE, mem_name

	mvi A, 0
	stax [DE]
	stax [DE+1]
	stax [DE+2]

	gtiw LO(kbd_index), 0
	?jr 1f
	ldax [HL]+
	stax [DE]+
	gtiw LO(kbd_index), 1
	?jr 1f
	ldax [HL]+
	stax [DE]+
	gtiw LO(kbd_index), 2
	?jr 1f
	ldax [HL]+
	stax [DE]+
1:
	mviw LO(kbd_index), 0

	mov A, [mem_idx]
	ani A, 0x7F
	call index_memories
	lxi EA, MEM_name
	dadd EA, HL
	dmov DE, EA

	lxi HL, mem_name
	ldax [HL]+
	stax [DE]+
	ldax [HL]+
	stax [DE]+
	ldax [HL]+
	stax [DE]+

	jmp redraw

store_next_free_memory:

	lxi EA, memories
	mvi B, 0
1:
	dmov HL, EA 
	ldax [HL]
	oni A, MEM_EXIST
	?jr 1f
	lxi HL, MEM_size
	dadd EA, HL
	adi B, 1
	gti B, MEM_max-1
	?jr 1b
	ret                   ! Sorry
1:
	push BC
	mov A, B
	call store_memory

	pop BC
	mov A, B

	jmp recall_memory

store_memory:
	lti A, MEM_max
	?ret
	mov C, A
	mvi B, MEM_size
	mul B
	lxi DE, memories
	dadd EA, DE
	dmov DE, EA

	mvi A, MEM_EXIST
	mov B, [duplex_state]
	nei B, 1
	?ori A, MEM_DUPLEX
	nei B, 3
	?ori A, MEM_OFFTX

	eqiw LO(rx_freq + 0), 0
	?jr 1f
	eqiw LO(rx_freq + 1), 0
	?jr 1f
	eqiw LO(rx_freq + 2), 0
	?jr 1f
	mvi A, 0                   ! no MEM_EXIST if cleared freq
1:
	stax [DE]+			; ASSERT(MEM_flags == 0)

	lxi HL, rx_freq
	call copy_long			; ASSERT(MEM_rx == 1)
	inx DE
	inx DE
	inx DE

	lxi HL, tx_freq
	call copy_long			; ASSERT(MEM_offtx == 4)
	inx DE
	inx DE
	inx DE

	lxi HL, mem_name
	call copy_long			; ASSERT(MEM_name == 7)
	inx DE				! OH3NWQ 09.07.00 14:34
	inx DE				! OH3NWQ 09.07.00 14:34
	inx DE				! OH3NWQ 09.07.00 14:34
	
	mov A, [cfg_ctcss_tone]		! OH3NWQ 12.07.00 12:19 
	stax [DE]+			; ASSERT(MEM_ctcss == 10)

	!lxi HL, cfg_ctcss_tone		! OH3NWQ 09.07.00 14:32
	!call copy_word			; ASSERT(MEM_ctcss == 10)

	jmp redraw

recall_memory:
	lti A, MEM_max
	?ret
	mov C, A                         ! remember memory number
	mvi B, MEM_size
	mul B
	lxi HL, memories
	dadd EA, HL                      ! record ptr
	dmov HL, EA

	ldax [HL]+                 ; ASSERT(MEM_flags == 0)
	oni A, MEM_EXIST
	?jmp memory_non_exist_de_pas

	mov [mem_idx], C
	mov [mem_flags], A

	lxi DE, rx_freq            ; ASSERT(MEM_rx == 1)
	call copy_long

	inx HL
	inx HL
	inx HL
	lxi DE, tx_freq            ; ASSERT(MEM_offtx == 4)
	call copy_long             ! shortly overwritten unless separate tx

	inx HL
	inx HL
	inx HL
	lxi DE, mem_name           ; ASSERT(MEM_name == 7)
	call copy_long             ! shortly overwritten unless separate tx

	inx HL			! OH3NWQ 09.07.00 14:41
	inx HL			! OH3NWQ 09.07.00 14:41
	inx HL			! OH3NWQ 09.07.00 14:41
	ldax [HL]+		! OH3NWQ 12.07.00 12:15 
	mov [ctcss_tone], A	   ; ASSERT(MEM_ctcss == 10)
	call update_tone_marker	! OH3NWQ 11.07.00 13:22 
	
	mov A, [mem_flags]
	mvi B, 0
	offi A, MEM_DUPLEX
	?mvi B, 1           ! normal duplex memory
	offi A, MEM_OFFTX
	?mvi B, 3           ! separate tx freq

	mov [duplex_state], B

	call freq_changed
	call redraw
	ret

memory_non_exist_de_pas:
	lxi HL, 1f
	mvi C, 8
	call mbus_send_lower
	mvi A, 50
	call pause
	jmp redraw
1:	.asciz " M empty"

!----------------------------------------------------------------------
!
!
recall_previous_freqs:
	jmp redraw

recall_my_favorites:
	lxi DE, rx_freq          ! what we will change
	lxi HL, cfg_callfreq
	call skip_if_different_freqs
	lxi HL, cfg_my_favorite
	call skip_if_not_empty_freq
	jmp do_enter_really

	call copy_long
	call leave_memories
	call set_duplex_wrt_freq
	call freq_changed
	call redraw
	ret

!----------------------------------------------------------------------
1:
	.ascii "RRRRR"

repeater_beep:
	call start_xmit
	lxi HL, 1b
	mvi C, 4
	call mbus_send_tones
	mvi A, 50
	call pause
	call stop_xmit
	ret

dtmf_from_buffer:
	call start_xmit
	lxi HL, kbd_buffer
	mov C, [kbd_index]
	call mbus_send_tones
	mov A, [kbd_index]
	adi A, 1
	mvi B, 10
	mul B
	mov A, EAL
	call pause
	call stop_xmit

	mviw LO(kbd_index), 0  ! This will clear the buffer. Use PTT to keep it.
	ret

ccir_from_buffer:
	lxi HL, kbd_buffer
	mov C, [kbd_index]
	eqi C, 1
	?jr 1f                 ! Use the digits themselves
	call buf2i             ! digit to number
	mov A, EAL
	call map_idx_to_txtone ! indirect to preset series [HL] (skip if set)
	ret                    ! huh ?
	call txtone_len
	nei C, 0
	?ret                  ! huh ?
1:
	push HL
	push BC
	call start_xmit
	pop BC
	pop HL
	call ccir_xmit
	call stop_xmit

	mviw LO(kbd_index), 0  ! This will clear the buffer. Use PTT to keep it.
	ret

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  MBUS intercourse
!
#include "mbus.asm" /* get the text */

mbus_newmsg:

	ldax [HL]+
	eqi A, 'A'
	?ret
	ldax [HL]+
	eqi A, 'N'
	?ret
	ldax [HL]+
	eqi A, 'Y'
	?ret
	ldax [HL]+
	eqi A, '1'
	?ret

	ldax [HL]+               ! sender at [HL] now
	nei A, 0xFF
	?ret
	ldax [HL]+
	nei A, 0xFF
	?ret
	ldax [HL]+
	nei A, 0xFF
	?ret
	ldax [HL]+
	nei A, 0xFF
	?ret

	ldax [HL]+     ! now after addresses, length at C, \4 not included

	nei A, 'M'
	?jmp msg_key_make
	nei A, 'R'
	?jmp msg_key_repeat
	nei A, 'B'		! OH3NWQ 28.05.00 13:24
	?jmp msg_key_break 	! OH3NWQ 28.05.00 13:24
	
	ret ! hmph. dunno what it is.

!----------------------------------------------------------------------
! HL points to message data after command designator character.
! Length of data in C
! e.g. HL->"foobar", C=6

msg_key_make: 	!  XXX process N keys, not just one
	ldax [HL]+
	mvi B, 0
	jmp got_key

msg_key_repeat: !  XXX process N keys, not just one
	ldax [HL]+
	mvi B, 1
	jmp got_key

msg_key_break: 	! OH3NWQ 28.05.00 13:25
	ret	! one day this might enable a real PTT instead of toggle
	
!----------------------------------------------------------------------

.align 4

handset_init:
!	call mbus_constmsg; .ascii HS_ID, MBUSID, "f", VERSION_2; .byte 0
!	call mbus_constmsg; .ascii HS_ID, MBUSID, "d", VERSION_0, VERSION_1; .byte 0
!	call mbus_constmsg; .ascii HS_ID, MBUSID, "s", VERSION_3; .byte 0

	call mbus_constmsg; .ascii HS_ID, MBUSID, "f", VERSION_2
	.byte 0
	call mbus_constmsg; .ascii HS_ID, MBUSID, "d", VERSION_0
	.byte 0
	call mbus_constmsg; .ascii HS_ID, MBUSID, "s", VERSION_3
	.byte 0

	ret

!    0 "HSN2" "...." "v" "." \4         e.g. volume setting 0..9
!    0 "HSN2" "...." "l" "sT" \4        e.g. markers SERV=off, ROAM=on

mbus_sendvol:
	call prep_tx_msg

	mvi A, 'v'
	stax [DE]+

	mov A, [volume]
	gti A, 9
	?jr 1f
	mvi A, '1'
	stax [DE]+

	mov A, [volume]
	sui A, 10
1:
	adi A, '0'
	stax [DE]+

	jmp append_tail

mbus_sendsig:
	call prep_tx_msg

	mvi A, 's'
	stax [DE]+

	mov A, [sig_peak]
	lxi EA, 0
	mov EAL, A
	mvi B, 10
	div B

	mov A, EAL
	adi A, '0'
	nei A, '0'
	?mvi A, ' '
	stax [DE]+

	mov A, B
	adi A, '0'
	stax [DE]+

	mvi A, 's'             ! just a signal report
	eqiw LO(sq_forced), 0
	?mvi A, 'f'            ! one during forcibly opened squelch
	eqiw LO(sqopen), 0
	?mvi A, 'S'            ! wow, the squelch would be open
	eqiw LO(tx_on), 0
	?mvi A, 'T'            ! last, but not the least, we are transmitting
	stax [DE]+

	mviw LO(sq_changed), OFF

	jmp append_tail

mbus_update_lights:
	call prep_tx_msg

	mvi A, 'l'
	stax [DE]+

	mvi A, 'F'
	oniw LO(kbd_flags), SHIFT
	?mvi A, 'f'
	stax [DE]+

	mvi A, 'A'
	oniw LO(kbd_flags), ALPHA
	?mvi A, 'a'
	stax [DE]+

	mvi A, 'K'
	oniw LO(kbd_flags), KEYLOCK
	?mvi A, 'k'
	stax [DE]+

	!mvi A, 'D'
	!oniw LO(kbd_flags), T_MARKER
	!?mvi A, 'd'
	!stax [DE]+

	!mvi A, 'L'
	!oniw LO(kbd_flags), LEFT
	!?mvi A, 'l'
	!stax [DE]+

	!mvi A, 'R'
	!oniw LO(kbd_flags), RIGHT
	!?mvi A, 'r'
	!stax [DE]+

	!mvi A, 'N'
	!oniw LO(kbd_flags), MINUS
	!?mvi A, 'n'
	!stax [DE]+

	mvi A, 'd'
	eqiw LO(ctcss_active), 0
	?mvi A, 'D'
	stax [DE]+

	mvi A, 'h'
	eqiw LO(scan_state), 0
	?mvi A, 'H'
	stax [DE]+

	jmp append_tail

mbus_handset_blank:
	call prep_tx_msg

	mvi A, 'l' ! lightshow
	stax [DE]+

	mvi A, 'b' ! no backlight
	stax [DE]+
	mvi A, 'o' ! no ON
	stax [DE]+
	mvi A, 's' ! no SERV
	stax [DE]+

	jmp append_tail

mbus_send_tones:
	call prep_tx_msg
	mvi A, 'b'
	jmp mbus_send_stuff

mbus_send_upper:
	call prep_tx_msg
	mvi A, 'd'
	jmp mbus_send_stuff

mbus_send_lower:
	call prep_tx_msg
	mvi A, 'f'
	jmp mbus_send_stuff

prep_tx_msg:
	lxi DE, mbus_txmsg
	mvi A, 'H'
	stax [DE]+
	mvi A, 'S'
	stax [DE]+
	mvi A, 'N'
	stax [DE]+
	mvi A, '2'
	stax [DE]+
	mvi A, 'T'
	stax [DE]+
	mvi A, 'M'
	stax [DE]+
	mvi A, 'F'
	stax [DE]+
	mvi A, '1'
	stax [DE]+
	ret

mbus_send_stuff:
	stax [DE]+
	jmp append_data

1:
	ldax [HL]+
	stax [DE]+
append_data:
	dcr C
	?jr 1b       ! loop or FALLTHRU

append_tail:
	mvi A, 4
	stax [DE]+
	mvi A, 0
	stax [DE]+

	jmp mbus_send


!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  Configuration menu
!
!  - MENU enters/leaves menu (into last selected level and index)
!  - NEXT/PREV steps menu at the current level
!  - OK descends into current submenu from mainmenu level or 
!       ascends back to mainmenu level

menu_init:
	lxi HL, menu_main
	shld [menu_ptr]
	shld [menu_topptr]
	ret

menu_timeout:
	mvi A, OFF
	mov A, [menu_active]
	ret

do_menu:
	neiw LO(kbd_index), 0
	?jr 1f
	mvi A, 1                       ! entering menu with shortcut number
	mov [menu_active], A
	call menu_shortcut
	jmp redraw
1:
	mov A, [menu_active]
	xri A, 1
	mov [menu_active], A           ! flip master in/out of menu switch.
	nei A, 0
	?jr 1f
	call menu_enter                ! entering last location
	jmp redraw
1:
	offiw LO(kbd_flags), SHIFT     ! leaving.
	?call fcn_off                  ! clear FCN 
	jmp redraw

! shortcut to numbered top record

menu_shortcut:
	call get_the_number
	mvi B, 16
	mul B                  ! offset (3 * 16) to EA
	lxi DE, menu_main
	lxi HL, end_menu_main - 16
	dadd EA, DE

	dlt EA, HL
	?dmov EA, HL
	dgt EA, DE
	?dmov EA, DE

	dmov HL, EA
	shld [menu_topptr]
	shld [menu_ptr]
	call menu_enter
	ret

! Process each keystroke maybe specially in submenu level
! Input character(s) are already in buffer
! We will do the lower row painting

menu_input:

	lhld [menu_ptr]
	ldax [HL+offset_type] ! type
	nei A, CFG_TAB
	?jmp menu_input_tab
	nei A, CFG_DIGIT
	?jmp menu_input_digit

	jmp draw_kbd_buffer            ! else dont care until #

menu_input_digit:
menu_input_tab:
	mov A, [kbd_index]
	gti A, 1              ! Another char, but only one allowed. overwrite 1st.
	?jr 1f
	mov A, [kbd_buffer + 1]
	mov [kbd_buffer], A
	mvi A, 1
	mov [kbd_index], A
1:
	jmp draw_menu_lower

menu_rcl_sto:                 ! XXX fetch default for current only
	ret

menu_next_prev:
	call repeat_count
1:
	push BC
	call 1f
	pop BC
	dcr C
	?jr 1b
	call menu_enter
	jmp redraw
1:
	lxi EA, 16
	offiw LO(kbd_flags), SHIFT
	?lxi EA, -16         ! Next +1, Prev -1

	lhld [menu_ptr]
	ldax [HL+offset_type] ! are we stepping at top or sublevel
	dadd EA, HL           ! nudge new ptr into EA

	eqi A, CFG_NOTYPE     ! we are at toplevel.
	?jr 1f

	! walk top level

	lxi HL, end_menu_main
	dlt EA, HL                  ! new did not overrun
	?lxi EA, menu_main          ! ?Not. rewind to first
	lxi HL, menu_main - 1
	dgt EA, HL                  ! did not underrun
	?lxi EA, end_menu_main - 16 ! ?Not. flip to last
	dmov HL, EA
	shld [menu_topptr]
	shld [menu_ptr]
	ret
1:
	! walk at sublevel

	push EA
	lhld [menu_topptr]          ! rangecheck from toplevel
	ldeax [HL+offset_ptr]       ! first record
	dmov BC, EA           
	ldeax [HL+offset_arg]       ! last record
	dmov DE, EA           
	pop EA
	dlt EA, BC           ! below first
	?jr 1f
	dmov EA, DE          ! point to last
1:
	dgt EA, DE           ! above last
	?jr 1f
	dmov EA, BC          ! point to last
1:
	dmov HL, EA
	shld [menu_ptr]
	ret

menu_ok:

	lhld [menu_ptr]
	ldax [HL+offset_type]
	nei A, CFG_NOTYPE
	?jr 1f

	! OK on sublevel

	eqiw LO(kbd_index), 0
	?jmp do_enter_really    ! 123 OK translates to 123 #

	lhld [menu_topptr]      ! else ascend to toplevel
	shld [menu_ptr]
	call menu_enter
	jmp redraw
1:
	! OK on toplevel, descend

	eqiw LO(kbd_index), 0
	?jmp 1f

	ldeax [HL+offset_ptr]   ! 1st subrecord
	dmov HL, EA
	shld [menu_ptr]
	call menu_enter
	jmp redraw

1:
	!  descend to a numbered record

	call get_the_number     ! e.g. 3 OK

	lhld [menu_ptr]
	ldeax [HL+offset_arg]   ! last subrecord
	dmov DE, EA
	ldeax [HL+offset_ptr]   ! 1st subrecord
	dmov HL, EA

	mvi B, 16
	mul B         ! offset (3 * 16) to EA
	dadd EA, HL

	dlt EA, DE
	?dmov EA, DE        ! not < last
	dgt EA, HL
	?dmov EA, HL        ! not > 1st

	dmov HL, EA
	shld [menu_ptr]
	call menu_enter
	jmp redraw

menu_input_pin:

	mov B, [cfg_pin_length]
	nei B, 0
	?rets
	
	mov B, [cfg_pin_length]
	nei B, 1
	?rets
	
	mvi A, ON
	mov [pin_query_active], A

	mvi A, 0
	mov [kbd_index], A
	
	call draw_menu_pin
1:					!
	call mbus_process		!
					!
	mov A, [kbd_index]		!
	mov B, [kbd_index_old]		! button pressed
	nea A, B			!
	?jmp 2f				!
					!
	mov [kbd_index_old], A		!
					!
	mov A, [kbd_index]		!
	nei A, 0			!
	?call show_0_star		!
					!
	mov A, [kbd_index]		!
	nei A, 1 			!
	?call show_1_star		!
					!
	mov A, [kbd_index]		!
	nei A, 2 			!
	?call show_2_star		!
					!
	mov A, [kbd_index]		!
	nei A, 3 			!
	?call show_3_star		!
					!! loop here 
	mov A, [kbd_index]		!
	nei A, 4 			!
	?call show_4_star		!
					!
	mov A, [kbd_index]		!
	nei A, 5 			!
	?call show_5_star		!
					!
	mov A, [kbd_index]		!
	nei A, 6 			!
	?call show_6_star		!
					!
	mov A, [kbd_index]		!
	nei A, 7 			!
	?call show_7_star		!
2:					!! loop here 
	mov B, [cfg_pin_length]		! until enough
	sui B, 1			! (subtract 1)
	mov A, [kbd_index]		! characters 
	gta A, B			! given      
	?jmp 1b				! yeah dumb - and with echo

	mov B, [cfg_pin_code + 0] 		
	mov A, [kbd_buffer + 0]
	eqa A, B
	?jmp 2f
	
	mov B, [cfg_pin_length]
	nei B, 1
	?jmp 1f
	
	mov B, [cfg_pin_code + 1]
	mov A, [kbd_buffer + 1]
	eqa A, B
	?jmp 2f

	mov B, [cfg_pin_length]
	nei B, 2
	?jmp 1f
	
	mov B, [cfg_pin_code + 2]
	mov A, [kbd_buffer + 2]
	eqa A, B
	?jmp 2f
	
	mov B, [cfg_pin_length]
	nei B, 3
	?jmp 1f
	
	mov B, [cfg_pin_code + 3]
	mov A, [kbd_buffer + 3]
	eqa A, B
	?jmp 2f

	mov B, [cfg_pin_length]
	nei B, 4
	?jmp 1f
	
	mov B, [cfg_pin_code + 4] 
	mov A, [kbd_buffer + 4]
	eqa A, B
	?jmp 2f
	
	mov B, [cfg_pin_length]
	nei B, 5
	?jmp 1f
	
	mov B, [cfg_pin_code + 5]
	mov A, [kbd_buffer + 5]
	eqa A, B
	?jmp 2f

	mov B, [cfg_pin_length]
	nei B, 6
	?jmp 1f
	
	mov B, [cfg_pin_code + 6]
	mov A, [kbd_buffer + 6]
	eqa A, B
	?jmp 2f
	
	mov B, [cfg_pin_length]
	nei B, 7 
	?jmp 1f
	
	mov B, [cfg_pin_code + 7]
	mov A, [kbd_buffer + 7]
	eqa A, B
	?jmp 2f

1:
	mvi A, OFF			! we're on the right track
	mov [pin_query_active], A

	mvi A, 0
	mov [kbd_index], A

	lxi HL, 1f			! clear display
	mvi C, 8
	call mbus_send_lower
	rets    		
1:
	.asciz "        "			   

2:
	mvi A, 0
	mov [kbd_index], A		! Zero tampon du clavier
	
	lxi HL, 3f			! WRONG ANSWER			
	mvi C, 8
	call mbus_send_lower
	ret
3:
	.asciz " * 99 * "			   

show_0_star: 
	lxi HL, 1f			
	mvi C, 8
	call mbus_send_lower
	ret
1:
	.asciz "  FUBAR "			   
	
show_1_star: 
	lxi HL, 1f			
	mvi C, 8
	call mbus_send_lower
	ret
1:
	.asciz "       *"			   
	
show_2_star: 
	lxi HL, 1f			
	mvi C, 8
	call mbus_send_lower
	ret
1:
	.asciz "      **"			   
	
show_3_star: 
	lxi HL, 1f			
	mvi C, 8
	call mbus_send_lower
	ret
1:
	.asciz "     ***"			   
	
show_4_star: 
	lxi HL, 1f			
	mvi C, 8
	call mbus_send_lower
	ret
1:
	.asciz "    ****"			   

show_5_star: 
	lxi HL, 1f			
	mvi C, 8
	call mbus_send_lower
	ret
1:
	.asciz "   *****"			   
	
show_6_star: 
	lxi HL, 1f			
	mvi C, 8
	call mbus_send_lower
	ret
1:
	.asciz "  ******"			   
	
show_7_star: 
	lxi HL, 1f			
	mvi C, 8
	call mbus_send_lower
	ret
1:
	.asciz " *******"			   
	

!
!  Entered into new record
!
menu_enter:
	ret

!  Accept current keyboard input buffer as the new value for current
!  configuration record.
!  Adjust to fit in min/max values.

menu_accept:

	mov C, [kbd_index]
	nei C, 0
	?ret

	mviw LO(kbd_index), 0

	lhld [menu_ptr]
	ldax [HL+offset_type]

	mov B, A		! OH3NWQ 21.07.00 17:05 
	ani B, CFG_CONSTANT	! OH3NWQ 21.07.00 17:05 
	nei B, CFG_CONSTANT	! OH3NWQ 21.07.00 17:05 
	? ret			! OH3NWQ 21.07.00 17:05 

	ani A, 0x7f
	
	! HL has record pointer
	! A has 7 lsb of input type
	! C has length of input

	nei A, CFG_NOTYPE
	?ret
	
	nei A, CFG_DYN
	?ret

	nei A, CFG_DYN_I
	?ret

	nei A, CFG_DYN_V
	?ret

	nei A, CFG_EXEC      ! XXX no functionality yet
	?ret

	nei A, CFG_RST
	?jmp menu_accept_666_reset

	nei A, CFG_TAB
	?jmp menu_accept_tab

	nei A, CFG_FOFF
	?jmp menu_accept_f
	nei A, CFG_FREQ
	?jmp menu_accept_f
	nei A, CFG_FREQ_CONST
	?ret	
	nei A, CFG_BYTE
	?jmp menu_accept_byte
	nei A, CFG_CTCSS
	?jmp menu_accept_ctcss
	nei A, CFG_PERCENT
	?jmp menu_accept_percent
	nei A, CFG_WORD
	?jmp menu_accept_word
	nei A, CFG_DIGIT
	?jmp menu_accept_digit
	nei A, CFG_MSEC
	?jmp menu_accept_msec
	nei A, CFG_SEC
	?jmp menu_accept_sec
	nei A, CFG_MINUTE
	?jmp menu_accept_minute
	nei A, CFG_STRING
	?jmp menu_accept_string
	nei A, CFG_PIN
	?jmp menu_accept_pin
	nei A, CFG_VOLT
	?jmp menu_accept_volt
	nei A, CFG_BYTE_UPDATE
	?jmp menu_accept_byte_update

	jmp canada



menu_accept_666_reset:
	eqi C, 3
	?ret
	mov A, [kbd_buffer + 0]
	eqi A, '6'
	?ret
	mov A, [kbd_buffer + 1]
	eqi A, '6'
	?ret
	mov A, [kbd_buffer + 2]
	eqi A, '6'
	?ret

	ldeax [HL+offset_arg]
	push EA
	ret                       ! you asked for it.

menu_accept_tab:
	mov A, [kbd_buffer + 0]
	sui A, '1'
	ldeax [HL+offset_ptr]
	dmov DE, EA
	stax [DE]                 ! XXX rangecheck

	call update_LFU_come  	  ! sigh. XXX

	ret

menu_accept_digit:
	mov A, [kbd_buffer + 0]
	sui A, '0'
	ldeax [HL+offset_ptr]
	dmov DE, EA
	stax [DE]               ! XXX rangecheck

	call update_LFU_vol 	! XXX silly

	ret

menu_accept_string:
	ldax [HL+offset_arg]  ! destination length A
	ldeax [HL+offset_ptr]
	dmov DE, EA            ! destination DE
	lxi HL, kbd_buffer   ! source HL, length C
	lta C, A
	?mov C, A           ! cut excess
	sub A, C           ! needed padding
	mov B, A
	jr 2f
1:
	ldax [HL]+
	stax [DE]+ ! bcopy
2:
	dcr C
	?jr 1b
	jr 2f
1:
	mvi A, 0
	stax [DE]+  ! pad with \0
2:
	dcr B
	?jr 1b
	ret

menu_accept_pin:
	ldax [HL+offset_arg]  	! destination length A
	ldeax [HL+offset_ptr]
	dmov DE, EA            	! destination DE
	lxi HL, kbd_buffer   	! source HL, length C
	
	mov [cfg_pin_length], C ! OH3NWQ 06.06.00 23:11
	
	lta C, A
	?mov C, A           	! cut excess
	sub A, C           	! needed padding
	mov B, A
	jr 2f
1:
	ldax [HL]+
	stax [DE]+ 	! bcopy
2:
	dcr C
	?jr 1b
	jr 2f
1:
	mvi A, 0
	stax [DE]+  	! pad with \0
2:
	dcr B
	?jr 1b
	ret

menu_accept_f:
	ldeax [HL+offset_ptr]
	push EA              	! destination of freq
	lxi HL, kbd_buffer    	! length C
	call buf2i             	! HL[C] into BEA
	pop DE
	steax [DE]
	mov A, B
	stax [DE+2]
	ret

menu_accept_volt:
menu_accept_byte:
menu_accept_sec:
menu_accept_minute:
	ldeax [HL+offset_ptr]
	push EA                ! destination of byte
	lxi HL, kbd_buffer     ! length in C
	call buf2i
	dmov HL, EA
	mov A, EAL             ! accept values 0...255
	eqi H, 0
	?mvi A, 255            ! Middle byte nonz, clamp
	eqi B, 0
	?mvi A, 255            ! MSByte nonz, clamp
	pop DE
	stax [DE]
	ret

menu_accept_byte_update:
	ldeax [HL+offset_ptr]
	push EA                ! destination of byte
	lxi HL, kbd_buffer     ! length in C
	call buf2i
	dmov HL, EA
	mov A, EAL             ! accept values 0...255
	eqi H, 0
	?mvi A, 255            ! Middle byte nonz, clamp
	eqi B, 0
	?mvi A, 255            ! MSByte nonz, clamp
	pop DE
	stax [DE]
	call DAC_update
	ret

menu_accept_ctcss:
	ldeax [HL+offset_ptr]
	push EA                ! destination of byte
	lxi HL, kbd_buffer     ! length in C
	call buf2i
	dmov HL, EA
	mov A, EAL             ! accept values 0...255
	eqi H, 0
	?mvi A, 255            ! Middle byte nonz, clamp
	eqi B, 0
	?mvi A, 255            ! MSByte nonz, clamp
	
	mvi B, 14
	gta A, B
	?mvi A, 0		! 0..14 = 0  (minimum counter divider = 15)
	
	pop DE
	stax [DE]

	call ctcss_init
	call update_tone_marker
	ret

menu_accept_percent:
	ldeax [HL+offset_ptr]
	push EA            ! destination of word
	lxi HL, kbd_buffer ! length C
	call buf2i
	eqi B, 0
	?lxi EA, 100       ! MSByte nonz, clamp into 100
	mov A, EAH
	eqi A, 0
	?lxi EA, 100       ! Middle nonz, ditto
	mov A, EAL
	lti A, 100
	?mvi A, 100        ! finally here.
	pop DE
	stax [DE]

	call DAC_update 	! XXX silly
	ret

menu_accept_word:
menu_accept_msec:
	ldeax [HL+offset_ptr]
	push EA            ! destination of word
	lxi HL, kbd_buffer ! length C
	call buf2i
	eqi B, 0
	?lxi EA, 65535     ! MSByte nonz, clamp
	pop DE
	steax [DE]
	ret

draw_menu:
	mvi A, 30		! OH3NWQ 26.06.00
	mov [timer_menu], A	! OH3NWQ 15.05.00 15:41   
	
	lhld [menu_ptr]
	lxi EA, offset_title
	dadd EA, HL
	dmov HL, EA         ! title
	mvi C, 8            ! length

	call mbus_send_upper

draw_menu_lower:
	lhld [menu_ptr]
	ldax [HL+offset_type]

	ani A, 0x7f

	nei A, CFG_NOTYPE
	?jmp draw_kbd_buffer  ! not in submenu, just show any input

	nei A, CFG_RST
	?jmp draw_menu_resets
	
	nei A, CFG_DYN
	?jmp draw_menu_dyn
	nei A, CFG_DYN_I
	?jmp draw_menu_dyn	!was dyn_i
	nei A, CFG_DYN_V
	?jmp draw_menu_dyn_v
	
	nei A, CFG_TAB
	?jmp draw_menu_tab

	mov B, [kbd_index]
	eqi B, 0
	?jmp draw_kbd_buffer  ! kbd input accepted for below types

	nei A, CFG_EXEC       ! XXX no functionality yet
	?jmp draw_menu_execs

	nei A, CFG_FOFF
	?jmp draw_menu_foff
	nei A, CFG_FREQ
	?jmp draw_menu_freq
	nei A, CFG_FREQ_CONST
	?jmp draw_menu_freq
	nei A, CFG_BYTE
	?jmp draw_menu_byte
	nei A, CFG_CTCSS
	?jmp draw_menu_byte
	nei A, CFG_BYTE_UPDATE
	?jmp draw_menu_byte
	nei A, CFG_PERCENT
	?jmp draw_menu_percent
	nei A, CFG_WORD
	?jmp draw_menu_word
	nei A, CFG_DIGIT
	?jmp draw_menu_digit
	nei A, CFG_MSEC
	?jmp draw_menu_msec
	nei A, CFG_SEC
	?jmp draw_menu_sec
	nei A, CFG_MINUTE
	?jmp draw_menu_minute
	nei A, CFG_STRING
	?jmp draw_menu_string
	nei A, CFG_PIN
	?jmp draw_menu_string
	nei A, CFG_VOLT
	?jmp draw_menu_volt

	jmp canada

draw_menu_execs:
	lxi HL, 1f
	mvi C, 8
	jmp mbus_send_lower
1:
	.asciz "       ?"

draw_menu_string:
	ldax [HL+offset_arg]  ! max length
	mov C, A
	ldeax [HL+offset_ptr]
	dmov HL, EA
	mvi B, 0    ! check nonzero length
1:
	ldax [HL+B]
	nei A, 0    ! not \0.
	?jr 1f
	adi B, 1
	mov A, C
	eqa B, A    ! last.
	?jr 1b
1:
	mov A, B
	mov C, A
	jmp mbus_send_lower

draw_menu_freq:
draw_menu_foff:
	ldeax [HL+offset_ptr]
	dmov HL, EA
	ldeax [HL]
	ldax [HL+2]
	mov B, A
	lxi HL, prt_buffer
	call i2buf
	lxi HL, prt_buffer
	mvi C, 8
	jmp mbus_send_lower

draw_menu_byte:
draw_menu_digit:
	ldeax [HL+offset_ptr]
	dmov HL, EA
	ldeax [HL]
	mvi A, 0
	mov EAH, A
	call format_EA
	lxi HL, prt_buffer + 2
	mvi C, 3
	jmp mbus_send_lower

draw_menu_word:
	ldeax [HL+offset_ptr]
	dmov HL, EA
	ldeax [HL]
	call format_EA
	lxi HL, prt_buffer
	mvi C, 5
	jmp mbus_send_lower

draw_menu_msec:
	ldeax [HL+offset_ptr]
	dmov HL, EA
	ldeax [HL]
	call format_EA
	lxi HL, prt_buffer + 5 ! "65535 ms"
	mvi A, ' '
	stax [HL]+
	mvi A, 'm'
	stax [HL]+
	mvi A, 's'
	stax [HL]+
	lxi HL, prt_buffer
	mvi C, 8
	jmp mbus_send_lower

draw_menu_percent:
	ldeax [HL+offset_ptr]
	dmov HL, EA
	ldax [HL]
	lti A, 100
	?mvi A, 100
	lxi EA, 0
	mov EAL, A
	call format_EA
	lxi HL, prt_buffer + 5 ! "  255 %"
	mvi A, ' '
	stax [HL]+
	mvi A, '%'
	stax [HL]+
	lxi HL, prt_buffer + 2
	mvi C, 5
	jmp mbus_send_lower

draw_menu_dyn_i:
draw_menu_dyn_v:
draw_menu_volt:
	ldeax [HL+offset_ptr]
	dmov HL, EA
	ldax [HL]
	lxi EA, 0
	mov EAL, A
	call format_EA
	lxi HL, prt_buffer+4	! LSdigit
	ldax [HL]
	stax [HL+1]		! one to the right
	mvi A, '.'
	stax [HL]		! decimal point
	mvi A, 'V'
	stax [HL+2]
	lxi HL, prt_buffer + 2
	mvi C, 5
	jmp mbus_send_lower

draw_menu_minute:
	ldeax [HL+offset_ptr]
	dmov HL, EA
	ldeax [HL]
	mvi A, 0
	mov EAH, A
	call format_EA
	lxi HL, prt_buffer + 5 ! "  255 min"
	mvi A, ' '
	stax [HL]+
	mvi A, 'm'
	stax [HL]+
	mvi A, 'i'
	stax [HL]+
	mvi A, 'n'
	stax [HL]+
	lxi HL, prt_buffer + 2
	mvi C, 7
	jmp mbus_send_lower

draw_menu_sec:
	ldeax [HL+offset_ptr]
	dmov HL, EA
	ldeax [HL]
	mvi A, 0
	mov EAH, A
	call format_EA
	lxi HL, prt_buffer + 5 ! "  255 sec"
	mvi A, ' '
	stax [HL]+
	mvi A, 's'
	stax [HL]+
	mvi A, 'e'
	stax [HL]+
	mvi A, 'c'
	stax [HL]+
	lxi HL, prt_buffer + 2
	mvi C, 7
	jmp mbus_send_lower

draw_menu_resets:
	lxi HL, 1f
	mvi C, 8
	jmp mbus_send_lower
1:
	.asciz "    666?"

draw_menu_pin:
	lxi HL, 1f
	mvi C, 8
	jmp mbus_send_lower
1:
	.asciz "    PIN?"

draw_menu_dyn:
	lxi EA, hack_for_center 	! yucko
	dne EA, HL
	?jmp draw_center_display
	
	lxi EA, hack_for_current	! doubleyucko
	dne EA, HL
	?jmp draw_current_display

	lxi EA, hack_for_voltage	! tripleyucko
	dne EA, HL
	?jmp draw_voltage_display

	lxi EA, 1f
	push EA               ! return 3 lines below
	ldeax [HL+offset_arg]
	push EA               ! stub routine address
	lxi EA, 0             ! prepare default for EAH in case byte value
	ret                   ! jump, result back in EA
1:
	call format_EA
	lxi HL, prt_buffer
	mvi C, 5
	jmp mbus_send_lower

draw_menu_tab:
	ldeax [HL+offset_ptr]  ! pointer to real value
	dmov DE, EA
	mov A, [kbd_buffer]
	sui A, '1'             ! tentative new value '1'...'9' for 0...8
	neiw LO(kbd_index), 0
	?ldax [DE]             ! no pending value, use real one
	mov B, A
	ldeax [HL+offset_arg]  ! get selection list
	dmov HL, EA            ! remember first
	jr 2f
1:
	mvi A, 8              ! length of one string
	eadd EA, A            ! next one please
	dmov DE, EA
	ldax [DE]
	nei A, 0
	?jr 3f             ! no such string, use first one
2:
	dcr B
	?jr 1b
	dmov HL, EA        ! Select this string
3:

	lxi DE, prt_buffer
	mvi C, 0
1:
	ldax [HL]+
	nei A, 0
	?jr 1f
	stax [DE]+
	adi C, 1
	jr 1b
1:
	lxi HL, prt_buffer

	mov B, [kbd_index]
	nei B, 0           ! We are editing.
	?jr 2f             ! ?Not. jump over, "    MIC" displayed"

	! Yes, editing. append blanks to get the value to the left.
1:
	lti C, 8
	?jr 2f
	mvi A, ' '
	stax [DE]+
	adi C, 1
	jr 1b
2:
	jmp mbus_send_lower

#include "afc.asm"
! XXX scale the reading into Hz - one tick is 14.3 Hz 

draw_center_display:
	lxi HL, afc_count
	ldeax [HL]
	mvi B, '+'            	! OH3NWQ corrected the sign  (we are counting down)
	lxi HL, AFC_CNT0 / 2  	! minus/plus infinity for us
	dgt EA, HL            	! count negative, input more than 455kHz
	?jr 1f                	! count positive, input less than 455kHz
	mvi B, '-'		! OH3NWQ corrected the sign 
	dmov HL, EA
	lxi EA, AFC_CNT0
	dsub EA, HL
1:
	lxi HL, 1000          ! shuffle the sleeves		
	dlt EA, HL            ! reading is in valid range	
	?jmp 2f		
		! EA = 0...1000 B='+' or '-'

	dmov HL, EA
	lxi EA, afc_table
	dadd EA, HL
	dadd EA, HL
	dmov HL, EA
	ldeax [HL]
	
	call format_EA          ! Better keep B
	mov [prt_buffer + 5], B ! append sign
	mvi C, 6
	lxi HL, prt_buffer
	jmp mbus_send_lower
2:
	mvi C, 4
	lxi HL, 1f
	jmp mbus_send_lower
1:
	.ascii "??? "

draw_current_display:
	lxi EA, 1f
	push EA               
	ldeax [HL+offset_arg]
	push EA               
	lxi EA, 0             
	ret                   
1:
	mov A, EAL
	mvi B, '+'
	lti A, 0x80	
	?mvi B, '-'
	ani A, 0x7f
	lxi EA, 0             ! prepare default for EAH in case byte value
	mov EAL, A
	call format_EA

	lxi HL, prt_buffer + 5 		!"  100%-"
	mvi A, '%'
	stax [HL]+
	mov A, B			! B has ´+´ or ´-´
	stax [HL]+
	
	lxi HL, prt_buffer + 2
	mvi C, 5
	jmp mbus_send_lower

draw_voltage_display:
	lxi EA, 1f
	push EA               
	ldeax [HL+offset_arg]
	push EA               
	lxi EA, 0             
	ret                   
1:
	call format_EA
	
	mov A, [prt_buffer + 1]
	mov [prt_buffer + 0], A

	mov A, [prt_buffer + 2]
	mov [prt_buffer + 1], A

	mov A, [prt_buffer + 3]
	mov [prt_buffer + 2], A

	!mov A, [prt_buffer + 4]
	!mov [prt_buffer + 3], A

	mvi A, '.'
	mov [prt_buffer + 3], A

	lxi HL, prt_buffer + 5 		! " 12.4 V"
	mvi A, ' '	
	stax [HL]+
	mvi A, 'V'
	stax [HL]+
	
	lxi HL, prt_buffer + 1
	mvi C, 6
	jmp mbus_send_lower

!----------------------------------------------------------------------

read_FSKL:
	mov A, [ad_FSKL]
	mov EAL, A
	ret
read_BCR:
	mov A, [ad_BCR]
	xri A, 0xFF			! OH3NWQ
	mov EAL, A
	ret
read_BCR_p:
	mov A, [ad_BCR]
	call map_byte_to_current	! OH3NWQ 21.07.00			
	mov EAL, A
	ret
read_BTMP:
	mov A, [ad_BTMP]
	xri A, 0xFF			! OH3NWQ  pöh käännä se excel taulukko...
	call map_byte_to_temperature	! OH3NWQ 
	mov EAL, A
	ret
read_RSSI:
	mov A, [ad_RSSI]
	mov EAL, A
	ret
read_PFB:
	mov A, [ad_PFB]
	mov EAL, A
	ret
read_BATT:
	mov A, [ad_BATT]
	call map_byte_to_voltage	! OH3NWQ
	mov EAL, A
	ret
read_TEMP:
	mov A, [ad_TEMP]
	xri A, 0xFF			! OH3NWQ 
	call map_byte_to_temperature	! OH3NWQ 
	mov EAL, A
	ret
read_LOCK:
	mov A, [ad_LOCK]
	mov EAL, A
	ret
read_afc:
	lxi HL, afc_count
	ldeax [HL]
	ret

read_CTCSS:
	mov A, [ctcss_tone]
	mov EAL, A
	ret

read_masd:
	mov A, [MODEM_DATA]
	mov EAL, A
	ret

read_mass:
	mov A, [MODEM_CSR]
	mov EAL, A
	ret

read_charger_state:
	mov A, [charger_state]		! OH3NWQ
	mov EAL, A
	ret

read_charger_suspend:
	mov A, [charger_suspend]	! OH3NWQ
	mov EAL, A
	ret

read_light_timer:
	mov A, [timer_light]	! OH3NWQ 19.06.00
	mov EAL, A
	ret

read_menu_timer:
	mov A, [timer_menu]	! OH3NWQ 19.06.00
	mov EAL, A
	ret

!----------------------------------------------------------------------
! CHECK for PIN code
! OH3NWQ 22.05.00 20:53
check_pin:
	mov A, [cfg_pin_type]		! OH3NWQ 22.05.00 20:54
	nei A, ON			! OH3NWQ 22.05.00 20:54
	?jmp 1f				! OH3NWQ 19.06.00
	ret				! OH3NWQ 22.05.00 20:54
1:	
	call menu_input_pin		! uses rets if OK
	jmp begin			! skip this if OK otherwise 99
	ret				! PIN OK - return

!----------------------------------------------------------------------
! CHECK for sanity
! OH3NWQ 14.05.00 21:49

check_sanity:

	mov A, [sanity_memories]	! OH3NWQ 25.06.00 18:31
	eqi A, 0x42			! OH3NWQ 25.06.00 18:31
	?call cfg_rst_mems		! OH3NWQ memories not sane - so sanitize
	
	mov A, [sanity_parameters]	! OH3NWQ 14.05.00 21:51
	eqi A, TESTCHAR			! OH3NWQ 14.05.00 21:51
	?jmp cfg_rst_some

	mov A, [sanity_band]		! OH3NWQ 23.06.00
	eqi A, BAND			! OH3NWQ 23.06.00
	?jmp cfg_rst_some

	ret				! OH3NWQ 23.06.00

!----------------------------------------------------------------------
! copy defaults from menu

cfg_rst_some:
	lxi HL, menu_main
1:
	push HL
	call 1f               	   ! reset this submenu
	pop HL
	lxi EA, 16
	dadd EA, HL
	dmov HL, EA
	lxi EA, end_menu_main
	deq EA, HL
	?jmp 1b

	mvi A, TESTCHAR			! OH3NWQ
	mov [sanity_parameters], A		

	mvi A, BAND 			! OH3NWQ 23.06.00
	mov [sanity_band], A		! OH3NWQ 23.06.00

	mvi A, 0			! OH3NWQ 12.07.00 11:59 
	mov [scan_state], A		! OH3NWQ 12.07.00 11:59 

	mvi A, SC_1+SC_2		! OH3NWQ 13.07.00
	mov [scan_mode], A		! OH3NWQ 12.07.00 11:59 

	mvi A, 2			! OH3NWQ 23.06.00
	mov [volume], A			! OH3NWQ 23.06.00
	
	mvi A, 0			! OH3NWQ
	mov [cfg_pin_length], A		
	
	call recall_my_favorites	! OH3NWQ 25.06.00
	
	call babble; .ascii "Settingsinsane  "
	mvi A, 60	
	call pause
	jmp begin                       ! reboot

1:
	ldeax [HL+offset_arg]
	dmov BC, EA                ! last record ptr
	ldeax [HL+offset_ptr]
	dmov HL, EA                ! first
1:
	call 1f             	   ! reset this record
	dmov EA, BC
	dne EA, HL
	?ret                	   ! did last.
	lxi EA, 16
	dadd EA, HL
	dmov HL, EA
	jr 1b
1:
	ldeax [HL+offset_ptr]   ! address of variable
	dmov DE, EA
	lxi EA, 0
	dne EA, DE
	?ret                    ! has no address
	
	ldax [HL+offset_type]
	ani A, 0x7f
	
	nei A, CFG_FREQ
	?jmp cfg_rst_freq
	nei A, CFG_FREQ_CONST
	?jmp cfg_rst_freq
	nei A, CFG_FOFF
	?jmp cfg_rst_foff
	nei A, CFG_TAB
	?jmp cfg_rst_byte
	nei A, CFG_DIGIT
	?jmp cfg_rst_byte
	nei A, CFG_BYTE
	?jmp cfg_rst_byte
	nei A, CFG_CTCSS
	?jmp cfg_rst_byte
	nei A, CFG_VOLT		! OH3NWQ
	?jmp cfg_rst_byte
	nei A, CFG_WORD
	?jmp cfg_rst_word
	nei A, CFG_PERCENT
	?jmp cfg_rst_byte
	nei A, CFG_MSEC
	?jmp cfg_rst_msec
	nei A, CFG_SEC
	?jmp cfg_rst_byte
	nei A, CFG_MINUTE
	?jmp cfg_rst_byte
	nei A, CFG_STRING
	?jmp cfg_rst_string
	nei A, CFG_PIN
	?jmp cfg_rst_string
	ret

cfg_rst_freq:
cfg_rst_foff:
	ldax [HL+offset_default+2]
	stax [DE+2]
cfg_rst_word:
cfg_rst_msec:
	ldax [HL+offset_default+1]
	stax [DE+1]
cfg_rst_byte:
	ldax [HL+offset_default+0]
	stax [DE+0]
	ret

cfg_rst_string:
	mvi A, 0
	stax [DE]   ! no defaults for strings
	ret

!----------------------------------------------------------------------
! just wipe them out

cfg_rst_mems:
	mvi A, 0x42 			! OH3NWQ 25.06.00 18:34
	mov [sanity_memories], A	! OH3NWQ 25.06.00 18:34

	lxi HL, memories
	lxi EA, end_memories
	mvi A, 0
1:
	stax [HL]+
	deq EA, HL
	?jr 1b

	call babble; .ascii "Memoriesinsane  "
	mvi A, 60	
	call pause

	jmp begin                       ! reboot


!----------------------------------------------------------------------
! clear all of ram

cfg_suicide:
	lxi HL, ram
	lxi EA, 0
	mvi A, 0
1:
	stax [HL]+
	deq EA, HL
	?jr 1b
		!next boot will do sanity cleaning
	jmp begin

!----------------------------------------------------------------------
!----------------------------------------------------------------------


!Power table moved to power.asm
!---------------------------------

#include "power.asm"	


! CW-table  moved to cw.asm
!-------------------------------

#include "cw.asm"


! CRC-table  moved to crc.asm
!-------------------------------

#include "crc.asm"

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  Convention: Caps in main menu.
!
!  toplevel records hold a pointer to the 1st and to the last (yes, not +1)
!  record on the sublevel. ptr tells where the variable itself lives.
!  arg is misc address. default is encoded into the last 3 free bytes.
!----------------------------------------------------------------------
offset_type = 0
offset_arg  = 1
offset_ptr  = 3
offset_title = 5
offset_default = 5 + 8

#define CFG_REC(tit,ptr,typ,arg) \
  .byte typ; .word arg, ptr; .ascii tit; .byte /* 3 more bytes */
#define CFG_PAD 0,0,0

#define CFG_TOP(tit,ptr) CFG_REC(tit, ptr, CFG_NOTYPE, end_/**/ptr -16) CFG_PAD

#define CFG_SEL(str) _: .ascii str; .align 3, 0
#define CFG_SEL_END .byte 0; .align 4, 0xFF

#define PACK_FREQ(f) LO(f), HI(f), LO(f/65536)


.align 4, 0xFF
!!----------------------------------------------------------------------
!! SETUP
!!----------------------------------------------------------------------
!! RESERVED
!! No functionality.
!!----------------------------------------------------------------------
menu_reserved:
	CFG_REC("XXX    0", cfg_XXX_0, CFG_BYTE, 0) CFG_PAD
	CFG_REC("XXX    1", cfg_XXX_1, CFG_BYTE, 0) CFG_PAD
	CFG_REC("XXX    2", cfg_XXX_2, CFG_BYTE, 0) CFG_PAD
	CFG_REC("XXX    3", cfg_XXX_3, CFG_BYTE, 0) CFG_PAD
end_menu_reserved:

!!----------------------------------------------------------------------
!! HOTLIST
!! Often used things (?)
!! DTMF, CCIR, CTCSS and RGR BEEP index into series in TX TONES.
!! 
!! CTCSS frequencies are below 254 Hz, but you can put any Hz here
!! for testing/measurement purposes (like, 1750). 0 = CTCSS OFF
!!----------------------------------------------------------------------
menu_hotlist:
	CFG_REC("TX Power",  cfg_txpwr,      CFG_PERCENT, 0) 42, 0,0
	CFG_REC("CTCSS Hz",  cfg_ctcss_tone, CFG_CTCSS,   0)  0, 0,0
	CFG_REC("DTMF    ",  cfg_dtmf_idx,   CFG_TAB,    1f) CFG_PAD
	CFG_REC("CCIR    ",  cfg_ccir_idx,   CFG_TAB,    1f) CFG_PAD
	CFG_REC("Rgr Beep",  cfg_roger_idx,  CFG_TAB,    1f) CFG_PAD
	!CFG_REC("Echo Mic", cfg_echo_idx,   CFG_TAB,    2f) CFG_PAD
end_menu_hotlist:
1:
	CFG_SEL("OFF")
	CFG_SEL("SEQ 1")
	CFG_SEL("SEQ 2")
	CFG_SEL("SEQ 3")
	CFG_SEL("SEQ 4")
	CFG_SEL("SEQ 5")
	CFG_SEL("SEQ 6")
	CFG_SEL("SEQ 7")
	CFG_SEL("SEQ 8")
	CFG_SEL_END

!!----------------------------------------------------------------------
!! BAND CFG
!! CallFreq and MostUsed are quickly selectable with successive OKs.
!! RX   Low/High XXX Seems this has no reason to be here at all.
!! TX   Low/High limits the legal tranmit area.
!! Rptr Low/High limit an area which automatically selects duplex
!!              (duplex is cleared outside this area outside memories).
!! Implied gives the missing digits for shorter frequency entry.
!! Ch Step affects NEXT/PREV buttons and scanner.
!!----------------------------------------------------------------------
menu_bands:
#ifdef TMF1
	CFG_REC("CallFreq", cfg_callfreq,       CFG_FREQ, 0) PACK_FREQ(433500)
	CFG_REC("MostUsed", cfg_my_favorite,    CFG_FREQ, 0) PACK_FREQ(433400)
	CFG_REC("RX Low  ", cfg_rxband_low,     CFG_FREQ, 0) PACK_FREQ(432000)
	CFG_REC("RX High ", cfg_rxband_high,    CFG_FREQ, 0) PACK_FREQ(438000)
	CFG_REC("TX Low  ", cfg_txband_low,     CFG_FREQ, 0) PACK_FREQ(432000)
	CFG_REC("TX High ", cfg_txband_high,    CFG_FREQ, 0) PACK_FREQ(438000)
	CFG_REC("Rptr Low", cfg_rptr_area_low,  CFG_FREQ, 0) PACK_FREQ(434600)
	CFG_REC("Rptr Hi ", cfg_rptr_area_high, CFG_FREQ, 0) PACK_FREQ(435000)
	CFG_REC("Implied ", cfg_freq_implied,   CFG_FREQ, 0) PACK_FREQ(433000)
	CFG_REC("Ch Step ", cfg_chan_step,      CFG_TAB, 1f) 0, 0,0
	CFG_REC("Xvtr Set", cfg_xvtr_switch,    CFG_TAB, 2f) 0, 0,0		! OH3NWQ 11.05.00 22:00
	CFG_REC("Xvtr Frq", cfg_xvtr_offset,	CFG_FREQ, 0) PACK_FREQ(0)	! OH3NWQ 11.05.00 22:00
	CFG_REC("Xvtr x F", cfg_xvtr_multiply,	CFG_BYTE, 0) 1, 0,0		! OH3NWQ 11.05.00 22:00
	CFG_REC("PMRstart", cfg_pmr_band_low,  	CFG_FREQ | CFG_CONSTANT, 0) PACK_FREQ(445999) ! OH3NWQ 18.06.00 20:16
	CFG_REC("PMRend  ", cfg_pmr_band_high, 	CFG_FREQ | CFG_CONSTANT, 0) PACK_FREQ(446101) ! OH3NWQ 18.06.00 20:16
#else
	CFG_REC("CallFreq", cfg_callfreq,       CFG_FREQ, 0) PACK_FREQ(1297500)	! OH3NWQ 18.06.00 11:51
	CFG_REC("MostUsed", cfg_my_favorite,    CFG_FREQ, 0) PACK_FREQ(1297550)	! OH3NWQ 18.06.00 11:51
	CFG_REC("RX Low  ", cfg_rxband_low,     CFG_FREQ, 0) PACK_FREQ(1240000)	! OH3NWQ 18.06.00 11:51
	CFG_REC("RX High ", cfg_rxband_high,    CFG_FREQ, 0) PACK_FREQ(1300000)	! OH3NWQ 18.06.00 11:51
	CFG_REC("TX Low  ", cfg_txband_low,     CFG_FREQ, 0) PACK_FREQ(1240000)	! OH3NWQ 18.06.00 11:51
	CFG_REC("TX High ", cfg_txband_high,    CFG_FREQ, 0) PACK_FREQ(1300000)	! OH3NWQ 18.06.00 11:51
	CFG_REC("Rptr Low", cfg_rptr_area_low,  CFG_FREQ, 0) PACK_FREQ(1297000)	! OH3NWQ 18.06.00 11:51
	CFG_REC("Rptr Hi ", cfg_rptr_area_high, CFG_FREQ, 0) PACK_FREQ(1297500)	! OH3NWQ 07.09.04 19:38
	CFG_REC("Implied ", cfg_freq_implied,   CFG_FREQ, 0) PACK_FREQ(1297000)	! OH3NWQ 18.06.00 11:51
	CFG_REC("Ch Step ", cfg_chan_step,      CFG_TAB, 1f) 0, 0,0		! OH3NWQ 18.06.00 11:51
	CFG_REC("Xvtr Set", cfg_xvtr_switch,    CFG_TAB, 2f) 0, 0,0		! OH3NWQ 18.06.00 11:52
	CFG_REC("Xvtr Frq", cfg_xvtr_offset,	CFG_FREQ, 0) PACK_FREQ(0)	! OH3NWQ 18.06.00 11:52
	CFG_REC("Xvtr x F", cfg_xvtr_multiply,	CFG_BYTE, 0) 1, 0,0		! OH3NWQ 18.06.00 11:52
	CFG_REC("PMRstart", cfg_pmr_band_low,  	CFG_FREQ | CFG_CONSTANT, 0) PACK_FREQ(445999) ! OH3NWQ 18.06.00 20:16
	CFG_REC("PMRend  ", cfg_pmr_band_high, 	CFG_FREQ | CFG_CONSTANT, 0) PACK_FREQ(446101) ! OH3NWQ 18.06.00 20:16
#endif
end_menu_bands:
1:
	CFG_SEL("25")
	CFG_SEL("20")
	CFG_SEL("12")
	CFG_SEL("10")
	CFG_SEL_END

2:
	CFG_SEL("OFF")
	CFG_SEL("ADD")
	CFG_SEL("SUBTRACT")
	CFG_SEL_END
	
!!----------------------------------------------------------------------
!! CHARGER 
!! Battery charger control OH3NWQ
!! 
!!----------------------------------------------------------------------
menu_charger:
	CFG_REC("Charger ", cfg_charger_switch,    CFG_TAB, 1f)  1, 0,0
	CFG_REC("Charge I", cfg_bcon,          CFG_PERCENT, 0)  65, 0,0
	CFG_REC("TrickleI", cfg_bcon_trickle,  CFG_PERCENT, 0)  30, 0,0
	CFG_REC("Ch end V", cfg_charger_v_end,    CFG_VOLT, 0) 148, 0,0
	CFG_REC("Ch res V", cfg_charger_v_resume, CFG_VOLT, 0) 138, 0,0
	CFG_REC("Ch end T", cfg_charger_t_end,    CFG_BYTE, 0)  70, 0,0
	CFG_REC("Ch res T", cfg_charger_t_resume, CFG_BYTE, 0)  60, 0,0
end_menu_charger:
1:
	CFG_SEL("OFF")
	CFG_SEL("ON")
	CFG_SEL_END

!!----------------------------------------------------------------------
!! DUPLEX
!! Offset and Transmit Side are in effect outside of memories.
!! Also these are saved in memories at the moment the memory is stored.
!! Lazy Beep gives a short tone of 1750 Hz in the start of the
!! transmission iff duplex is on and the squelch is closed.
!!----------------------------------------------------------------------
menu_duplex:
#ifdef TMF1
	CFG_REC("Offset  ", cfg_duplex_off, CFG_FOFF, 0) PACK_FREQ(1600)
	CFG_REC("TX Side ", cfg_duplex_dir, CFG_TAB, 1f) CFG_PAD
	CFG_REC("LazyBeep", cfg_lazy_beep,  CFG_TAB, 2f) CFG_PAD
#else
	CFG_REC("Offset  ", cfg_duplex_off, CFG_FOFF, 0) PACK_FREQ(6000)
	CFG_REC("TX Side ", cfg_duplex_dir, CFG_TAB, 1f) CFG_PAD
	CFG_REC("LazyBeep", cfg_lazy_beep,  CFG_TAB, 2f) CFG_PAD
#endif	
end_menu_duplex:
1:
	CFG_SEL("BELOW")
	CFG_SEL("ABOVE")
	CFG_SEL_END
2:
	CFG_SEL("OFF")
	CFG_SEL("ON")
	CFG_SEL_END

!!----------------------------------------------------------------------
!! PIN CFG (SECURITY) (PARENTAL)
!! Few levels of guard against misuse.
!!----------------------------------------------------------------------
menu_parental:
	CFG_REC("PINquery", cfg_pin_type, CFG_TAB, 1f) CFG_PAD
	CFG_REC("PIN Code", cfg_pin_code, CFG_PIN, SIZE(cfg_pin_code)) CFG_PAD
end_menu_parental:
1:
	CFG_SEL("OFF")
	CFG_SEL("ON")
	CFG_SEL_END

!!----------------------------------------------------------------------
!! MISC CFG
!! Mic parameters XXX
!! On- and Off-hook index into SCRIPTS. They allow automatic execution
!! of anything when the handset is replaced to or removed from the cradle.
!! CW parameters XXX
!! MyCall XXX
!! MBUS Id XXX
!! TX Delay "relay speed" from /CRM to +12T and vice versa
!!----------------------------------------------------------------------
menu_misc:
	CFG_REC("TX Delay", cfg_tx_delay,    CFG_MSEC,   0)  50, 0,0
	CFG_REC("Lights  ", cfg_lights,      CFG_SEC,    0)  42, 0,0
	CFG_REC("PwrDispl", cfg_pwr_disp,    CFG_TAB, 	3f)   1, 0,0	
	CFG_REC("Mic Gain", cfg_mic_gain,    CFG_DIGIT,  0)   5, 0,0
	CFG_REC("Mic Src ", cfg_mic_src,     CFG_TAB,   1f)  CFG_PAD
	CFG_REC("On Hook ", cfg_onhook_act,  CFG_TAB,   2f)  CFG_PAD
	CFG_REC("Off Hook", cfg_offhook_act, CFG_TAB,   2f)  CFG_PAD
	CFG_REC("CW Speed", cfg_cw_speed,    CFG_WORD,   0) 120, 0,0
	CFG_REC("CW Pitch", cfg_cw_pitch,    CFG_WORD,   0) 800, 0,0
	CFG_REC("CallSign", cfg_mycall,      CFG_STRING, SIZE(cfg_mycall)) CFG_PAD
	CFG_REC("MBUS Id ", cfg_my_mbusid,   CFG_STRING, SIZE(cfg_my_mbusid)) CFG_PAD
end_menu_misc:
1:
	CFG_SEL("MIC")
	CFG_SEL("HFMIC")
	CFG_SEL("EXTM")
	CFG_SEL_END
2:
	CFG_SEL("NONE")
	CFG_SEL("SCRIPT 1")
	CFG_SEL("SCRIPT 2")
	CFG_SEL("SCRIPT 3")
	CFG_SEL("SCRIPT 4")
	CFG_SEL("SCRIPT 5")
	CFG_SEL("SCRIPT 6")
	CFG_SEL("SCRIPT 7")
	CFG_SEL("SCRIPT 8")
	CFG_SEL("SCRIPT 9")
	CFG_SEL_END
3:
	CFG_SEL("OFF")
	CFG_SEL("ON")
	CFG_SEL_END

!!----------------------------------------------------------------------
!! VOLUMES
!! LFU Vol. presets the audio level from the radio part. Normal
!! volume adjustment with +/- is done in the handset.
!! Keyclick XXX
!! Alert XXX
!!----------------------------------------------------------------------
menu_volumes:
	CFG_REC("MastrVol", cfg_lfu_vol,  CFG_DIGIT, 0) 4, 0,0
	CFG_REC("KeyClick", cfg_keyclick, CFG_DIGIT, 0) 1, 0,0
	CFG_REC("Alert   ", cfg_alertvol, CFG_DIGIT, 0) CFG_PAD
end_menu_volumes:

!!----------------------------------------------------------------------
!! TX TONES
!! Stores a number of preset ready-to-use tone series (CCIR/DTMF)
!! used thru indexes in HOTLIST.
!!----------------------------------------------------------------------
menu_txtones:
	CFG_REC("Serie  1", cfg_txtone1, CFG_STRING, SIZE(cfg_txtone1)) CFG_PAD
	CFG_REC("Serie  2", cfg_txtone2, CFG_STRING, SIZE(cfg_txtone2)) CFG_PAD
	CFG_REC("Serie  3", cfg_txtone3, CFG_STRING, SIZE(cfg_txtone3)) CFG_PAD
	CFG_REC("Serie  4", cfg_txtone4, CFG_STRING, SIZE(cfg_txtone4)) CFG_PAD
	CFG_REC("Serie  5", cfg_txtone5, CFG_STRING, SIZE(cfg_txtone5)) CFG_PAD
	CFG_REC("Serie  6", cfg_txtone6, CFG_STRING, SIZE(cfg_txtone6)) CFG_PAD
	CFG_REC("Serie  7", cfg_txtone7, CFG_STRING, SIZE(cfg_txtone7)) CFG_PAD
	CFG_REC("Serie  8", cfg_txtone8, CFG_STRING, SIZE(cfg_txtone8)) CFG_PAD
end_menu_txtones:

!!----------------------------------------------------------------------
!! STATUS
!! A/D and AFC readouts. read-only. Also some debugging help.
!! ----------------------------------------------------------------------
menu_status:
	CFG_REC("CTCSS   ", 0, CFG_DYN,  read_CTCSS) CFG_PAD
	CFG_REC("RSSI    ", 0, CFG_DYN,  read_RSSI)  CFG_PAD
hack_for_center:
	CFG_REC("Center  ", 0, CFG_DYN,  read_afc)   CFG_PAD
	CFG_REC("TX Power", 0, CFG_DYN,  read_PFB)   CFG_PAD
	CFG_REC("Temperat", 0, CFG_DYN,  read_TEMP)  CFG_PAD
hack_for_voltage:
	CFG_REC("BattVolt", 0, CFG_DYN,  read_BATT)  CFG_PAD
	!CFG_REC("BattCurr", 0, CFG_DYN, read_BCR)   CFG_PAD
hack_for_current:
	CFG_REC("Bat Curr", 0, CFG_DYN,  read_BCR_p) CFG_PAD
	CFG_REC("Bat Temp", 0, CFG_DYN,  read_BTMP)  CFG_PAD
	CFG_REC("CrgState", 0, CFG_DYN,  read_charger_state)   CFG_PAD
	CFG_REC("CrgSuspd", 0, CFG_DYN,  read_charger_suspend) CFG_PAD

	CFG_REC("FSKL    ", 0, CFG_DYN,  read_FSKL)  CFG_PAD
	CFG_REC("A/D 7   ", 0, CFG_DYN,  read_LOCK)  CFG_PAD
	
	CFG_REC("Mod Data", 0, CFG_DYN,  read_masd)  CFG_PAD
	CFG_REC("Mod Stat", 0, CFG_DYN,  read_mass)  CFG_PAD

	CFG_REC("rxdiv   ", rx_div + 0, CFG_FREQ, 0) CFG_PAD
	CFG_REC("rxref   ", rx_div + 3, CFG_FREQ, 0) CFG_PAD
	CFG_REC("txdiv   ", tx_div + 0, CFG_FREQ, 0) CFG_PAD
	CFG_REC("txref   ", tx_div + 3, CFG_FREQ, 0) CFG_PAD

	CFG_REC("Menu Tmr", 0, CFG_DYN,  read_menu_timer)  CFG_PAD
	CFG_REC("LightTmr", 0, CFG_DYN,  read_light_timer) CFG_PAD
end_menu_status:

!!----------------------------------------------------------------------
!! DEFAULTS
!! DISASTER  clears all ram in radio. Used when taking radio into ham use.
!! RST Some  sets defaults for most parameters. After sw upgrade.
!! RST Mems  wipes out memories. Parameters are unaffected.
!! AFC Ctrl  VCTCXO adjusment. 50% recommended.
!! Deviatio  Deviation control. Experiment.
!! 1st I/F   Keep the default.
!! Inj.Side  Likewise.
!! Dolby     Select compander method (only one (on/off) is supported :).
!!----------------------------------------------------------------------
menu_defaults:
#ifdef TMF1
	CFG_REC("RST Some", 0, 		  CFG_RST,     cfg_rst_some) CFG_PAD
	CFG_REC("RST Mems", 0, 		  CFG_RST,     cfg_rst_mems) CFG_PAD
	CFG_REC("RST All ", 0, 		  CFG_RST,     cfg_suicide)  CFG_PAD
	CFG_REC("AFC Ctrl", cfg_afc_ctrl, CFG_PERCENT,0)  50, 0,0
	CFG_REC("Deviatio", cfg_deviation,CFG_PERCENT, 0)  50, 0,0
	CFG_REC("1st IF  ", cfg_if_freq,  CFG_FREQ,    0)   PACK_FREQ(21400)
	CFG_REC("Inj Side", cfg_if_dir,   CFG_TAB,     1f)  0, 0,0
	CFG_REC("Compress", cfg_dolby,    CFG_TAB,     2f)  0, 0,0
#else
	CFG_REC("RST Some", 0, 		  CFG_RST,     cfg_rst_some) CFG_PAD
	CFG_REC("RST Mems", 0, 		  CFG_RST,     cfg_rst_mems) CFG_PAD
	CFG_REC("RST All ", 0, 		  CFG_RST,     cfg_suicide)  CFG_PAD
	CFG_REC("AFC Ctrl", cfg_afc_ctrl, CFG_PERCENT, 0)  50, 0,0
	CFG_REC("Deviatio", cfg_deviation,CFG_PERCENT, 0)  50, 0,0
	CFG_REC("1st IF  ", cfg_if_freq,  CFG_FREQ,    0)   PACK_FREQ(86513)
	CFG_REC("Inj Side", cfg_if_dir,   CFG_TAB,     1f)  1, 0,0
	CFG_REC("Compress", cfg_dolby,    CFG_TAB,     2f)  0, 0,0
#endif
end_menu_defaults:
1:
	CFG_SEL("ABOVE")
	CFG_SEL("BELOW")
	CFG_SEL_END
2:
	CFG_SEL("OFF")
	CFG_SEL("ON")
	CFG_SEL_END

!!----------------------------------------------------------------------
!! SQUELCH
!! SQ Level  Average of opening- and closing levels.
!! SQ Hyst.  The separation between above levels.
!! SQ Delay  Slowness of squelch to open
!! SQ Tail   Slowness of squelch to close
!!----------------------------------------------------------------------
menu_squelch:
	CFG_REC("SQ Level", cfg_sqlevel, CFG_PERCENT, 0) 30, 0,0
	CFG_REC("SQ Hyst ", cfg_sqhyst,  CFG_PERCENT, 0) 5,  0,0
	CFG_REC("SQ Delay", cfg_sqdelay, CFG_MSEC,    0) 80, 0,0
	CFG_REC("SQ Tail ", cfg_sqtail,  CFG_MSEC,    0) 10, 0,0
end_menu_squelch:

!!----------------------------------------------------------------------
!! SCANNER
!! Sc Wait     seconds before restarting scanning from loss of signal.
!! Sc Listen   seconds before restarting scanning during a long over.
!! Sc Pers.    minutes before restarting scanning in any case.
!! UnReject    minutes before temporarily rejected channel is scanned again.
!! StepRate    time for receiver to wake from frequency change
!! Sc Low/High limit an area to scan, with modes 1 and 2.
!! Sc3 Fq      few spot-frequencies to scan with mode 3
!! AutoScan    scanning starts automatically with the last mode after
!!             no activity either from receiver or from operator.
!!----------------------------------------------------------------------
menu_scanner:
#ifdef TMF1
	CFG_REC("Sc1 Low ", cfg_sc1_low,       CFG_FREQ, 0) PACK_FREQ(433400)
	CFG_REC("Sc1 High", cfg_sc1_high,      CFG_FREQ, 0) PACK_FREQ(433600)
	CFG_REC("Sc2 Low ", cfg_sc2_low,       CFG_FREQ, 0) PACK_FREQ(434600)
	CFG_REC("Sc2 High", cfg_sc2_high,      CFG_FREQ, 0) PACK_FREQ(435000)
	CFG_REC("Sc3 Frq0", cfg_sc3_freq_0,    CFG_FREQ, 0) PACK_FREQ(433500)
	CFG_REC("Sc3 Frq1", cfg_sc3_freq_1,    CFG_FREQ, 0) PACK_FREQ(433400)
	CFG_REC("Sc3 Frq2", cfg_sc3_freq_2,    CFG_FREQ, 0) PACK_FREQ(434850)
	CFG_REC("Sc3 Frq3", cfg_sc3_freq_3,    CFG_FREQ, 0) PACK_FREQ(434950)
	CFG_REC("Sc5 Low ", cfg_sc5_low,       CFG_FREQ, 0) PACK_FREQ(432000)
	CFG_REC("Sc5 High", cfg_sc5_high,      CFG_FREQ, 0) PACK_FREQ(438000)
	CFG_REC("Sc Wait ", cfg_scan_wait,     CFG_SEC,    0)   5, 0,0
	CFG_REC("ScListen", cfg_scan_listen,   CFG_SEC,    0)  30, 0,0
	CFG_REC("Sc Pers ", cfg_scan_pers,     CFG_MINUTE, 0)   5, 0,0
	CFG_REC("UnReject", cfg_scan_unreject, CFG_MINUTE, 0)  30, 0,0
	CFG_REC("AutoScan", cfg_autoscan_time, CFG_MINUTE, 0)   0, 0,0
	CFG_REC("StepRate", cfg_step_rate,     CFG_MSEC,   0)  30, 0,0
	CFG_REC("TXonCARR", cfg_tx_on_carr,    CFG_TAB,    1f)  0, 0,0 		! OH3NWQ 2005-07-11 20:03
#else
	CFG_REC("Sc1 Low ", cfg_sc1_low,       CFG_FREQ, 0) PACK_FREQ(1297500)	! OH3NWQ 09.07.00 16:20 
	CFG_REC("Sc1 High", cfg_sc1_high,      CFG_FREQ, 0) PACK_FREQ(1298000)	! OH3NWQ 09.07.00 16:20 
	CFG_REC("Sc2 Low ", cfg_sc2_low,       CFG_FREQ, 0) PACK_FREQ(1297000)	! OH3NWQ 09.07.00 16:20 
	CFG_REC("Sc2 High", cfg_sc2_high,      CFG_FREQ, 0) PACK_FREQ(1297475)	! OH3NWQ 09.07.00 16:20 
	CFG_REC("Sc3 Frq0", cfg_sc3_freq_0,    CFG_FREQ, 0) PACK_FREQ(1297500)	! OH3NWQ 18.06.00 11:57
	CFG_REC("Sc3 Frq1", cfg_sc3_freq_1,    CFG_FREQ, 0) PACK_FREQ(1297200)	! OH3NWQ 18.06.00 11:57
	CFG_REC("Sc3 Frq2", cfg_sc3_freq_2,    CFG_FREQ, 0) PACK_FREQ(1297050)	! OH3NWQ 18.06.00 11:57
	CFG_REC("Sc3 Frq3", cfg_sc3_freq_3,    CFG_FREQ, 0) PACK_FREQ(1297000)	! OH3NWQ 18.06.00 11:57
	CFG_REC("Sc5 Low ", cfg_sc5_low,       CFG_FREQ, 0) PACK_FREQ(1240000)  ! OH3NWQ 2005-07-11 20:04
	CFG_REC("Sc5 High", cfg_sc5_high,      CFG_FREQ, 0) PACK_FREQ(1300000)	! OH3NWQ 2005-07-11 20:04
	CFG_REC("Sc Wait ", cfg_scan_wait,     CFG_SEC,    0)   5, 0,0		! OH3NWQ 18.06.00 11:57
	CFG_REC("ScListen", cfg_scan_listen,   CFG_SEC,    0)  30, 0,0		! OH3NWQ 18.06.00 11:57
	CFG_REC("Sc Pers ", cfg_scan_pers,     CFG_MINUTE, 0)   5, 0,0		! OH3NWQ 18.06.00 11:57
	CFG_REC("UnReject", cfg_scan_unreject, CFG_MINUTE, 0)  30, 0,0		! OH3NWQ 18.06.00 11:57
	CFG_REC("AutoScan", cfg_autoscan_time, CFG_MINUTE, 0)   0, 0,0		! OH3NWQ 18.06.00 11:57
	CFG_REC("StepRate", cfg_step_rate,     CFG_MSEC,   0)  30, 0,0		! OH3NWQ 18.06.00 11:57
	CFG_REC("TXonCARR", cfg_tx_on_carr,    CFG_TAB,    1f)  0, 0,0		! OH3NWQ 2005-07-11 20:03
#endif
end_menu_scanner:

1:
	CFG_SEL("OFF")
	CFG_SEL("ON")
	CFG_SEL_END


!!----------------------------------------------------------------------
!! WARNINGS
!! A limit for stuck transmission.
!! Low voltage and overtemperature limits.
!!----------------------------------------------------------------------
menu_warnings:
	CFG_REC("TX Timer", cfg_tx_timer,  CFG_MINUTE,  0)   3, 0,0
	CFG_REC("Low Volt", cfg_volt_warn, CFG_VOLT,    0) 100, 0,0
	CFG_REC("OverTemp", cfg_temp_warn, CFG_BYTE, 	0)  60, 0,0
end_menu_warnings:

!!----------------------------------------------------------------------
!! REJECTS
!! Few frequencies weeded out from scan ranges 1 and 2. These
!! are permanent.
!!----------------------------------------------------------------------
menu_rejects:
	CFG_REC("Reject 0", cfg_reject_0, CFG_FREQ, 0) PACK_FREQ(3694) ! I AM FUNNY 01.05.00 14:34
	CFG_REC("Reject 1", cfg_reject_1, CFG_FREQ, 0) PACK_FREQ(3699) ! I AM FUNNY 01.05.00 14:34
	CFG_REC("Reject 2", cfg_reject_2, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("Reject 3", cfg_reject_3, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("Reject 4", cfg_reject_4, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("Reject 5", cfg_reject_5, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("Reject 6", cfg_reject_6, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("Reject 7", cfg_reject_7, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("Reject 8", cfg_reject_8, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("Reject 9", cfg_reject_9, CFG_FREQ, 0) PACK_FREQ(0)

	CFG_REC("TmpRej 0", temp_reject_0, CFG_FREQ, 0) PACK_FREQ(0) 
	CFG_REC("TmpRej 1", temp_reject_1, CFG_FREQ, 0) PACK_FREQ(0) 
	CFG_REC("TmpRej 2", temp_reject_2, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("TmpRej 3", temp_reject_3, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("TmpRej 4", temp_reject_4, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("TmpRej 5", temp_reject_5, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("TmpRej 6", temp_reject_6, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("TmpRej 7", temp_reject_7, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("TmpRej 8", temp_reject_8, CFG_FREQ, 0) PACK_FREQ(0)
	CFG_REC("TmpRej 9", temp_reject_9, CFG_FREQ, 0) PACK_FREQ(0)
end_menu_rejects:

!!----------------------------------------------------------------------
!! SCRIPTS
!! Commands executed after certain events happen.
!!----------------------------------------------------------------------
menu_scripts:
	CFG_REC("Script 1", cfg_script_1, CFG_STRING, SIZE(cfg_script_1)) CFG_PAD
	CFG_REC("Script 2", cfg_script_2, CFG_STRING, SIZE(cfg_script_2)) CFG_PAD
	CFG_REC("Script 3", cfg_script_3, CFG_STRING, SIZE(cfg_script_3)) CFG_PAD
	CFG_REC("Script 4", cfg_script_4, CFG_STRING, SIZE(cfg_script_4)) CFG_PAD
	CFG_REC("Script 5", cfg_script_5, CFG_STRING, SIZE(cfg_script_5)) CFG_PAD
	CFG_REC("Script 6", cfg_script_6, CFG_STRING, SIZE(cfg_script_6)) CFG_PAD
	CFG_REC("Script 7", cfg_script_7, CFG_STRING, SIZE(cfg_script_7)) CFG_PAD
	CFG_REC("Script 8", cfg_script_8, CFG_STRING, SIZE(cfg_script_8)) CFG_PAD
	CFG_REC("Script 9", cfg_script_9, CFG_STRING, SIZE(cfg_script_9)) CFG_PAD
	CFG_REC("Script 0", cfg_script_0, CFG_STRING, SIZE(cfg_script_0)) CFG_PAD
end_menu_scripts:

!!----------------------------------------------------------------------
!! PUTES		*ucked up the order OH3NWQ 29.04.00
!!----------------------------------------------------------------------
menu_main:
	CFG_TOP("HOTLIST ",menu_hotlist)
	CFG_TOP("SQUELCH ",menu_squelch)
	CFG_TOP("VOLUMES ",menu_volumes)
	CFG_TOP("SCANNER ",menu_scanner)
	CFG_TOP("REJECTS ",menu_rejects)
	CFG_TOP("SCRIPTS ",menu_scripts)
	CFG_TOP("TX TONES",menu_txtones)
	CFG_TOP("MISC CFG",menu_misc)
	CFG_TOP("BAND CFG",menu_bands)
	CFG_TOP("DUPLEX  ",menu_duplex)
	CFG_TOP("WARNINGS",menu_warnings)
	CFG_TOP("CHARGER ",menu_charger)
	CFG_TOP("PIN CFG ",menu_parental)
	CFG_TOP("DEFAULTS",menu_defaults)
      ! CFG_TOP("RESERVED",menu_reserved)
	CFG_TOP("STATUS  ",menu_status)
end_menu_main:

!----------------------------------------------------------------------
!----------------------------------------------------------------------

legal_stuff:
	.ascii "\n\n\n (C) 2000, 2004, 2005 & 2006 OH5NXO, OH3NWQ \n"

	.ascii "Vesa Tervo OH3NWQ (collectively \"OH3NWQ\") \n"
	.ascii "Binary And Source Code License Agreement \n"
	.ascii "\n"
	.ascii "READ THE TERMS OF THIS AGREEMENT AND ANY PROVIDED SUPPLEMENTAL LICENSE \n"
        .ascii "TERMS (COLLECTIVELY \"AGREEMENT\") CAREFULLY BEFORE OPENING THE SOFTWARE \n"
        .ascii "MEDIA PACKAGE. BY OPENING THE SOFTWARE MEDIA PACKAGE, YOU AGREE TO THE \n"
        .ascii "TERMS OF THIS AGREEMENT. IF YOU ARE ACCESSING THE SOFTWARE ELECTRONICALLY \n"
        .ascii "INDICATE YOUR ACCEPTANCE OF THESE TERMS BY PROGRAMMING OR INSTALLING \n"
        .ascii "THE CODE INTO A RADIO DEVICE. IF YOU DO NOT AGREE TO ALL OF THESE TERMS, \n"
        .ascii "PROMPTLY RETURN THE UNUSED SOFTWARE TO YOUR PLACE OF PURCHASE FOR A REFUND \n"
        .ascii "OR, IF THE SOFTWARE IS ACCESSED ELECTRONICALLY, DELETE IT WITHOUT \n"
        .ascii "PROGRAMMING OR INSTALLING IT TO A RADIO. \n"
        .ascii " \n"
        .ascii "1. License to Use. OH3NWQ grants to you a non-exclusive and non-transferable \n"
        .ascii "license for the internal use only of the accompanying source code, binary \n"
        .ascii "software and documentation and any error corrections provided by OH3NWQ \n"
        .ascii "(collectively \"Software\"). However, you have a right to distribute Software \n"
        .ascii "under following exemption: The new owner of the software must accept \n"
        .ascii "Agreement as a new licensee and must not pay, or give valuables, more than \n"
        .ascii "amount of 0.01 euro for Software. \n"
        .ascii " \n"
        .ascii "2. Restrictions. Software may only be used for Licensed Radio Amateur \n"
        .ascii "use governed by Radio Amateur Regulations. Software is copyrighted.\n"
        .ascii "You may make copies of Software only for your internal \n"
        .ascii "use provided that you reproduce all notices in and on Software, including \n"
        .ascii "this Agreement. You acknowledge that the Software is not designed or intended \n"
        .ascii "for use in on-line control of aircraft, air traffic, aircraft navigation or aircraft \n"
        .ascii "communications; or in the design, construction, operation or maintenance of \n"
        .ascii "any nuclear facility. OH3NWQ disclaims any express or implied warranty of fitness \n"
        .ascii "for such uses. No right, title or interest in or to any trademark, service \n"
        .ascii "mark, logo, or name of OH3NWQ or its licensors is granted under this Agreement. \n"
        .ascii " \n"
        .ascii "3. Limited Warranty. OH3NWQ warrants to you that for a period of one (1) \n"
        .ascii "hour from the date of purchase from OH3NWQ, as evidenced by a copy of \n"
        .ascii "the receipt, the media on which Software is furnished (if any) will \n"
        .ascii "be free of defects in materials and workmanship under normal use. \n"
        .ascii "Except for the foregoing, Software is provided \"AS IS\". Your exclusive \n"
        .ascii "remedy and OH3NWQ's entire liability under this limited warranty will be \n"
        .ascii "at OH3NWQ's option to replace the Software or refund the fee paid directly \n"
        .ascii "to OH3NWQ for Software. \n"
        .ascii " \n"
        .ascii "4. Disclaimer of Warranty. UNLESS SPECIFIED IN THIS AGREEMENT, ALL EXPRESS \n"
        .ascii "OR IMPLIED CONDITIONS, REPRESENTATIONS AND WARRANTIES, INCLUDING ANY IMPLIED \n"
        .ascii "WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR \n"
        .ascii "NON-INFRINGEMENT, ARE DISCLAIMED, EXCEPT TO THE EXTENT THAT THESE DISCLAIMERS \n"
        .ascii "ARE HELD TO BE LEGALLY INVALID. \n"
        .ascii " \n"
        .ascii "5. Limitation of Liability. TO THE EXTENT NOT PROHIBITED BY APPLICABLE LAW, \n"
        .ascii "IN NO EVENT WILL OH3NWQ OR ITS LICENSORS BE LIABLE FOR ANY LOST REVENUE, \n"
        .ascii "PROFIT OR DATA, OR FOR SPECIAL, INDIRECT, CONSEQUENTIAL, INCIDENTAL OR \n"
        .ascii "PUNITIVE DAMAGES, HOWEVER CAUSED AND REGARDLESS OF THE THEORY OF LIABILITY, \n"
        .ascii "ARISING OUT OF OR RELATED TO THE USE OF OR INABILITY TO USE SOFTWARE, EVEN \n"
        .ascii "IF OH3NWQ HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. In no event will \n"
        .ascii "OH3NWQ's liability to you, whether in contract, tort (including negligence), or \n"
        .ascii "otherwise, exceed the amount paid by you for Software directly to OH3NWQ \n"
        .ascii "under this Agreement. The foregoing limitations will apply even if the above \n"
        .ascii "stated warranty fails of its essential purpose. \n"
        .ascii " \n"
        .ascii "6. Termination. This Agreement is effective until terminated. You may terminate \n"
        .ascii "this Agreement at any time by destroying all copies of Software. This Agreement \n"
        .ascii "will terminate immediately without notice from OH3NWQ if you fail to comply with \n"
        .ascii "any provision of this Agreement. Upon termination, you must destroy all copies \n"
        .ascii "of Software. \n"
        .ascii " \n"
        .ascii "7. Export Regulations. All Software and technical data delivered under this \n"
        .ascii "Agreement are subject to E.U. export control laws and may be subject to export \n"
        .ascii "or import regulations in other countries. You agree to comply strictly with all \n"
        .ascii "such laws and regulations and acknowledge that you have the responsibility to \n"
        .ascii "obtain such licenses to export, re-export, or import as may be required after \n"
        .ascii "delivery to you. \n"
        .ascii " \n"
        .ascii "8. Governing Law. Any action related to this Agreement will be governed by \n"
        .ascii "law of Finland and controlling E.U. law. No choice of law rules of any \n"
        .ascii "jurisdiction will apply. \n"
        .ascii " \n"
        .ascii "9. Severability. If any provision of this Agreement is held to be unenforceable, \n"
        .ascii "this Agreement will remain in effect with the provision omitted, unless omission \n"
        .ascii "of the provision would frustrate the intent of the parties, in which case this \n"
        .ascii "Agreement will immediately terminate. \n"
        .ascii " \n"
        .ascii "10. Integration. This Agreement is the entire agreement between you and OH3NWQ \n"
        .ascii "relating to its subject matter. It supersedes all prior or contemporaneous oral \n"
        .ascii "or written communications, proposals, representations and warranties and \n"
        .ascii "prevails over any conflicting or additional terms of any quote, order, \n"
        .ascii "acknowledgment, or other communication between the parties relating to its \n"
        .ascii "subject matter during the term of this Agreement. No modification of this \n"
	.ascii "Agreement will be binding, unless in writing and signed by an authorized  \n"
	.ascii "representative of each party. For inquiries please contact:  \n"
        .ascii "Vesa Tervo OH3NWQ, Kuusimaenkatu 14, FIN-33560 Tampere, FINLAND \n\n"
        .byte 0 
	.byte TESTCHAR
	.byte 0


!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  STARTUP
!
! OH3NWQ - moved it here ... so the legal stuff is not so easy to delete...

_start:

	mvi A, 0
	mov MM, A       	! will just use the external RAM
	lxi SP, stack
	mvi V, HI(workarea) 	! DO NOT CHANGE V from workarea
	exa
	mvi A, 0
	mvi V, HI(workarea) 	! DO NOT CHANGE V from workarea

	lxi HL, end_nonvolatile      ! past memories and config.
	lxi EA, 0
	mvi A, 0
1:
	stax [HL]+               ! clear
	deq EA, HL
	?jr 1b

	call cpu_init
	call mbus_init

	call enable_ints
	ei

	call check_sanity
	
	jmp main

!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
!  VERSION NUMBER
!

        .byte 0

	.ascii "\n\n\n\n@(#)"
version:
	.ascii VERSION_0
	.ascii ".", VERSION_3
	.ascii " date=", VERSION_2
	.ascii " band="
	.byte BAND
	.byte 0
	.ascii " VERSION_STRING=", VERSION_0
	

TheEnd:

	ASSERT(TheEnd - begin <= 0xC000)
	



