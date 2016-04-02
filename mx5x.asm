#define VNUMBER "3.182"

!#define BETA "THIS IS NOT BETA"
!#define BETA "x.xxx"

#define COPYRIGHT "(C) 1999, 2000, 2003, 2004, 2005, 2006, 2008, 2009, 2011, 2014 OH3NWQ and 1997, 1998, 2000 OH5NXO"
#define DATE "181214"

#define PROGRAMMERS_NOTE "\n Join the #moppe channel on IRCnet - I won't be there \n"

#define LAST_EDITED_BY "HamWare - Vesa Tervo OH3NWQ <oh3nwq@raapr.org> http://raapr.org/moppe " 

!#define DEBUG
#define RELEASE


! year 2011:
! selected suitable licence for the source code

!	CC BY-NC-SA-3.0  Attribution-NonCommercial-ShareAlike

! http://creativecommons.org/licenses/by-nc-sa/3.0/
! Attribution-NonCommercial-ShareAlike 3.0 Unported

!# You are free:
!#
!#    * to Share â€” to copy, distribute and transmit the work
!#    * to Remix â€” to adapt the work
!#
!# Under the following conditions:
!#
!#    *  Attribution â€” You must attribute the work in the manner specified by the author or licensor (but not in any 
!#	way that suggests that they endorse you or your use of the work).
!#
!#       Attribute this work:
!#       Information
!#       What does "Attribute this work" mean?
!#       The page you came from contained embedded licensing metadata, including how the creator wishes to be 
!#       attributed for re-use. You can use the HTML here to cite the work. Doing so will also include metadata 
!#       on your page so that others can find the original work as well.
!#
!#    *  Noncommercial â€” You may not use this work for commercial purposes.
!#
!#    *  Share Alike â€” If you alter, transform, or build upon this work, you may distribute the resulting work only 
!#     	under the same or similar license to this one. 
!#
!# With the understanding that:
!#
!#    * Waiver â€” Any of the above conditions can be waived if you get permission from the copyright holder.
!#
!#    * Public Domain â€” Where the work or any of its elements is in the public domain under applicable law, that 
!#      status is in no way affected by the license.
!#
!#    * Other Rights â€” In no way are any of the following rights affected by the license:
!#          o Your fair dealing or fair use rights, or other applicable copyright exceptions and limitations;
!#          o The author's moral rights;
!#          o Rights other persons may have either in the work itself or in how the work is used, such as publicity or 
!#	     privacy rights.
!#
!#    * Notice â€” For any reuse or distribution, you must make clear to others the license terms of this work. The 
!best 
!#      way to do this is with a link to this web page.


!
! year 2004:
! This text is edited in an xbox running gentooX linux.
! the code can be compiled in xbox too (and has been done many times)
! Thanks to µ$ (greek letter mu followed by $) for making such a cheap computer to run Linux.
! Fully working Pentium III 733 with 10GB HD for 50e (bought from local ebay-alike)
!
! IF YOU MODIFY THIS CODE - SHARE ALSO THE MODIFIED SOURCE CODE WITH YOUR BINARIERS 
!
! ideas for a rainy day:
!
! all commands for frequency / channels / memories  to end with #
! other commands end with HF
!
! automatic repeater shift on Finnish and German repeater QRG's
!
! luminocity information taken into use
!
! it would be easy to optimize at least 5k of code - who cares there's plenty of EPROM
!
!  priority scan (memory 0) to 0 HF

! NWQterm - the mother of all terminal programmes
! was Y2K compliant already in 1992
! what's this Y2K fuss all about anyway?

! visit R.A.A.P.R. today http://raapr.org/moppe

/* http://raapr.org/oh3nwq    mailto:oh3nwq@raapr.org
 *
 * Hey, I am doing this just for the kicks. I am sharing the code though...
 * The structure of the program is inherited from OH5NXO,
 * without him there wouldn't be any ham software for this radio either.

 * ---   

 * THE PART OF THIS CODE THAT IS CREATED BY OH3NWQ CANNOT AND MAY NOT BE SOLD *

 * If you use and modify this source code you MUST share the source code
 * of with your modified release.

 * Non-liability statement:
 *  - This software is given to licensed ham radio operators
 *    free of charge and as it is. No warranty is given in 
 *    any way, nor is the suitability for any purpose guaranteed.
 *    The user of this program takes the full responsibility 
 *    of any direct or indirect consequencies caused by 
 *    using this program. Using this program indicates that the
 *    user accepts this statement.
 *    Vesa Tervo OH3NWQ  <oh3nwq@sral.fi>
 
 * Non-error free software statement:
 *  - Even though this software might have been tested, there is 
 *    no way to make bug free code. If a bug is
 *    found or if you have a suggestion of modification,
 *    please send an email to the author. 

 * What is HamWare:
 *  - HamWare is software that is given to licensed radio
 *    amateur (ham) use without charge. Any usage outside
 *    of the ham radio frequencies or without proper
 *    licenses to operate on that particular frequency
 *    is not allowed. Also the use of this program for
 *    commercial or any other non ham use is prohibited.

 * If you still want to give credit to the author:
 *  - As the taxes in Finland are very high, please consider
 *    these alternatives instead of sending me money or
 *    red cabriolet Porches as a gift; 
 *   - help your fellow ham to modify his/her radio
 *     or to put up the antennas
 *   - donate blood - somebody needs it
 *   - buy your husband a bunch of flowers
 *   - buy your wife a flight to Nice
 *   - send me an email and say how much you liked this software
 *
 *    Vesa Tervo OH3NWQ  <oh3nwq@raapr.org>


 * ---------------------------------------------------------------------------

 *  VERSION HISTORY

 * 3.18
 - bug fix on APRS

 * 3.17
 - created a APRS version which defaults to 432.500 on boot

 * 3.16
 - made it possible to compile MD59 repeater version with 31.4MHz xtal
   most likely it won't work on the radio, as nobody has ever tested it
   
 * 3.15
 - changed the buttons for HASHPTT version on CU53
 
 * 3.14
 - Corrected handling of STAR as Enter in Norwegian keyboard
 
 * 3.13
 - changes in mak-file

 * 3.12
 - Norwegean keyboard layout NORWAY (thanks to LA3ZA)
   changed the defines for PTT => MPTT, SPTT, HASHPTT

  ! LA3ZA, la3za@qsl.net: 19. Oct 2001
  ! PTT button:	
  ! The M requires too much pressure (MPTT)
  ! and the S is too far away from a natural position of the hand (SPTT)
  ! Some years ago, LA7TM patched the binary code (ver 1.4) to make # the PTT
  !	# = PTT
  !	* = has the function of the original # (enter frequencies, memories etc)
  !	M = Transmit with 1750 Hz tone
  !		
  ! In the 80's the Norwegian PTT required all telephone keyboards to be equivalent to calculators,
  ! so the MD59 and MD50 adhered to that:	
  !
  !	International		Norwegian			
  !	1 2 3			7 8 9		
  !	4 5 6			4 5 6
  !	7 8 9			1 2 3
  !	* 0 #			0 * #

 * 3.11
 - Corrected the SHIFT20 from 3.6 MHz to 2.0 MHz (thanks to LA3ZA)
 
 * 3.10
 - changed the functions in defines SHIFT16 and SHIFT20 (and also in file names)

 * 3.09
 - corrected a few comment line and .inf files 
 
 * 3.08 
 - corrected an error in 12.5 kHz / 2.0MHz version

 * 3.07 
 - changed the MD5x 2.0 MHz version to switch between 1.6 and 2.0 MHz shifts

 * 3.06 
 - added swedish manual :-)

 * 3.04
 - corrected the remaining lines that had comments after endifs
 - added to mak creation of MD50 odd and even files

 * 3.03 
 - automated the addition of the version number to the zip files in mak script
 - created easy-to-choose naming convention to end-loosers such as MD59-Finland.bin
 - moved comments to new lines from #define, #if and #endif to keep my compiler happy

 * 3.02 
 - corrected the web page information and email addresses
        - testing the code creation in a xbox (seems to work)

 * 3.01
 - added define SHIFT20 to make 2 MHz repeater shift

 * 3.00 
 - corrected the spelling error in a comment line

 * 2.20
 
   added OH5NXO's DUALRIG configuration      ok v 220A
 !  dualrig notes 15.4.00 nxo: 
 !   DP           set only during display, else 0 
 !   CLK          set only during display and keypad, else 0 
 !   CS1, CS2     set only during display and keypad, else undefined 

 - corrected 22r9's error with SUSPEND when DUALRIG was not defined  ok v 220A

 * 2.14  - new define REPEATER
  - Carrier controlled TX (from serv)    ok v 2131
  - Short beep to say "over" (1750Hz)    ok v 22r2
  - TX stays on a while after the "over"    not done
  - Callsign can be patched to EPROM    not done
  - Works without a handset      ok v 2131
  - Audio can be coupled from the handset connector 
    or from the audio card, check proper audio levels  ok v 2131

 
 * 2.13  - errorneous stack addressing corrected (affected ME59) ok  v 2124

 * 2.12  - memory skip info which was entered when the memory 
     was stored is now saved over the power off
  
 * 2.11  - new define EASY_BEEP if on repeater 
    and squelch is closed -> beep    ok  v 2104 
  - I on display if memory is skipped (after 1#)  ok  v 210A
  - on memory scan (3HF) show which channels are scanned ok  v 210d 

 * 2.10  - problems with rejecting memory 9   ok  v 20b0 

 * 2.0A  - released at funet          v 20AG
   - number (HF)  for different various modes  
    like 0 (HF) scanning with no channels available ;) ok. v 20A0
  - memory scanning can now be disabled   ok. v 20A2 
           - new method of storing memories (instead of 70#...79#)
            3400# 1(sto)    StorEd 1   ok  v 20A4
              ScAn ?    (sto)/(cl)      v 20b0 
         - memory sanity check - RAM zeroed if not sane          ok. v 20A8
                - PIN(HF) = 3694(HF) resets everything to zero          ok. v 20AA
                - setting volume -> 3 and memories at forced reset ok. v 20AC

 * 2.09  - released @ funet & oh3tr
  - PIN code can be defined at compile time - if not, default 3694 is used
    new defines PIN_1 PIN_2 PIN_3 and PIN_4 
    (E.g. -DPIN_1=4 -DPIN_2=7 -DPIN_3=1 -DPIN_4=1 to use PIN 4711 ) 
  - R -> not D/S as it should when not scanning     ok 2081

 * 2.08  - released @ funet & oh3tr
 * 2.080    - R -> not D/S as it should when not scanning ...

 * 2.06-2.08 - scanning algoritm M(R)(S) (rejects missing @ memory scan) ok 2072  
    @ mem scan: R -> Rep/Simp ???
  - corrected errorneous scanning after 81# or 82#    ok 2074
  - simplex scanning limits changed in Finnish version   ok 2076
  - rejects at memory scan working     ok 207L 
  - memory saving seems to be now out of order...  error 2.06 -> ok 2o78
  - new define NOHIPOWER to disallow the 3rd power step   ok 206

 * 2.05  - corrected defines - now both X81 and X126 work
    released @ funet and oh3tr

 * 2.04  - 2.042(X81) worked with X126 and OFFSET_OPTIMUM... 
    ... it shouldn't because X81 = OFFSET_OPTIMUM 
    (two errors eliminating each other made it work)

 * 2.03  -preparations for memory scanning
  -PIN code asked at boot if PIN defined  ok v 203E
  -released at http://www.funet.fi/~oh3nwq/oh3nwq.html

 * 2.02  -after command 70# you'll see: Stored 1 

 * 2.01  -The define STEP125 was missing in the ME59 makefile...
   -new define USA for ME59 -> US 33 cm band   
 
 * 2.00  991128 released on oh3tr.ele.tut.fi
  -release version with memories 0...9  

 * 1.91  -new commands 70#...79# to
   store the current frequency to memory 0...9   ok v 1938 
   -0#...9# go to memory 0..9     ok v 1935 
  -preset channels 00-09 are now only accessble with 00#...09# ok v 1910
  -new command 99# (try it - you won't like it)   ok v 1935

 * 1.90  -new command 69# (try it - you'll like it)
   -debug info  80# (not used)

 * 1.87  -some CCIR tests
   -97# emits CCIR tone 7   working on 1.88 (frequency not tested)  (deleted 1.91)
   -98# emits CCIR tone 8 (same as *) working on 1.90    (deleted 1.91)
   -99# emits CCIR tone 9   working on 1.89 (frequency not tested) (deleted 1.91)

 * 1.86  -84# command and (T) on display is taken in use:
 *   it lights the keypad and display permanently when set

 * 1.85  -letting the 12.5 kHz step rest a while....
 *  -lights lit when handset is lifted

 * 1.83  -working on the scanner   
 *   new commands:
 *   81# include repeater channels in scan (R) on display
 *   82# toggle include simplex channels in scan  (S) on display
 *   83# toggle include memory channels in scan   (T) on display  (removed in 187)
 *           -new define STEP125 for 12.5kHz step on MD5x
 *           -12.5 kHz step operation (MD5x) needs an HW modification to the PLL 
 *    loop filter and to the PLL as the logical state of one of the IC pins 
 *   has to be changed
 *  -new define DOUBLESTEP for MD5x with 12.5kHz to step 25kHz 
 *    with up and down keys
 *  -bYE-bYE 73 text on shutdown    ok v. 183U
 *  -88# and 89# will show the display as long 
 *   as #-button is held down     ok v. 183U
 *   -1.84 ran out of printable letters in 183x
 *  -1.847 released @ oh3tr without the 12.5 kHz step.

 
 * 1.811 990405 released on oh3tr.ele.tut.fi * 
 *
 *   -ME59 X126 1.81 seemed to go up on frequency, 
 *   it should go down on rx - corrected    ok v.21
 * 1.821 990406 released on oh3tr.ele.tut.fi * 


 * 1.8  990403 OH3NWQ
 *  -ME 59 offset vco 126.0/81.0 MHz (not tested)  ok v.05
 *   -show D at boot if German repeater band is defined  ok v.01
 *  -corrected the missing last channel from MD5x and German repeater band
 *  -89# shows the offset vco/xtal, defined repeater band, handset
 *   second row selected band and defined step on MD5x  (changed in v.32!)
 *   E.g. 214F59  314G53  126G53
 *    432-438 25 430-440 12 1240-1300
 *
 
 
 * 1.7  990327 OH3NWQ
 *  -taking away the delay before 1750 Hz beep is sent
 *  -if FREEBAND is defined tx goes beyond HAM band 
 *   (no PLL lock check in hardware)
 *   Notice: compiling and/or using the freeband version may be 
 *   illegal in your country. Check local regulations first
 *   and DO NOT TRANSMIT OUTSIDE OF THE HAM BANDS. By compiling
 *   the freeband version you take the full responsibility 
 *   yourself.
 *  -clear all scanner rejects 85#   ok v.10
 *      -positive/negative duplex toggle 86#  ok v.3E
 *  -repeater duplex toggle 87#  
 *   MD5x 7.6/1.6 MHz    ok v.30
 *   ME59 28.0/6.0 MHz    ok v.34
 *  -display test with 88#    ok v.20
 *  -REP76 changed to GERMAN  - now defines only the German repeater band 
 * 1.73(F) 990402 released on oh3tr.ele.tut.fi

 *  1.6  990319 OH3NWQ
 *  if this text does not look good to you, it may be
 *  because you're not looking at it with the same
 *  editor as I do ...
 *  -if SPTT is defined, S button for PTT (CU59)      
 *  -if REP76 is defined, the repeater shift is
 *   7.6 @ 438.550-439.400 (MD)
 *  -if FINHAM is defined, only 432-438 band 
 *   is available for tx (MD)
 *  -4 digit version number for debugging purposes (MD)
 * 1.623 990323 released on oh3tr.ele.tut.fi

!___________________md5x____________me59______________ NWQ
!          S        = simplex      = simplex
!       D           = - 1.6        = -  6.0
!       D   F       = + 1.6        = +  6.0
!       D<          = - 7.6        = - 28.0
!       D<  F       = + 7.6        = + 28.0

!SHIFT20 
!___________________md5x_____________ NWQ
!          S        = simplex   
!       D           = - 1.6         
!       D   F       = + 1.6 
!       D<          = - 2.0          
!       D<  F       = + 2.0 

! CU59
! RST    R=repeater channels enabled in scan
!        S=simplex channels enabled in scan
!        T=memory channels enabled in scan
!
! CU53
! TC   N    T=repeater channels enabled in scan
!           C=simplex channels enabled in scan
!           N=memory channels enabled in scan
!


 * OH5NXO
 *  1.5  980405 MD59 /PTT /EF4
 *  1.4  980127 Better handling for 4021 input reg.
 *              ME59 /PTT.
 *              Scanner continues after powerup.
 *              Keyclick volume corrected.
 *              Fix duplex shift to below (wrong in v1.3)
 *  1.3a 971218 For original 31.4 MHz tx offset.
 *  1.2  971216 MD50/CU53 back in line.
 *  1.1  971215 sidebutton txp, simple scanner, others.
 *  1.0  971120 MD5x and ME59 merged.
 *
 *  Juha, OH5NXO
 *

 */


#ifdef SHIFT16_20	 
#define SHIFT20
#endif

                        ! NWQ 2005-02-19 19:20
#ifdef SPTT		
#define PTT 'B'
#define SQUELCH 'P'
#define ENTER '#'
#define STAR '*'	
#endif

                        ! NWQ 2005-02-19 19:20
#ifdef MPTT		
#define PTT 'P'
#define SQUELCH 'B'
#define ENTER '#'
#define STAR '*'
#endif

			! NWQ 2005-02-20 15:23
#ifdef HASHPTT		
#define PTT '#'
#define ENTER '*'
#ifdef CU59
#define SQUELCH 'B'
#define STAR 'P'
#else
! CU53 must have a 1750 tone key on the top S-key
#define SQUELCH 'P'
#define STAR 'B'
#endif
#endif

                        ! NWQ 2005-02-19 19:20
#ifndef PTT		
#define SPTT
#define PTT 'B'
#define SQUELCH 'P'
#define ENTER '#'
#define STAR '*'	
#endif


! NWQ the default PIN code is set here
! don't show this to anybody as there is no PUK code
! PSSST: the code is *not* 3699 because I am OldSkool

#ifndef PIN_1
#define PIN_1 3
#endif

#ifndef PIN_2
#define PIN_2 6
#endif

#ifndef PIN_3
#define PIN_3 9
#endif

#ifndef PIN_4
#define PIN_4 4
#endif

!---
#ifdef REPEATER

#ifdef ME59

#ifndef DOUBLESTEP
#define DOUBLESTEP   ! 25 kHz steps with up down
#endif

#ifndef STEP125
#define STEP125 
#endif

#ifdef X126
 ASSERT(42 == 69)  ! This would do a 51 MHz shift
#endif

#ifdef USA
 ASSERT(42 == 69)  ! Who cares
#endif

#ifdef FREEBAND
 ASSERT(42 == 69)  ! Who cares
#endif

#ifndef X81
#define X81
#endif 
 !X81
#endif 
 !ME59

#ifndef ME59
#ifndef X314
#define X214
#endif 
 !/X314
#endif  
 !/ME59

#ifdef PIN
 ASSERT(42 == 69)  !  can't do ...
#endif 
 !PIN

#endif 
 !REPEATER
!---

#ifdef NOHANDSET  
   ! MD59CU59-x314 without handset 
#define MD59
#define CU59
#define FINHAM
#define X314
#define SPTT
#define EASY_BEEP
#ifdef PIN
 ASSERT(42 == 69)  ! No handset && Pin code - no can do !
#endif
#endif


#define THEMEANINGOFLIFEUNIVERSEANDEVERYTHING 42

#ifdef ME59

#ifdef X81
#define OFFSET_OPTIMUM
#define XTAL "81.0"
#else
#ifndef X126
#define X126
#endif
#define XTAL "126.0"
#endif

#else 
 !/ME59

#ifdef X214
#define OFFSET_OPTIMUM
#define XTAL "21.4"
#else
#define XTAL "31.4"
#endif

#endif  
 !ME59

Rint = 1
Rstk = 2
Rpgm = 3
Rcal = 4 # SCRT "call"
Rret = 5 # SCRT "return"
Rarg = 6 # SCRT "temporary & arguments"
Rbp  = 7 # Extended SCRT, for stack frame

Rtmp  = 8
Rtmp3 = 9
Rram  = 0xA
Rptr  = 0xB
Rtmp2 = 0xC
Rtbl  = 0xD # Always to tables

#ifdef ME59
TMR = 1
#else
HLT = 1  ! MD50 only (unused on MD59)
#endif
MDM = 2
REG = 4

!----------------------------------------------------------------------
!
!  MAS7205  NMT modem hybrid
!
!  Status register, read A5 high

#ifdef ME59
MDMTIMINT = 0x80 ! Timer OUT2
#else
MDMSQ     = 0x80 ! Squelch state
#endif
MDMFFSKC  = 0x40 ! RX FFSK data in realtime
MDMINT    = 0x20 ! 100Hz systick
MDMTBE    = 0x04 ! TX buffer empty
MDMDAV    = 0x01 ! RX data available

!  Control register, write A5 high

MDMINTACK = 0x40 ! Acknowledge systick interrupt
MDMTXEN   = 0x02 ! Enable FFSK transmission

MDMINTEN  = 0x11 ! Just and only guessing this one...

!----------------------------------------------------------------------

#define shr4 shr; shr; shr; shr
#define shl4 shl; shl; shl; shl

#define LDREG(r,a)  ldi LO(a) ; plo r ; ldi HI(a) ; phi r
#define ADJUST(r,a) ldi LO(a) ; plo r

#define CALL(f) sep Rcal ; .byte LO(f), HI(f)
#define RETURN  sep Rret

#define BYTE   : .rs 1
#define BUF(n) : .rs n

#define DOSUB(r, d) glo r; smi LO(d); plo r; ghi r; smbi HI(d); phi r
#define DOADD(r, d) glo r; adi LO(d); plo r; ghi r; adci HI(d); phi r

#define PACK(a,b) (((a) << 8) | (b))
#define REGUPD str Rram ; sex Rram ; out REG ; dec Rram

#define SET(x)  ADJUST(Rram,(x)>>8); ldn Rram ; ori  ((x)&0xF) ; REGUPD
#define CLR(x)  ADJUST(Rram,(x)>>8); ldn Rram ; ani ~((x)&0xF) ; REGUPD
#define FLIP(x) ADJUST(Rram,(x)>>8); ldn Rram ; xri  ((x)&0xF) ; REGUPD

#define PULSE(x) SET(x); CLR(x)

#define LIT(BIT) ADJUST(Rram, indicators); ldn Rram; ori  MASK(BIT); str Rram
#define DIM(BIT) ADJUST(Rram, indicators); ldn Rram; ani ~MASK(BIT); str Rram

/* CU53 LATCH bits */

#define BIT_AVAIL    0 /* CU59 to lower round LED */
#define BIT_CALL     1
#define BIT_SERV     2
#define BIT_KEYLIGHT 3
#define BIT_ROAM     4
#define BIT_HF       5
#define BIT_LCDLIGHT 6
#define BIT_BRIGHT   7

#define MASK(bit) (1 << (bit))

/* CU Special LCD segments */

#ifdef CU53

#define SEG_KEY      (127)
#define SEG_T        (123)
#define SEG_C        ( 67)
#define SEG_COLON_L  (103)
#define SEG_COLON_R  ( 71)
#define SEG_BAR_L    ( 79)
#define SEG_BAR_R    ( 91)
#define SEG_S        (115)
#define SEG_F        (119)
#define SEG_D        ( 75)
#define SEG_I        ( 83)
#define SEG_LESS     ( 87)
#define SEG_N        ( 95)

#define SEG_SCAN1 SEG_BAR_L
#define SEG_SCAN2 SEG_BAR_R

#define SEG_SCANREP SEG_T
#define SEG_SCANSIMP SEG_C
#define SEG_SCANMEM SEG_N

#define SEG_LIGHTS_ON SEG_COLON_L
#define SEG_LOWBATT SEG_COLON_R

#endif /* CU53 */


#ifdef CU59

#define SEG_ARROW    (111)
#define SEG_KEY      (127)
#define SEG_r        (123)
#define SEG_s        (107)
#define SEG_t        ( 67)
#define SEG_HANDSET  (103)
#define SEG_COLON_R  ( 71)
#define SEG_CH       ( 79)
#define SEG_A        ( 91)
#define SEG_D        (115)
#define SEG_I        (119)
#define SEG_LESS     ( 75)
#define SEG_S        ( 83)
#define SEG_F        ( 87)
#define SEG_N        ( 95)

#define SEG_SCAN1  SEG_CH
#define SEG_SCAN2 SEG_A

#define SEG_SCANREP  SEG_r
#define SEG_SCANSIMP SEG_s
#define SEG_SCANMEM SEG_t

#define SEG_LIGHTS_ON  SEG_COLON_R
#define SEG_LOWBATT SEG_ARROW
#define SEG_OFFHOOK SEG_HANDSET


#endif /* CU59 */

#define SEG_POSREP  SEG_F
#define SEG_SKIP SEG_I

 .data

#ifdef ME59

 .org 0xA000
afc_ctrl:

 .org 0xE000
ad_pot:  .rs 1
ad_rssi: .rs 1
ad_batt: .rs 1
ad_in3:  .rs 1
ad_in4:  .rs 1
ad_afc:  .rs 1
ad_fskl: .rs 1
ad_gnd:  .rs 1

#endif

 .org 0x8000
ram:

outputs:   ! Address bits 3..1 special !

volareg:
output_0: .rs 2 ! every another byte padding, sometimes used as tmp.
output_1: .rs 2
output_2: .rs 2
output_3: .rs 2
output_4: .rs 2
output_5: .rs 2
output_6: .rs 2
output_7: .rs 2

 .org 0x801F
mdm_data BYTE ; ASSERT((mdm_data & 0x20) == 0)
mdm_ctrl BYTE ; ASSERT((mdm_ctrl & 0x20) <> 0)
mdm_stat BYTE ; ASSERT((mdm_stat & 0x20) <> 0)



!----------------------------------------------------------------------
#ifdef ME59
#define TSE    PACK(output_0, 1)
#else
#define SE     PACK(output_0, 1)
#endif

#define VOLMSK PACK(output_0, 0xE)


!----------------------------------------------------------------------
#define TXB    PACK(output_1, 1)
#define EAR    PACK(output_1, 2)

#ifdef MD50
#define NPHI   PACK(output_1, 4)
#define NMIC   PACK(output_1, 8)
#define MIC_OFF SET(NMIC)
#define MIC_ON  CLR(NMIC)
#endif

#ifdef MD59
#define PHI    PACK(output_1, 4)
#define HSM    PACK(output_1, 8)
#define MIC_OFF CLR(HSM)
#define MIC_ON  SET(HSM)
#endif

#ifdef ME59
#define PHI PACK(output_1, 4)
#define HSM PACK(output_1, 8)
#define MIC_OFF CLR(HSM)
#define MIC_ON SET(HSM)
#endif

#define phireg output_1
#define iPHI 4

!----------------------------------------------------------------------
#define TXA PACK(output_2, 1)

!----------------------------------------------------------------------
#ifdef MD50
#define VCS PACK(output_3, 1)
#define NRC PACK(output_3, 2)
#define AT1 PACK(output_3, 4)
#define TXS_ON CLR(NRC)
#define TXS_OFF SET(NRC)
#endif

#ifdef MD59
#define TXS_ON SET(RC)
#define TXS_OFF CLR(RC)
#define RC PACK(output_3, 1)
#define OFF1 PACK(output_3, 2)
#define AT1 PACK(output_3, 4)
#endif

#ifdef ME59
#define TXS_ON CALL(dooffset), 1
#define TXS_OFF CALL(dooffset), 0
#define RSE PACK(output_3, 1)
#define NC_1 PACK(output_3, 2)
#define ES PACK(output_3, 4)
#endif

#define HF PACK(output_3, 8)

!----------------------------------------------------------------------
#ifdef MD50
#define OFF1 PACK(output_4, 1)
#endif

#ifdef MD59
#define EECS PACK(output_4, 1)
#endif

#ifdef ME59
#define EECS PACK(output_4, 1)
#endif

#define DP PACK(output_4, 2)
#define CLK PACK(output_4, 4)
#define EXA PACK(output_4, 8)

!----------------------------------------------------------------------
#define WDR PACK(output_5, 1)
#define KV PACK(output_5, 2)
#define ALO PACK(output_5, 4)
#define CRM PACK(output_5, 8)

#define wdrreg output_5
#define iWDR 1

!----------------------------------------------------------------------
#define SWE PACK(output_6, 1)
#define PSC PACK(output_6, 8)

#define swereg output_6
#define iSWE 1

#define pscreg output_6
#define iPSC 8

!----------------------------------------------------------------------
#define XM PACK(output_7, 1)
#ifdef ME59
#define OFF1 PACK(output_7, 2)
#define KIND PACK(output_7, 4)
#else
#define AT2 PACK(output_7, 4)
#endif

!----------------------------------------------------------------------
#ifdef ME59
#define AT_ON  
#define AT_OFF 
#else
#define AT_ON  SET(AT1); SET(AT2)
#define AT_OFF CLR(AT1); CLR(AT2)
#endif

!----------------------------------------------------------------------
KEYPAD = 0
LATCH  = 2
LCD1   = 4
LCD2   = 6

#define CUSEL(x) ADJUST(Rram,output_2); ldn Rram ; ani ~0xE ; ori x ; str Rram ; sex Rram ; out REG ; dec Rram

!----------------------------------------------------------------------
!
!  Inputs registers are canonized into generic (virtual brrh) bits
!

POWEROFF  = 0b00000001 ! powerswitch in off-position. Off == 1
TOFF      = 0b00000010 ! TX says no output power. TX on == 0 ? MD59 XXX.
OFFHOOK   = 0b00000100 ! handset lifted. Lifted == 1
LOWBATT   = 0b00001000 ! under the VCS-selected limit, Under = 1
AUXPTT    = 0b00010000 ! aux-ptt active (depending on model). Ptt == 1
LOCAL     = 0b00100000 ! service jumper. Local == 1
PORTABLE  = 0b01000000 ! battery pack operation. Portable == 1
COLDSTART = 0b10000000  ! was powered down over 5 seconds. Cold == 1

IGNITION_XXX = 0
AUTOCALL_XXX = 0
SUSPENDED = OFFHOOK

!---------------------------------------------------------------------
! cw defines
!

#define CW_PAUSE        CALL(cw_pause)
#define CW_WORD         CALL(cw_pause); CALL(cw_pause)

#define CW_A  CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_AE  CALL(cw_dot); CALL(cw_dash); CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_B  CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_C  CALL(cw_dash); CALL(cw_dot); CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)
#define CW_Ch  CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_D  CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_E  CALL(cw_dot); CALL(cw_pause)
#define CW_F  CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)
#define CW_G  CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)
#define CW_H  CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_I  CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_J  CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_K  CALL(cw_dash); CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_L  CALL(cw_dot); CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_M  CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_N  CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)
#define CW_O  CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_OE  CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)
#define CW_P  CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)
#define CW_Q  CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_R  CALL(cw_dot); CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)
#define CW_S  CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_T  CALL(cw_dash); CALL(cw_pause)
#define CW_U  CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_UE  CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_V  CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_W  CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_X  CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_Y  CALL(cw_dash); CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_Z  CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_1  CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_2  CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_3  CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_4  CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_5  CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_6  CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_7  CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_8  CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_9  CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)
#define CW_0  CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_Period CALL(cw_dot); CALL(cw_dash); CALL(cw_dot); CALL(cw_dash); CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_Comma CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_pause)
#define CW_Colon CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_Question CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_pause)
#define CW_Apostrophe CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)
#define CW_Hyphen CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_Slash CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)
#define CW_Brackets CALL(cw_dash); CALL(cw_dot); CALL(cw_dash); CALL(cw_dash); CALL(cw_dot); CALL(cw_dash); CALL(cw_pause)
#define CW_Quotation CALL(cw_dot); CALL(cw_dash); CALL(cw_dot); CALL(cw_dot); CALL(cw_dash); CALL(cw_dot); CALL(cw_pause)



!----------------------------------------------------------------------
!
!  Channels 

#ifdef STEP125
CHPER100kHz  = 8
#else
CHPER100kHz  = 4
#endif


#ifdef ME59
!
!  Lowest channel  is 1.200.000.0
!  Highest channel is 1.299.987.5
!
! or
!
!  Lowest channel  is 0.900.000.0
!  Highest channel is 0.999.987.5
!
!

#ifdef USA

#define f2c(f) ((((f)*10) - 9000000 + 5) / 125)

BASEDIV = (9000000 - 810000) / 125

DEF_FREQ     = 927000
BAND_START   = f2c(902000)
BAND_END     = f2c(928012)

RPTR_START   = f2c(918000)
RPTR_END     = f2c(921012)

SIMPLEX_START= f2c(927000)
SIMPLEX_END  = f2c(928012)
RPTR_SUB     = 960  ! 960*12.5=12000
RPTR_SUB76   = 1040  ! NWQ (960+1040)*12.5 = 25000 

#ifndef OFFSET_OPTIMUM
TX_OFFSET = 450000 / 125 ! Fix VCO by the NMT-shift during TX.
#endif

#else 
 !not 33CM so it must be 23CM

!#define DOUBLESTEP  ! NWQ DOUBLESTEP => Scanning in 25kHz steps, otherwise 12.5 kHz steps

#define f2c(f) ((((f)*10) - 12000000 + 5) / 125)


BASEDIV = (12000000 - 810000) / 125

DEF_FREQ     = 1297000
BAND_START   = f2c(1240000)
BAND_END     = f2c(1300000)

#ifdef GERMAN
RPTR_START   = f2c(1298025)
RPTR_END     = f2c(1299000)
#endif

#ifndef GERMAN
#ifdef REPEATER
RPTR_START   = f2c(1299975)
RPTR_END     = f2c(1299987)
#else
RPTR_START   = f2c(1297000)
RPTR_END     = f2c(1297500)
#endif
#endif

SIMPLEX_START= f2c(1297500)
SIMPLEX_END  = f2c(1298000)
RPTR_SUB     = 480   ! 480*12.5=6000
RPTR_SUB76   = 1760   ! NWQ (480+1760)*12.5 = 28000 

#ifndef OFFSET_OPTIMUM
TX_OFFSET = 450000 / 125           ! Fix VCO by the NMT-shift during TX.
#else
     ! We do not set TX_OFFSET
#endif 
 !OFFSET_OPTIMUM

#endif  
 !/USA

#else 
 !it must be MD5x

!#ifndef ME59  

#ifndef STEP125
!
!  STEP = 25 kHz
!  Lowest channel  is 400.000.0
!  Highest channel is 499.975.0
!

#ifndef OFFSET_OPTIMUM
TX_OFFSET = 10000 / 25  ! Fix VCO by the NMT-shift during TX.
#endif

#define f2c(f) (((f) - 400000) / 25)

BASEDIV_N = (400000 + 21400) / 25 / 80
BASEDIV_A = (400000 + 21400) / 25 % 80
PRESCALER = 80

DEF_FREQ     = 433000

#ifdef FINHAM
BAND_START   = f2c(432000)
BAND_END     = f2c(438025)
#else
#ifdef FREEBAND
BAND_START   = f2c(400000)
BAND_END     = f2c(500000)
#else
BAND_START   = f2c(430000)
BAND_END     = f2c(440025)      ! NWQ 450 -> 440
#endif
#endif

SIMPLEX_START = f2c(433400)
SIMPLEX_END   = f2c(433600)

#ifdef SHIFT20
RPTR_SUB = 64  ! NWQ 64*25 = 1600
RPTR_SUB76    = 16  ! NWQ (16+64)*25 = 2000
#else
RPTR_SUB = 64  ! 64*25=1600
RPTR_SUB76    = 240  ! NWQ (240+64)*25 = 7600
#endif

#ifdef GERMAN
RPTR_START   = f2c(438550)
RPTR_END     = f2c(439425)
#else
RPTR_START   = f2c(434600)
RPTR_END     = f2c(435000)
#endif

#endif 
 ! /STEP125

#ifdef STEP125
!
!  Lowest channel  is 400.000.0
!  Highest channel is 480.000.0
!

#ifndef OFFSET_OPTIMUM
TX_OFFSET = 100000 / 125  ! Fix VCO by the NMT-shift during TX.
#endif

#define f2c(f) ((((f)*10) - 4000000 + 5) / 125)

BASEDIV_N = (4000000 + 214000) / 125 / 80 ! 400.000 = 421 32/80   
BASEDIV_A = (4000000 + 214000) / 125 % 80 ! 499.987 = 521 31/80   
PRESCALER = 80     ! 490.587 = 511 79/80   
      ! 490.587-400.000 = 90 47/80

DEF_FREQ = 433000

#ifdef FINHAM
BAND_START   = f2c(432000)
BAND_END     = f2c(438012)
#else
#ifdef FREEBAND
BAND_START   = f2c(400000)
BAND_END     = f2c(500000) ! who cares about overflows anyway...
#else
BAND_START   = f2c(430000)
BAND_END     = f2c(440012)      ! NWQ 450 -> 440
#endif
#endif

SIMPLEX_START = f2c(433400)
SIMPLEX_END   = f2c(433600)

#ifdef SHIFT20
RPTR_SUB = 64*2  ! NWQ 64*2*12.5 = 1600
RPTR_SUB76    = 80*2  ! NWQ 80*2*12.5 = 2000
#else
RPTR_SUB = 64*2  ! 64*2*12.55=1600
RPTR_SUB76    = 240*2  ! NWQ (240+64)*2*12.5 = 7600
#endif

#ifdef GERMAN
RPTR_START   = f2c(438550)
RPTR_END     = f2c(439425)
#else
RPTR_START   = f2c(434600)
RPTR_END     = f2c(435000)
#endif

#endif 
 ! STEP125

#endif 
 !MD5x

!       ! NWQ for the new scanning routine
NUM_SIMP = (simplex_end - simplex) / 2 ! simplex channels
NUM_DUP  = (duplex_end - duplex) / 2 ! duplex channels
NUM_MEM  = 10     ! user memories (0...9)

SC_MEMORY = 0     ! enumerating constants 
SC_REPEATER = 1     ! for the new scanning 
SC_SIMPLEX = 2     ! routine


!       ! for direct memory access (42#)
MEM_NUM  = (memories_end - memories) / 2


channel  BUF(2)

!----------------------------------------------------------------------
!
!  More variables...
!  these ones are stored at battery backup RAM

elvis_1  BYTE ! NWQ (spare memory location rfu)
volume  BYTE
memory  BYTE
txpower  BYTE

sq_forced BYTE
sq_level BYTE

input_bits BYTE

scan_mode BYTE
vipchannel BUF(2)

rptr  BYTE ! NWQ current repeater status
rptr_76  BYTE ! NWQ current repeater shift 1.6 / 7.6 or 1.6 / 2.0 if SHIFT20 is defined ! 2.01 
rptr_pos BYTE ! NWQ current repeater shift direction 

sanitycheck	BYTE	! NWQ if this ain't what it should be - reset everything
elvis_2		BYTE	! NWQ (spare memory location rfu)

scan_mem	BYTE	! NWQ are memory channels included in scan
scan_rep	BYTE	! NWQ are repeater channels included in scan	
scan_simp	BYTE	! NWQ are simplex channels included in scan	

lights_on	BYTE	! NWQ lights permanently on

memory_0	BUF(6)	! NWQ memories 0-9	buf(6) assigned 5 only needed	
mode_0		BUF(2)	! NWQ mode_0..9 reserved for memory setting 0-9	
memory_1	BUF(6)	!				
mode_1		BUF(2)	
memory_2	BUF(6)					
mode_2		BUF(2)	
memory_3	BUF(6)	 
mode_3		BUF(2)	 
memory_4	BUF(6)	
mode_4		BUF(2)	
memory_5	BUF(6)	
mode_5		BUF(2)	
memory_6	BUF(6)	
mode_6		BUF(2) 
memory_7	BUF(6)	
mode_7		BUF(2) 
memory_8	BUF(6)
mode_8		BUF(2)
memory_9	BUF(6)
mode_9		BUF(2)

!----------------------------------------------------------------------
!
!  mode bits
!


SAVESKIP    = 0b00000001	! Permanent skip info - Skip this memory
MEMOSKIP    = 0b00000010	! Temporary skip info - Skip this memory
MEMOREPON   = 0b00000100	! repeater off/on                         (rfu)
MEMOREPDIR  = 0b00001000	! repeater -/+                            (rfu)
MEMOREPSFT  = 0b00010000	! repeater 1.6/2.0 or 1.6/7.6             (rfu)
MEMOREPREV  = 0b00100000	! repeater normal/reverse                 (rfu)
ELVIS6    = 0b01000000	! spare bit rfu
ELVIS7    = 0b10000000  ! spare bit rfu


_bss:

!----------------------------------------------------------------------
!
!  More variables...
!  these are zeroed at startup

segments	BUF(16)		! 32 bits 4 times
indicators	BYTE		! trails segments !

lighttimer	BUF(2)
onhook		BYTE

keycode		BYTE
key		BYTE

twiddle		BYTE

reject_idx	BYTE
rejects		BUF(8 * 2)

scan_num	BYTE
scan_which	BYTE

car		BYTE
carbuf		BUF(4)

dig_idx		BYTE
digbuf		BUF(8)

real_txchan	BUF(2)

sq_state	BYTE

debug		BUF(10)		! used for saving the memories

_end:
			ASSERT(HI(.) == HI(ram))

STACK = 0x83FF

	.text
	.org 0				! WHAT'S UP DOC?
start:
	dis
	.byte 0x00

	req

	LDREG(Rpgm, 1f)

	sep Rpgm
1:
	LDREG(Rint, int)
	LDREG(Rstk, STACK)
	LDREG(Rbp,  STACK)
	LDREG(Rcal, calsub)
	LDREG(Rret, retsub)
	LDREG(Rram, ram)
	LDREG(Rptr, ram)
	LDREG(Rtbl, tables)

	sex Rram

	FLIP(WDR)

	ADJUST(Rram, outputs)

#define X(bits) ldi (bits) ; str Rram ; out REG ; inc Rram

						           /* 50/59 */

	X(0b0000)			! 0: vola     vola     vola     SE
#ifdef MD50
	X(0b1100)			! 1: NMIC     NPHI     EAR      TXB     50
#endif
#ifdef MD59
	X(0b0000)			! 1: HSM      PHI      EAR      TXB     59
#endif
#ifdef ME59
	X(0b0000)			! 1: HSM      PHI      EAR      TXB     ME59
#endif
	X(LCD1)				! 2: CS3      CS2      CS1      TXA
#ifdef MD50
	X(0b0010)			! 3: HF       AT1      NRC      VCS     50
#endif
#ifdef MD59
	X(0b0000)			! 3: HF       AT1      OFF1     RC      59
#endif
#ifdef ME59
	X(0b0000)			! 3: HF       ES       NC_1     RSE     ME59
#endif
	X(0b0000)			! 4: EXA      CLK      DP       OFF1/EECS
	X(0b0000)			! 5: CRM      ALO      KV       WDR
	X(0b0000)			! 6: PSC      NPPC/EDI A7/FT    SWE
	X(0b0000)			! 7: A6/VCS   AT2      A4       XM

#undef X

	sex Rpgm
#if XXX
	ret
#else
	dis
#endif
	.byte Rpgm


	FLIP(WDR)

	SET(ALO)

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	bnz 1b
	FLIP(WDR)
1:
	dec Rtmp
	glo Rtmp
	bnz 1b
	FLIP(WDR)
1:
	dec Rtmp
	glo Rtmp
	bnz 1b
	FLIP(WDR)

	CALL(keypad)		! discard

	CLR(ALO)
	FLIP(WDR)

	ADJUST(Rram, _bss)	! zero temporary variables
1:
	ldi 0
	str Rram
	inc Rram
	glo Rram
	smi LO(_end)
	bnz 1b


#ifdef APRS
        CALL(force_aprs)
        ADJUST(Rram, sanitycheck)
        ldi 42
        str Rram
#endif

	ADJUST(Rram, sanitycheck)		! if ram isn't sane - force reset 
	ldn Rram
	smi THEMEANINGOFLIFEUNIVERSEANDEVERYTHING
	lbz 1f

	CALL(force_reset)
	ADJUST(Rram, sanitycheck)
	ldi 42
	str Rram

1:
	LDREG(Rram, ram)

#ifdef CU53
	CALL(marker_on), SEG_T
	CALL(marker_on), SEG_C
#endif

#ifdef CU59
	CALL(marker_on), SEG_r
	CALL(marker_on), SEG_s
	CALL(marker_on), SEG_t
#endif

#ifdef GERMAN
        CALL(marker_on), SEG_D
#endif	

#ifdef STEP125
        CALL(marker_on), SEG_SCAN1
#endif

	FLIP(WDR)
	dec Rstk
	LDREG(Rtmp2, segs_u_digit_5)
	LDREG(Rtmp, version + 0)
	ldn Rtmp
	str Rstk
	FLIP(WDR)
	CALL(drawchr)
	LDREG(Rtmp, version + 2)
	ldn Rtmp
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
	LDREG(Rtmp, version + 3)
	ldn Rtmp
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
	LDREG(Rtmp, version + 4)
	ldn Rtmp
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
	LDREG(Rtmp, verlet + 0)
	ldn Rtmp
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
	LDREG(Rtmp, verlet + 1)
	ldn Rtmp
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	LDREG(Rtmp2, segs_dl_digit_1)

#ifdef ME59

#ifdef X81
			!X81
	ldi 32
	str Rstk
	CALL(drawchr)
	ldi 0x81		
	str Rstk
	CALL(drawhex)
	
#else				
			!X126
	ldi 0x12		
	str Rstk
	CALL(drawhex)
	ldi 6
	str Rstk
	CALL(drawchr)
#endif

#else	
	!/ME59

#ifdef OFFSET_OPTIMUM		
			!X214
	ldi 0x21			
	str Rstk
	CALL(drawhex)
#else    
   !X314
 ldi 0x31   
 str Rstk
 CALL(drawhex)
#endif
 ldi 4
 str Rstk
 CALL(drawchr)
#endif 
 !ME59

 FLIP(WDR)

 LDREG(Rtmp, date - 1)   ! " 980401"
 ldn Rtmp
 str Rstk
 CALL(drawchr)
 LDREG(Rtmp, date + 0)
 ldn Rtmp
 str Rstk
 CALL(drawchr)
 LDREG(Rtmp, date + 1)
 ldn Rtmp
 str Rstk
 CALL(drawchr)
 LDREG(Rtmp, date + 2)
 ldn Rtmp
 str Rstk
 CALL(drawchr)
 LDREG(Rtmp, date + 3)
 ldn Rtmp
 str Rstk
 CALL(drawchr)
 LDREG(Rtmp, date + 4)
 ldn Rtmp
 str Rstk
 CALL(drawchr)
 LDREG(Rtmp, date + 5)
 ldn Rtmp
 str Rstk
 CALL(drawchr)
 
 inc Rstk

 LIT(BIT_LCDLIGHT)
 LIT(BIT_KEYLIGHT)

	CALL(display)

	FLIP(WDR)

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before touching synthesizer

	FLIP(WDR)

#ifdef ME59
	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! ME's clock runs a little bit faster

	FLIP(WDR)
#endif

	CALL(input_register)
	CALL(input_register)	! Flush

#ifdef ME59
	LDREG(Rtmp, afc_ctrl)
	ldi 0x7F
	str Rtmp
#endif

#ifdef NOHIPOWER
	ADJUST(Rram, txpower)
	ldn Rram
	ani 3
	smi 3			! if NOHIPOWER and txpower=3 -> txpower=0
	lbnz 2f
	ldi 0
	str Rram
2:
#endif

	/*CALL(marker_on), SEG_C*/
hearing:
	!
	!  Set hearing path and corresponding indicators
	!
	ADJUST(Rram, sq_forced)
	ldn Rram
	lbz 1f
	CALL(marker_on), SEG_N
	ADJUST(Rram, volume)
	ldn Rram
	lbz 2f		! Volume 0, no audio
	smi 1
	lbz 3f		! Volume 1, only earphone
	SET(HF)
3:
	SET(EAR)
	br 2f
1:
	CALL(marker_off), SEG_N
2:

	ADJUST(Rram, indicators)
	ldi MASK(BIT_LCDLIGHT) | MASK(BIT_KEYLIGHT)
	str Rram

	ADJUST(Rram, lighttimer + 1)
	ldi 10
	str Rram

	FLIP(WDR)

				! NWQ @ boot set scan_num = -1, scan_which = SC_MEMORY

	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	FLIP(WDR)

	ADJUST(Rram, debug + 0)		! NWQ load debug info with zeros
	ldi '0'
	str Rram
	inc Rram	!debug + 1
	str Rram
	inc Rram	!debug + 2
	str Rram
	inc Rram	!debug + 3
	str Rram
	inc Rram	!debug + 4
	str Rram
	FLIP(WDR)
	ldi ' '
	inc Rram	!debug + 5
	str Rram
	inc Rram	!debug + 6
	str Rram
	inc Rram	!debug + 7
	str Rram
	inc Rram	!debug + 8
	str Rram
	inc Rram	!debug + 9
	str Rram
	FLIP(WDR)
				! NWQ
	dec Rstk
	LDREG(Rtmp2, segs_u_digit_5)	! blank the screen
	LDREG(Rtmp, version + 5)
	ldn Rtmp
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	FLIP(WDR)

	CALL(display)			!added for PIN query

#ifdef GERMAN
	CALL(marker_off), SEG_D	
#endif	

#ifdef PIN
	LDREG(Rtmp2, segs_dl_digit_1)
	ldi 'P'
	str Rstk
	CALL(drawchr)
	ldi 'i'
	str Rstk
	CALL(drawchr)
	ldi 'n'
	str Rstk
	FLIP(WDR)
	CALL(drawchr)
	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)

	CALL(display)

1:				

	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 9f
	lbr shutdown
9:	
	CALL(keypad)
	ADJUST(Rram, key)
	
	ldn Rram
	smi PIN_1		!PIN 1st
	lbz 2f

	ldn Rram
	smi 1
	lbz 6f

	ldn Rram
	smi 2
	lbz 6f

	ldn Rram
	smi 3
	lbz 6f

	ldn Rram
	smi 4
	lbz 6f

	ldn Rram
	smi 5
	lbz 6f

	ldn Rram
	smi 6
	lbz 6f

	ldn Rram
	smi 7
	lbz 6f

	ldn Rram
	smi 8
	lbz 6f

	ldn Rram
	smi 9
	lbz 6f

	ldn Rram
	smi 0
	lbz 6f

	lbr 1b

2:
	CALL(waitkey)
	FLIP(WDR)
	LDREG(Rtmp2, segs_dl_digit_1)
	ldi 'P'
	str Rstk
	CALL(drawchr)
	ldi 'i'
	str Rstk
	CALL(drawchr)
	ldi 'n'
	str Rstk
	CALL(drawchr)
	ldi ' '
	str Rstk
	CALL(drawchr)
	ldi '-'
	str Rstk
	CALL(drawchr)
	CALL(display) 

1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 9f
	lbr shutdown
9:	

	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi PIN_2		!PIN 2nd
	lbz 3f
	
	ldn Rram
	smi 1
	lbz 7f

	ldn Rram
	smi 2
	lbz 7f

	ldn Rram
	smi 3
	lbz 7f

	ldn Rram
	smi 4
	lbz 7f

	ldn Rram
	smi 5
	lbz 7f

	ldn Rram
	smi 6
	lbz 7f

	ldn Rram
	smi 7
	lbz 7f

	ldn Rram
	smi 8
	lbz 7f

	ldn Rram
	smi 9
	lbz 7f

	ldn Rram
	smi 0
	lbz 7f

	lbr 1b

3:
	CALL(waitkey)
	FLIP(WDR)
	ldi '-'
	str Rstk
	CALL(drawchr)
	CALL(display) 

1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 9f
	lbr shutdown
9:	

	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi PIN_3		!PIN 3rd
	lbz 4f

	ldn Rram
	smi 1
	lbz 8f

	ldn Rram
	smi 2
	lbz 8f

	ldn Rram
	smi 3
	lbz 8f

	ldn Rram
	smi 4
	lbz 8f

	ldn Rram
	smi 5
	lbz 8f

	ldn Rram
	smi 6
	lbz 8f

	ldn Rram
	smi 7
	lbz 8f

	ldn Rram
	smi 8
	lbz 8f

	ldn Rram
	smi 9
	lbz 8f

	ldn Rram
	smi 0
	lbz 8f

	lbr 1b

4:
	CALL(waitkey)
	FLIP(WDR)
	ldi '-'
	str Rstk
	CALL(drawchr)
	CALL(display) 

1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 9f
	lbr shutdown
9:	

	CALL(keypad)
	ADJUST(Rram, key)
	
	ldn Rram
	smi PIN_4		!PIN 4th
	lbz 5f

	ldn Rram
	smi 1
	lbz 9f

	ldn Rram
	smi 2
	lbz 9f

	ldn Rram
	smi 3
	lbz 9f

	ldn Rram
	smi 4
	lbz 9f

	ldn Rram
	smi 5
	lbz 9f

	ldn Rram
	smi 6
	lbz 9f

	ldn Rram
	smi 7
	lbz 9f

	ldn Rram
	smi 8
	lbz 9f

	ldn Rram
	smi 9
	lbz 9f

	ldn Rram
	smi 0
	lbz 9f

	lbr 1b

5:
	CALL(waitkey)
	FLIP(WDR)
	ldi '-'
	str Rstk
	CALL(drawchr)
	CALL(display)

	CLR(ALO)
	lbr pin_ok

	! error handling: pin code

6:
	CALL(waitkey)
	FLIP(WDR)
	LDREG(Rtmp2, segs_dl_digit_1)
	ldi 'P'
	str Rstk
	CALL(drawchr)
	ldi 'i'
	str Rstk
	CALL(drawchr)
	ldi 'n'
	str Rstk
	CALL(drawchr)
	ldi ' '
	str Rstk
	CALL(drawchr)
	ldi '-'
	str Rstk
	CALL(drawchr)
	CALL(display) 

1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	

	CALL(keypad)
	ADJUST(Rram, key)
	
	ldn Rram
	smi 1
	lbz 7f

	ldn Rram
	smi 2
	lbz 7f

	ldn Rram
	smi 3
	lbz 7f
	
	ldn Rram
	smi 4
	lbz 7f
	
	ldn Rram
	smi 5
	lbz 7f
	
	ldn Rram
	smi 6
	lbz 7f
	
	ldn Rram
	smi 7
	lbz 7f
	
	ldn Rram
	smi 8
	lbz 7f
	
	ldn Rram
	smi 9
	lbz 7f
	
	ldn Rram
	smi 0
	lbz 7f
	
	lbr 1b
	
7:
	CALL(waitkey)
	FLIP(WDR)

	ldi '-'
	str Rstk
	CALL(drawchr)
	CALL(display) 

1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	

	CALL(keypad)
	ADJUST(Rram, key)
	
	ldn Rram
	smi 1
	lbz 8f

	ldn Rram
	smi 2
	lbz 8f

	ldn Rram
	smi 3
	lbz 8f
	
	ldn Rram
	smi 4
	lbz 8f
	
	ldn Rram
	smi 5
	lbz 8f
	
	ldn Rram
	smi 6
	lbz 8f
	
	ldn Rram
	smi 7
	lbz 8f
	
	ldn Rram
	smi 8
	lbz 8f
	
	ldn Rram
	smi 9
	lbz 8f
	
	ldn Rram
	smi 0
	lbz 8f
	
	lbr 1b
	
8:
	CALL(waitkey)
	FLIP(WDR)

	ldi '-'
	str Rstk
	CALL(drawchr)
	CALL(display) 

1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	

	CALL(keypad)
	ADJUST(Rram, key)
	
	ldn Rram
	smi 1
	lbz 9f

	ldn Rram
	smi 2
	lbz 9f

	ldn Rram
	smi 3
	lbz 9f
	
	ldn Rram
	smi 4
	lbz 9f
	
	ldn Rram
	smi 5
	lbz 9f
	
	ldn Rram
	smi 6
	lbz 9f
	
	ldn Rram
	smi 7
	lbz 9f
	
	ldn Rram
	smi 8
	lbz 9f
	
	ldn Rram
	smi 9
	lbz 9f
	
	ldn Rram
	smi 0
	lbz 9f
	
	lbr 1b

9:
	CALL(waitkey)
	FLIP(WDR)

	ldi '-'
	str Rstk
	CALL(drawchr)
	CALL(display) 

	lbr shutdown
#endif

	inc Rstk		! 2.123

pin_ok:
#ifdef CU59
	CALL(input_register)	!NWQ
	glo Rtmp
	ani OFFHOOK
	lbz 1f

	CALL(set_offhook)	! 	is off hook
	CALL(show_offhook)
	CALL(display)
	lbr 2f
1:
	CALL(set_onhook)
	CALL(show_onhook)	!	is on hook
2:
#endif

	FLIP(WDR)

	CALL(copy_skip_info)	! SAVESKIP bit -> MEMOSKIP bit
		
#ifdef REPEATER
	! you must use simplex channel
	! as the TX VCO is already repeater offset apart from rx

	! repeater off
	ADJUST(Rram, rptr)
	ldi 0
	str Rram
	
	! reverse repeater on
	ADJUST(Rram, rptr_pos)
	ldi 0
	str Rram
	
	! 7.6 off
	ADJUST(Rram, rptr_76)
	ldi 0
	str Rram
	
	!scanner off
	ADJUST(Rram, scan_mode)
	ldi 0
	str Rram
	
#endif	
	!REPEATER

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(show_rejects)
	CALL(dovola), 0
	
	FLIP(WDR)

	CALL(rxsynth), 0
	TXS_OFF
	CALL(rxsynth), 0
	TXS_OFF
	

	FLIP(WDR)

	CALL(drawfreq), 0
	CALL(chkmdm)


#ifdef STEP125
        CALL(marker_off), SEG_SCAN1
#endif

#ifdef NOHANDSET
	ADJUST(Rram, scan_mode)
	ldi 0
	str Rram

	CALL(go_memory_0)
#endif	

#ifdef APRS
        ADJUST(Rram, scan_mode)
        ldi 0
        str Rram

        CALL(go_memory_0)
#endif

	CALL(display)

	lbr top

!-------------------------------

copy_skip_info:
	ADJUST(Rram, mode_0)
	ldn Rram
	ani ~MEMOSKIP
	str Rram

	ADJUST(Rram, mode_0)
	ldn Rram
	ani SAVESKIP
	lbz 1f

	ADJUST(Rram, mode_0)
	ldn Rram
	ori MEMOSKIP
	str Rram
1:
!	
	ADJUST(Rram, mode_1)
	CALL(save2memo)
	ADJUST(Rram, mode_2)
	CALL(save2memo)
	ADJUST(Rram, mode_3)
	CALL(save2memo)
	ADJUST(Rram, mode_4)
	CALL(save2memo)
	FLIP(WDR)
	ADJUST(Rram, mode_5)
	CALL(save2memo)
	ADJUST(Rram, mode_6)
	CALL(save2memo)
	ADJUST(Rram, mode_7)
	CALL(save2memo)
	ADJUST(Rram, mode_8)
	CALL(save2memo)
	ADJUST(Rram, mode_9)
	CALL(save2memo)
	FLIP(WDR)
	RETURN
	
save2memo:	
	ldn Rram
	ani ~MEMOSKIP
	str Rram

	ldn Rram
	ani SAVESKIP
	lbz 1f

	ldn Rram
	ori MEMOSKIP
	str Rram
1:
	RETURN


upd_rptr_icons:
	FLIP(WDR)
					! NWQ new in 1.83
	ADJUST(Rram, scan_rep)
	ldn Rram
	lbz 1f
	
	CALL(marker_on), SEG_SCANREP
	lbr 2f
1:
	CALL(marker_off), SEG_SCANREP
2:
	ADJUST(Rram, scan_mem)
	ldn Rram
	lbz 1f
	
	CALL(marker_on), SEG_SCANMEM
	lbr 2f
1:
	CALL(marker_off), SEG_SCANMEM
2:

	ADJUST(Rram, scan_simp)
	ldn Rram
	lbz 1f
	
	CALL(marker_on), SEG_SCANSIMP
	lbr 2f
1:
	CALL(marker_off), SEG_SCANSIMP
2:
	ADJUST(Rram, lights_on)
	ldn Rram
	lbz 1f
	
	CALL(marker_on), SEG_LIGHTS_ON
	lbr 2f
1:
	CALL(marker_off), SEG_LIGHTS_ON
2:

					! 
	FLIP(WDR)
	ADJUST(Rram, rptr)
	ldn Rram
	lbz 3f

	CALL(marker_off), SEG_S
	CALL(marker_on), SEG_D

	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f
	
	CALL(marker_on), SEG_POSREP
	lbr 2f
1:
	CALL(marker_off), SEG_POSREP
2:
	ADJUST(Rram, rptr_76)
	ldn Rram
	lbz 4f
	CALL(marker_on), SEG_LESS
	lbr 5f
3:
	CALL(marker_on), SEG_S
	CALL(marker_off), SEG_D
	CALL(marker_off), SEG_POSREP

4:
	CALL(marker_off), SEG_LESS

5:
	RETURN

					!.align 8
dovola:
	ADJUST(Rram, volume)
	lda Rarg
	sex Rram
	add
	smi -1
	lsnz ; ldi 1
	adi -1
	smi 10
	lsnf ; ldi -1
	adi 10
	str Rram
	phi Rtmp

	CLR(HF)
	CLR(EAR)

	ghi Rtmp
	smi 2
	plo Rtmp
	lbdf 2f		! if 2 or more
	ldi 0
	plo Rtmp	! VOLBITS 0 if volume 0 or 1.
	ghi Rtmp
	lbnz 1f		! if not 0, thus 1
	!
	!  Setting 0
	!
	lbr 3f
1:
	!
	!  Setting 1
	!
	ADJUST(Rram, sq_forced)
	ldn Rram
	lbz 3f
	SET(EAR)
	lbr 3f
2:
	!
	!  Settings 2...
	!
	ADJUST(Rram, sq_forced)
	ldn Rram
	lbz 3f
	SET(HF)
	SET(EAR)
3:

	ADJUST(Rram, volareg)
	glo Rtmp
	ani 7
	shl
	str Rram
	sex Rram
	out REG

	LDREG(Rtmp2, segs_u_digit_5)
	ghi Rtmp
	adi '0'
	dec Rstk
	str Rstk
	CALL(drawchr)
	inc Rstk

#ifndef ME59
	ADJUST(Rram, car)
	ldi 0
	str Rram			! zero carrier counter for recounting up
#endif

	RETURN

	!.align 8

1:
	sep Rpgm
calsub:
	glo Rbp
	dec Rstk
	str Rstk

	glo Rstk
	plo Rbp
	inc Rbp

	ghi Rarg
	dec Rstk
	str Rstk
	glo Rarg
	dec Rstk
	str Rstk

	ghi Rpgm
	phi Rarg
	glo Rpgm
	plo Rarg

	lda Rarg
	plo Rpgm
	lda Rarg
	phi Rpgm

	lbr 1b

1:
	sep Rpgm
retsub:
	ghi Rarg
	phi Rpgm
	glo Rarg
	plo Rpgm

	lda Rstk
	plo Rarg
	lda Rstk
	phi Rarg

	lda Rstk
	plo Rbp

	lbr 1b

!----------------------------------------------------------------------
!
!  Loop here until auxiliary ptt is released
!
wait_aux_ptt:
1:
	FLIP(WDR)

	CALL(input_register)

	glo Rtmp
	ani AUXPTT
	lbnz 1b

	RETURN

!----------------------------------------------------------------------
! 
! CW id for the repeater
!

cw_dot:
	SET(ALO)
	CALL(display)
	CLR(ALO)
	CALL(display)
	RETURN

cw_dash:
	SET(ALO)
	CALL(display)
	SET(ALO)
	CALL(display)
	SET(ALO)
	CALL(display)
	CLR(ALO)
	CALL(display)
	RETURN

cw_pause:
	CLR(ALO)
	CALL(display)
	CLR(ALO)
	CALL(display)
	RETURN

do_oh3nwq:
!	CW_Q
!	CW_R
! 	CW_Z
!	CW_PAUSE
!
	CW_D
	CW_E
        CW_PAUSE

	CW_O
	CW_H
	CW_3
	CW_N
	CW_W
	CW_Q
!	CW_Slash
!	CW_R
!	CW_PAUSE

	RETURN

do_oh3mck:

!	CW_D
	CW_E
!       CW_PAUSE

!	CW_O
!	CW_H
!	CW_3
!	CW_M
!	CW_C
!	CW_K

	RETURN



	.align 8


!----------------------------------------------------------------------
!
!  Main commutator start
!
top:
	FLIP(WDR)

	ADJUST(Rram, scan_mode)
	ldn Rram
	lbz 1f
	FLIP(WDR)
	CALL(scanner_run)
1:
	CALL(chkmdm)

	/*idl*/

	!
	!  Look into input shift register
	!

	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 1f
	lbr shutdown
1:
#ifdef DUALRIG
	glo Rtmp 	! nxo 2.20r7
 	ani SUSPENDED 	! nxo 2.20r7
 	lbnz 1f 	! nxo 2.20r7
#endif
	b3 1f			! DA is routed to /EF3 when PL is on
	CALL(keypad)
	CALL(dokey)
	CALL(display)
	CALL(waitkey)
	lbr top
1:
	CALL(input_register)

#ifdef CU59
	glo Rtmp
	ani OFFHOOK
	lbz 1f

	ADJUST(Rram, onhook)
	ldn Rram
	lbz 2f				! NWQ was offhook last time

	ADJUST(Rram, lighttimer + 1)
	ldi 5
	str Rram

	LIT(BIT_LCDLIGHT)
	LIT(BIT_KEYLIGHT)
	CALL(set_offhook)
	CALL(show_offhook)
	CALL(display)
	lbr 2f
1:
	CALL(set_onhook)
	CALL(show_onhook)
!	is onhook
2:
#endif

	glo Rtmp
	ani LOWBATT
	lbz 1f
	CLR(ALO)
	CALL(show_lowbatt)	! shown until powerdown/88#

1:
	glo Rtmp
	ani AUXPTT
	lbz 1f
	CLR(ALO)
	CALL(txon)
	CALL(wait_aux_ptt)
	CALL(txoff)
	lbr top

1:	
	!
	!  Dim lights after some delay, iff portable 
	!
	
	ADJUST(Rram, lights_on)		! NWQ - not if lights permanently on...
	ldn Rram
	lbnz 1f				
	
	glo Rtmp
	ani PORTABLE
	lbz 1f
	
	ADJUST(Rram, lighttimer)
	ldn Rram
	smi 1
	str Rram
	lbnz 1f
	inc Rram
	ldn Rram
	smi 1
	str Rram
	lbnz 1f
	ldi 10
	str Rram
	FLIP(WDR)
	! glo Rtmp
	! ani PORTABLE
	! lbz 1f
	DIM(BIT_LCDLIGHT)
	DIM(BIT_KEYLIGHT)
	CALL(display)
1:
	lbr top
	

chkmdm:

	FLIP(WDR)

	ADJUST(Rram, mdm_stat)
	sex Rram
	inp MDM			! Read status register

#ifdef ME59
	! RSSI squelch from ADC

	! 150 usec should be plenty for ADC0809 with 600kHz CLK from TPB
	! one cycle takes 1.67 usec
	! Below very conservative...

	dec Rstk			! Scratch

	LDREG(Rtmp, ad_rssi)
	ldi 255		! Delay loop constant
	str Rtmp	! Start conversion (value not important)
1:
	smi 1
	lbnz 1b
	ldn Rtmp	! Get result
	str Rstk

	smi 70
	lbnf 1f		! No DF = borrow = RSSI below 70
	ldn Rstk
	smi 80
	lbdf 2f		! DF = no borrow = RSSI above 80

	lbr 3f		! In the middle...
1:
	DIM(BIT_SERV)

#ifdef 	REPEATER
	ADJUST(Rram, sq_state)
	ldn Rram
	lbz 1f

	CALL(do_oh3mck)

	ADJUST(Rram, sq_state)
	ldi 0
	str Rram

	CALL(txoff)
1:
#endif	

	ADJUST(Rram, sq_forced)
	ldn Rram
	lbnz 3f		! Squelch pinned open, dont cut audio
	CLR(EAR)
	CLR(HF)
	lbr 3f
2:
	LIT(BIT_SERV)
	
#ifdef 	REPEATER
	ADJUST(Rram, sq_state)
	ldn Rram
	lbnz 1f
	
	CALL(txon)
	
	ADJUST(Rram, sq_state)
	ldi 1
	str Rram
1:	
#endif

	ADJUST(Rram, volume)
	ldn Rram
	lbz 3f		! Volume 0, no audio
	smi 1
	lbz 1f		! Volume 1, only earphone
	SET(HF)
1:
	SET(EAR)
3:
	! Funny way to calculate srssi...

	FLIP(WDR)

	ADJUST(Rram, carbuf)
	ADJUST(Rptr, carbuf + 1)
	lda Rptr; str Rram; inc Rram	! 0++ = 1++
	lda Rptr; str Rram; inc Rram	! 1++ = 2++
	ldn Rptr; str Rram		! 2   = 3
	ldn Rstk; str Rptr		! 3   = current

	ldi 0
	plo Rtmp
	ldn Rptr
	sex Rram
	add			! 3 + 2
	lbnf 1f
	inc Rtmp
1:
	dec Rram
	add			! 3 + 2 + 1
	lbnf 1f
	inc Rtmp
1:
	dec Rram
	add			! 3 + 2 + 1 + 0
	lbnf 1f
	inc Rtmp
1:
	phi Rtmp		! bits 7..0

	glo Rtmp		! bits 9..8
	shr			! sum8 to DF
	plo Rtmp
	ghi Rtmp
	shrc			! sum0 lost, D has sum8..sum1
	phi Rtmp 		! 8..1
	glo Rtmp
	shr			! sum9 to DF
	ghi Rtmp
	shrc			! sum1 lost, sum9..sum2 in position

	str Rstk		! Replace rssi with srssi

	ldi HI(div99tbl)
	phi Rtmp
	ldn Rstk
	plo Rtmp
	ldn Rtmp		! sig = tbl[srssi]
	str Rstk		! Replace srssi with "sig"
	ADJUST(Rram, car)
	sex Rram
	ldn Rstk
	sm
	lbz 1f			! Same as old
	str Rram
	LDREG(Rtmp2, segs_u_digit_1)
	CALL(drawhex)		! sig arg in stack
	CALL(display)
1:

	inc Rstk		! Dispose scratch

#else /* MD squelch */

	ani MDMSQ
	lbz 9f
	!
	!  SQ on
	!
	ADJUST(Rram, indicators)
	ldn Rram
	ani MASK(BIT_SERV)
	lbnz 1f
	LIT(BIT_SERV)		! repaint with SERV
#ifdef 	REPEATER
	CALL(txon)
#endif
	CALL(display)
1:
	ADJUST(Rram, car)	! Gate open.
	ldn Rram
	adi 1
	lsnz; smi 1		! Clamp at 0xFF
	str Rram
	smi 2			! XXX 150
	lbnz 3f			! Accept after so many rounds.
	ADJUST(Rram, volume)
	ldn Rram
	lbz 2f			! Volume 0, silent
	smi 1
	lbz 1f
	SET(HF)
1:
	SET(EAR)
	lbr 3f
	!
	!  SQ off
	!
9:
	ADJUST(Rram, indicators)
	ldn Rram
	ani MASK(BIT_SERV)
	lbz 1f				! Do not need repaint ?
	DIM(BIT_SERV)
#ifdef 	REPEATER
	CALL(txoff)
#endif
	CALL(display)
1:
	ADJUST(Rram, car)
	ldi 0
	str Rram
	ADJUST(Rram, sq_forced)
	ldn Rram
	lbnz 3f
2:
	CLR(EAR)			! Gate closed. Close audio.
	CLR(HF)
3:
#endif /* MD squelch  */

	FLIP(WDR)

#if 0
	ld status
	dec Rstk
	str Rstk
	LDREG(Rtmp2, segs_u_digit_3)
	CALL(drawhex)
	inc Rstk
	CALL(display)
#endif

	RETURN


#ifdef EASY_BEEP
easybeep:

	ADJUST(Rram, rptr)
	ldn Rram
	lbz 1f

	ADJUST(Rram, indicators)
	ldn Rram
	ani MASK(BIT_SERV)
	lbz 2f				 
	
1:
	CLR(ALO)		! Not on repeater 
	CALL(scanner_stop)	! or squelch open on rptr
	CALL(txon)
	CALL(waitkey)
	CALL(txoff)
	RETURN
2:
	CLR(ALO)		! repeater_beep
	CALL(scanner_stop)	!
	LIT(BIT_CALL)		! NWQ
	CALL(txon)		! xmit on
	CALL(waitkeybeep)	! beep until released
    	DIM(BIT_CALL)		! NWQ
	CALL(txoff)
	RETURN
#endif


txon:
	FLIP(WDR)

#ifndef REPEATER
	CLR(EAR)
	CLR(HF)
	CLR(VOLMSK)
#endif

	CALL(txsynth)			! Rptr offset and TX offset

	ADJUST(Rram, real_txchan)
	lda Rram
	plo Rtmp3
	ldn Rram
	phi Rtmp3

	DOSUB(Rtmp3, BAND_START)
	lbnf txillegal

	DOSUB(Rtmp3, BAND_END - BAND_START)
	lbdf txillegal

	TXS_ON
	AT_ON
	MIC_ON

	CLR(TXA)
	CLR(TXB)

	SET(XM)

	ADJUST(Rram, txpower)
	ldn Rram
	ani 1
	lbz 1f
	SET(TXB)
1:
	ADJUST(Rram, txpower)
	ldn Rram
	ani 2
	lbz 1f
	SET(TXA)
1:
	ADJUST(Rram, rptr)
	ldn Rram
	lbz 1f
	CALL(drawfreq), -1		! Show TX frequency
1:
	LIT(BIT_ROAM)
	DIM(BIT_SERV)

	CALL(display)
	RETURN
	

txoff:
	FLIP(WDR)

	CLR(XM)
	CLR(TXA)
	CLR(TXB)

	MIC_OFF

	DIM(BIT_ROAM)
	CALL(display)		! Just delay

	TXS_OFF
	AT_OFF

#ifndef ME59
	ADJUST(Rram, car)
	ldi 0
	str Rram		! zero carrier counter for recounting up
#endif
	ADJUST(Rram, sq_forced)
	ldn Rram
	lbz 1f			! Go if NOT forced open
	ADJUST(Rram, volume)
	ldn Rram
	lbz 1f			! Go if volume setting 0 disables all audio
	smi 1
	lbz 2f			! Go if volume setting 1 disables speaker
	SET(HF)
2:
	SET(EAR)
1:
	ADJUST(Rram, rptr)
	ldn Rram
	lbz 1f
	CALL(drawfreq), 0	! Show RX frequency
1:
#ifdef OFFSET_OPTIMUM
	!
	!  frequency change is not necessary with 21.4 offset xtal
	!  when working simplex
	!
	ADJUST(Rram, rptr)
	ldn Rram
	lbz 1f
#endif

	CALL(rxsynth), 0	! Undo rptr offset and TX offset
1:
	CALL(dovola), 0

	CALL(display)
	RETURN

chanstep:

	FLIP(WDR)

	ADJUST(Rram, channel)
	lda Rram
	plo Rtmp2
	ldn Rram
	phi Rtmp2

	lda Rarg
	smi 1
	lbz 1f
	dec Rtmp2

#ifdef DOUBLESTEP		
				!NWQ DOUBLESTEP/STEP125
	glo Rtmp2
	ani ~1		! 2 -> 0, 1 -> 0
	plo Rtmp2
#endif
	lbr 2f
1:
	inc Rtmp2

#ifdef DOUBLESTEP		
				!NWQ DOUBLESTEP/STEP125
	inc Rtmp2
	glo Rtmp2
	ani ~1		! 0 -> 2, 1 -> 2
	plo Rtmp2
#endif

2:
	ghi Rtmp2
	str Rram
	dec Rram
	glo Rtmp2
	str Rram		! channel variable updated

	RETURN

	!.align 8
/*
 *  Update synthesizer.
 */

txsynth:

	ADJUST(Rram, channel)
	lda Rram
	plo Rtmp3
	ldn Rram
	phi Rtmp3

	ADJUST(Rptr, rptr)
	ldn Rptr
	lbz 3f
	
	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f
	DOADD(Rtmp3, RPTR_SUB)
	lbr 2f
1:	
	DOSUB(Rtmp3, RPTR_SUB)
2:
	ADJUST(Rram, rptr_76)
	ldn Rram
	lbz 3f

	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f

	DOADD(Rtmp3, RPTR_SUB76)
	lbr 3f
1:	
	DOSUB(Rtmp3, RPTR_SUB76)

3:
	ADJUST(Rram, real_txchan)
	glo Rtmp3
	str Rram
	inc Rram
	ghi Rtmp3
	str Rram

! NWQ #ifndef ME59 
#ifdef OFFSET_OPTIMUM
	!
	!  frequency change is not necessary with 21.4 offset xtal
	!  when working simplex
	!
	ADJUST(Rram, rptr)
	ldn Rram
	lbnz 1f

	RETURN
1:
#else
	!
	!  Shift VCO by the NMT-offset
	!  original 31.401 xtal...or 126 offset vco NWQ
	!
#ifdef ME59
	DOSUB(Rtmp3, TX_OFFSET)		! sub 45M in ME			!2.044
#else
	DOADD(Rtmp3, TX_OFFSET)		! add 10M in MD
#endif

#endif
! NWQ #endif

	lbr xxsynth_continue

rxsynth:

	ADJUST(Rram, channel)
	lda Rram
	plo Rtmp3
	ldn Rram
	phi Rtmp3

	lda Rarg	! argument	
	lbz 4f		! 0
	smi -1
	lbz 3f		! -1

! argument = +1: positive shift

	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f

	DOSUB(Rtmp3, RPTR_SUB)
	lbr 2f
1:
	DOADD(Rtmp3, RPTR_SUB)
2:
	ADJUST(Rram, rptr_76)
	ldn Rram
	lbz 4f

	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f

	DOSUB(Rtmp3, RPTR_SUB76)
	lbr 2f
1:
	DOADD(Rtmp3, RPTR_SUB76)
2:
	lbr 4f

! argument = -1: negative shift
3:
	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f
	DOADD(Rtmp3, RPTR_SUB)
	lbr 2f
1:
	DOSUB(Rtmp3, RPTR_SUB)
2:
	ADJUST(Rram, rptr_76)
	ldn Rram
	lbz 4f
	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f
	DOADD(Rtmp3, RPTR_SUB76)
	lbr 4f
1:
	DOSUB(Rtmp3, RPTR_SUB76)

! argument = 0: no shift - or the shift already done	
4:

xxsynth_continue:

	FLIP(WDR)

#ifdef ME59
	!
	!  Simpler with 128/129 prescaler
	!
	DOADD(Rtmp3, BASEDIV & 0xFFFF)

#else
	!
	!  Calculate N & A to Rtmp2 & Rtmp3
	!  Max 50 loops from 4000 channels divided by 80
	!
	ldi 0		! 2.01
	phi Rtmp2	! 2.01
	ldi -1
	plo Rtmp2

1:
	inc Rtmp2
	DOSUB(Rtmp3, PRESCALER)
	lbdf 1b
				! add one PRESCALER after underflow
	DOADD(Rtmp3, PRESCALER)	! Now ChannelN in Rtmp2, ChannelA in Rtmp3

	glo Rtmp3
	adi BASEDIV_A		! Add BaseA of 400.000MHz
	plo Rtmp3
	smi PRESCALER
	lbnf 1f			! go if final A did not overflow
	plo Rtmp3		! Fix % 80, DF set
1:


#ifdef STEP125
					! NWQ
	glo Rtmp2                       
	adci LO(BASEDIV_N & 0x00FF)
	plo Rtmp2			! Total N from BaseN + ChannelN plus possible carry
 ghi Rtmp2                       
 adci HI(BASEDIV_N & 0x0100) ! max freq limited to 490.875 (including offset) 
 phi Rtmp2   ! Need 9 bits to store max N of 511, MSb 0 always
#else
 glo Rtmp2                       
 adci LO(BASEDIV_N)
 plo Rtmp2   ! Total N from BaseN + ChannelN plus possible carry
 ldi 0
 adci 0
 phi Rtmp2   ! Need 9 bits to store max N of 260, MSb 0 always
#endif 
 !STEP125

#endif 
 !not ME59

 ADJUST(Rram, swereg)

 dec Rstk   ! scratch to "write" to

 sex Rpgm
 dis
 .byte Rpgm

 sex Rram

 lda Rram ! Get swereg mirror
 str Rram ! Save double mirror, no SWE here
 dec Rram ! Back over reg
 ori iSWE
 str Rram ! Set SWE in reg
 out REG  ! Rram is used after data written, below !!!!

#ifdef ME59

 !
 ! Synth data comes from D0, very awkward.
 !
 ! MSbit of NP + A always 1, NP + A approx 0x1????
 !
#ifdef USA
 ASSERT((BASEDIV & ~0xFFFF) == 0)
#else
 ASSERT((BASEDIV & ~0xFFFF) == 0x10000)
#endif


	! RX PLL switches kept high (open collector)

	ldi ~1		! /SW1 Inverted
	str Rstk	! /SW1
	ldi ~1		! /SW2 Inverted
	str Rstk	! /SW2

#ifdef USA
	ldi ~0		! /b16  Inverted
	str Rstk	!
#else
	ldi ~1		! /b16  Inverted
	str Rstk	!
#endif
			!   Accu   DF

	ghi Rtmp3	! 76543210 -  Get b15...b8
	xri 0xFF	!             Control is inverted
	shlc		! 6543210- 7
	shlc		! 543210-7 6
	str Rstk	! b15
	shlc		! 43210-76 5
	str Rstk	! b14
	shlc		! 3210-765 4
	str Rstk	! b13
	shlc		! 210-7654 3
	str Rstk	! b12
	shlc		! 10-76543 2
	str Rstk	! b11
	shlc		! 0-765432 1
	str Rstk	! b10
	shlc		! -7654321 0
	str Rstk	! b9
	shlc		! 76543210 -
	str Rstk	! b8

	glo Rtmp3	! 76543210 -  Get b7..b0
	xri 0xFF	!             Control is inverted
	shlc		! 6543210- 7
	shlc		! 543210-7 6
	str Rstk	! b7
	shlc		! 43210-76 5
	str Rstk	! b6
	shlc		! 3210-765 4
	str Rstk	! b5
	shlc		! 210-7654 3
	str Rstk	! b4
	shlc		! 10-76543 2
	str Rstk	! b3
	shlc		! 0-765432 1
	str Rstk	! b2
	shlc		! -7654321 0
	str Rstk	! b1
	shlc		! 76543210 -
	str Rstk	! b0

#else /* not ME, but MD5x way */

	!
	!  Synth data from D7
	!
#ifdef STEP125
	ASSERT(BASEDIV_N == 421)	! 01 1010 0101
#else
	ASSERT(BASEDIV_N == 210)	! 00 1101 0010
#endif	
					! 98 7654 3210


	ldi ~0x80	! /SW1 Inverted
	str Rstk	! /SW1
	ldi ~0x80	! /SW2 Inverted
	str Rstk	! /SW2

	ldi ~0
	str Rstk	! N9 always 0

	ghi Rtmp2
	xri 0xFF
	str Rstk	! N8


	glo Rtmp2
	xri 0xFF
	str Rstk	! N7
	shl
	str Rstk	! N6
	shl
	str Rstk	! N5
	shl
	str Rstk	! N4
	shl
	str Rstk	! N3
	shl
	str Rstk	! N2
	shl
	str Rstk	! N1
	shl
	str Rstk	! N0

	glo Rtmp3
	xri 0xFF
	shl		! (A7 ignored)
	str Rstk	! A6
	shl
	str Rstk	! A5
	shl
	str Rstk	! A4
	shl
	str Rstk	! A3
	shl
	str Rstk	! A2
	shl
	str Rstk	! A1
	shl
	str Rstk	! A0

#endif /* MD5x way */

	out REG		! From Rram, SWE is clear here
	dec Rram
	ldn Rram
	dec Rram
	str Rram

	sex Rpgm
#if XXX
	ret
#else
	dis
#endif
	.byte Rpgm

#ifdef ME59
	PULSE(RSE)
#else
	PULSE(SE)
#endif

	inc Rstk

	FLIP(WDR)

	RETURN

	!.align 8


drawfreq:

	LDREG(Rtmp2, memories)
	ldi 0
	plo Rtbl
	plo Rtmp
1:
	FLIP(WDR)
	ADJUST(Rram, channel)
	sex Rram
	lda Rtmp2
	sm
	lbnz 2f
	inc Rram
	ldn Rtmp2
	sm
	lbz 3f
2:
	inc Rtbl		! Ones of "memory"
	glo Rtbl
	smi 10
	lbnz 2f
	plo Rtbl
	inc Rtmp		! Tens of "memory"
2:
	inc Rtmp2
	glo Rtmp2
	smi LO(memories_end)
	lbnz 1b
	ldi ' '
	plo Rtmp
	plo Rtbl		! Not on "memory"
3:

	!
	!  Stacktop scratch for drawchr arg
	!

	dec Rstk
	glo Rtbl
	str Rstk

	dec Rstk
	glo Rtmp
	str Rstk

	LDREG(Rtmp2, segs_dl_digit_1)
	CALL(drawchr)
	inc Rstk 		! 2.123
	CALL(drawchr)

#ifdef ME59
#ifdef USA
	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	ldi '9'				! "   912750"
	str Rstk
	CALL(drawchr)			! __9_____
#endif	
	!USA
#ifndef USA
	ldi ' '
	str Rstk
	CALL(drawchr)
	ldi 0x12				! "   1297500"
	str Rstk
	CALL(drawhex)				! 12_____
#endif 	
	!/USA
#endif	
	!ME59

#ifndef ME59
	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)

	ldi 4					! "    434775"
	str Rstk
	CALL(drawchr)				!  __4_____
#endif	
	!/ME59


	ADJUST(Rram, channel)
	lda Rram
	plo Rtmp3
	ldn Rram
	phi Rtmp3

	lda Rarg
	lbz 4f
	smi -1
	lbz 3f

	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f
	DOSUB(Rtmp3, RPTR_SUB)	
	lbr 2f
1:
	DOADD(Rtmp3, RPTR_SUB)
2:
	ADJUST(Rram, rptr_76)
	ldn Rram
	lbz 4f

	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f
	DOSUB(Rtmp3, RPTR_SUB76)	
	lbr 2f
1:
	DOADD(Rtmp3, RPTR_SUB76)
2:
	lbr 4f
3:
	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f
	DOADD(Rtmp3, RPTR_SUB)
	lbr 2f
1:
	DOSUB(Rtmp3, RPTR_SUB)
2:
	ADJUST(Rram, rptr_76)
	ldn Rram
	lbz 4f

	ADJUST(Rram, rptr_pos)
	ldn Rram
	lbz 1f
	DOADD(Rtmp3, RPTR_SUB76)	
	lbr 4f
1:
	DOSUB(Rtmp3, RPTR_SUB76)

4:

	ldi '0' - 1
	plo Rtmp
1:
	inc Rtmp
	DOSUB(Rtmp3, CHPER100kHz * 100)
	lbdf 1b
	DOADD(Rtmp3, CHPER100kHz * 100)
	glo Rtmp
	str Rstk
	CALL(drawchr)				! 129____

	ldi '0' - 1
	plo Rtmp
1:
	inc Rtmp
	DOSUB(Rtmp3, CHPER100kHz * 10)
	lbdf 1b
	DOADD(Rtmp3, CHPER100kHz * 10)
	glo Rtmp
	str Rstk
	CALL(drawchr)				! 1297___

	ldi '0' - 1
	plo Rtmp
1:
	inc Rtmp
	DOSUB(Rtmp3, CHPER100kHz)
	lbdf 1b
	DOADD(Rtmp3, CHPER100kHz)
	glo Rtmp
	str Rstk
	CALL(drawchr)				! 12975__

	LDREG(Rtmp, 3f - 1)		! freqstring table
1:
	inc Rtmp
	glo Rtmp3
	dec Rtmp3
	lbnz 1b

	ldn Rtmp
	str Rstk
	CALL(drawhex)

	FLIP(WDR)

	inc Rstk

	RETURN

!
!  Divisor to freqstring table, last two digits.
!
#ifdef STEP125
3:	.byte 0x00,0x12,0x25,0x37,0x50,0x62,0x75,0x87
#else
3:	.byte 0x00,0x25,0x50,0x75,0xde,0xad,0xbe,0xef
#endif

#ifdef ME59

!----------------------------------------------------------------------
!
!  ME59 offset oscillator. Similar routine as the one for main synth....
!

dooffset:

	FLIP(WDR)

	ADJUST(Rram, swereg)

	dec Rstk		! scratch to "write" to

	sex Rpgm
	dis
	.byte Rpgm

	sex Rram

	lda Rram	! Get swereg mirror
	str Rram	! Save double mirror, no SWE here
	dec Rram	! Back over reg
	ori iSWE
	str Rram	! Set SWE in reg
	out REG		! Rram is used after data written, below !!!!

	! Setting SW to 0 powers tx mixer and buffer

	ldn Rarg	! arg is 1 for TX,
			! This 1 gets inverted before entering PLL chip
			! where 0 is TX, thus arg=1=TX, arg=0=RX
			! NOTE NOT INCREMENTING Rarg YET.

	str Rstk	! /SW1
	str Rstk	! /SW2

	! 81MHz / 100kHz = 810 = 25 * 32/33 + 10	!NXO's way to say it
	
	! REPEATER
	!  87MHz / 100kHz =  870 = (27 +  6/32) *32		NWQ
	! 132MHz / 100kHz = 1320 = (41 +  8/32) *32		NWQ

	! normal
	!  81MHz / 100kHz =  810 = (25 + 10/32) *32		NWQ
	! 126MHz / 100kHz = 1260 = (39 + 12/32) *32		NWQ


	ldi ~0	! /N9 and /N8,  Inverted
	str Rstk	! /N9
	str Rstk	! /N8

			!   Accu   DF

#ifdef X81
#ifdef REPEATER
	ldi ~27		! 76543210 -  Get N  	! Repeater X81
#else
	ldi ~25		! 76543210 -  Get N	! Normal X81
#endif	
	!/ REPEATER	
#else	
	!/X81
#ifdef REPEATER
	ldi ~41		! 76543210 -  Get N	! Repeater X126
#else
	ldi ~39		! 76543210 -  Get N	! Normal X126
#endif	
	!/REPEATER	
#endif	
	!/X81
	shlc		! 6543210- 7
	shlc		! 543210-7 6
	str Rstk	! N7
	shlc		! 43210-76 5
	str Rstk	! N6
	shlc		! 3210-765 4
	str Rstk	! N5
	shlc		! 210-7654 3
	str Rstk	! N4
	shlc		! 10-76543 2
	str Rstk	! N3
	shlc		! 0-765432 1
	str Rstk	! N2
	shlc		! -7654321 0
	str Rstk	! N1
	shlc		! 76543210 -
	str Rstk	! N0

	lda Rarg	! Rarg INCREMENTED, arg is 1 for TX
			! Shift oscillator by 100kHz during RX period
	shr		! 1/0 to DF

#ifdef X81
#ifdef REPEATER
	ldi ~6		! Repeater X81
	lsdf; ldi ~6	! NWQ Can't shift 
#else
	ldi ~10		! Normal X81
	lsdf; ldi ~11	! A=11 for RX, A=10 for TX
#endif	
	!/ REPEATER	
#else	
	!/X81
#ifdef REPEATER
	ldi ~8		! Repeater X126
	lsdf; ldi ~8	! NWQ No need to shift as 126 != 86
#else
	ldi ~12		! Normal X126
	lsdf; ldi ~12	! This won't work... 45MHz repeater shift...
#endif	
	!/REPEATER	
#endif	
	!/X81


			! -6543210 -  Get A
	shlc		! 6543210- -
	shlc		! 543210-- 6
	shlc		! 43210--6 5
	str Rstk	! A6
	shlc		! 3210--65 4
	str Rstk	! A5
	shlc		! 210--654 3
	str Rstk	! A4
	shlc		! 10--6543 2
	str Rstk	! A3
	shlc		! 0--65432 1
	str Rstk	! A2
	shlc		! --654321 0
	str Rstk	! A1
	shlc		! -6543210 -
	str Rstk	! A0

	out REG		! From Rram, SWE is clear here
	dec Rram
	ldn Rram
	dec Rram
	str Rram	! restore swereg without SWE

	sex Rpgm
#if XXX
	ret
#else
	dis
#endif
	.byte Rpgm

	PULSE(TSE)

	inc Rstk

	RETURN

#endif /* of dooffset, only on ME59 */



! TEST THE KEYPAD 
!_________________________________


dokey:	

	CALL(marker_off), SEG_SKIP		! dim the SKIP marker
	
	ADJUST(Rram, key)
	ldn Rram

!__PTT

	smi PTT			! NWQ 2005-02-19 19:29
	lbnz 1f

#ifdef EASY_BEEP		
				! NWQ Easy repeater beep defined
	lbr easybeep
#else
	CLR(ALO)		
	CALL(scanner_stop)	
	CALL(txon)
	CALL(waitkey)
	CALL(txoff)
	RETURN
#endif

!__*
1:
	ldn Rram
	smi STAR
	lbnz 1f
	CLR(ALO)
	CALL(scanner_stop)
	LIT(BIT_CALL)		! NWQ
	CALL(txon)		! xmit on
	CALL(waitkeybeep)	! beep until released
    	DIM(BIT_CALL)		! NWQ
	CALL(txoff)
	RETURN

!__lights on
1:
	ADJUST(Rram, lighttimer)	! key is pressed: set lights on
	ldi 0
	str Rram
	inc Rram
	ldi 10
	str Rram
	LIT(BIT_KEYLIGHT)
	LIT(BIT_LCDLIGHT)

!__digits
	ADJUST(Rram, key)
	ldn Rram
	smi 10
	lbnf dodigit		! it is 0-9

!__R
	ldn Rram
	smi 'D'						! R - simplex/duplex toggle
	lbnz 1f
	
	ADJUST(Rram, scan_mode)				! test if we are scanning
	ldn Rram
	lbz 2f
	
	ADJUST(Rram, scan_which)			! test if we are scanning memories 
	ldn Rram
	smi SC_MEMORY
	lbz 3f
	
	CALL(scanner_reject_go)				! scanning simplex or repeaters
	RETURN

3:	
	CALL(marker_on), SEG_KEY
	
	ADJUST(Rram, scan_num)			! scanning memories
	ldn Rram
	smi 1
	lbz reject_memory_1

	ldn Rram
	smi 2
	lbz reject_memory_2

	ldn Rram
	smi 3
	lbz reject_memory_3

	ldn Rram
	smi 4
	lbz reject_memory_4

	ldn Rram
	smi 5
	lbz reject_memory_5

	ldn Rram
	smi 6
	lbz reject_memory_6

	ldn Rram
	smi 7
	lbz reject_memory_7

	ldn Rram
	smi 8 
	lbz reject_memory_8

	ldn Rram
	smi 9
	lbz reject_memory_9

	lbr reject_memory_0

2:
	ADJUST(Rram, rptr)			! not scanning so change repeater status
	ldn Rram
	ani 1
	xri 1
	str Rram
	CALL(upd_rptr_icons)
	CALL(zerobuf)
	CALL(drawfreq), 0
	RETURN

!__CS
1:
	ldn Rram
	smi 'X'				! power adjust
	lbnz 1f
	ADJUST(Rram, txpower)
	ldn Rram
	adi 1
	ani 3
	str Rram
#ifdef NOHIPOWER
	ldn Rram
	smi 3
	lbnz 2f
	ldi 0
	str Rram
2:
#endif
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0
	RETURN
!__CL
1:
	ldn Rram
	smi 'C'
	lbnz 1f
	ADJUST(Rram, scan_mode)
	ldn Rram
	lbz 2f
	CALL(scanner_clear_rejects)
	RETURN
2:
	CALL(backspace)
	RETURN

!__+
1:
	ldn Rram
	smi '+'
	lbnz 1f
	CALL(dovola), 1
	RETURN

!__-
1:
	ldn Rram
	smi '-'
	lbnz 1f
	CALL(dovola), -1
	RETURN

!__STO
1:
	ldn Rram
	smi 'S'
	lbnz 1f
	lbr do_sto
	

!__handset
1:
	ldn Rram
	smi 'R'
	lbnz 1f				! NWQ
	CALL(scanner_stop)
	CALL(chanstep), -1
	CALL(def_repeater)
	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawfreq), 0
	RETURN

!__squelch
1:
	ldn Rram
					
	smi SQUELCH			! NWQ 2005-02-19 19:31	
	lbnz 1f

	ADJUST(Rram, sq_forced)
	ldn Rram
	xri 1
	ani 1
	str Rram			! Toggle squelch active/forced
	lbnz 2f
	CALL(marker_off), SEG_N
	CLR(HF)
	CLR(EAR)
#ifndef ME59
	ADJUST(Rram, car)
	ldi 0
	str Rram
#endif
	lbr 4f
2:
	CALL(marker_on), SEG_N
	ADJUST(Rram, volume)
	ldn Rram
	lbz 2f
	smi 1
	lbz 3f
	SET(HF)
3:
	SET(EAR)
2:
4:
	ADJUST(Rram, rptr)
	ldn Rram
	lbz 2f			! Duplex mode ?
	CALL(rxsynth), -1	! Peek repeater input ...
	CALL(drawfreq), -1
	CALL(display)
	CALL(waitkey)		! .. until key released.
	CALL(rxsynth), 0
	CALL(drawfreq), 0	! Restore display.
	CALL(display)
2:
	RETURN

!__#
1:
	ldn Rram
	smi ENTER	! NWQ 2005-02-19 20:01
	lbnz 1f

	CALL(scanner_stop)
	CALL(docmd)
	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0
	RETURN

!__HF
1:
	ldn Rram
	smi 'E'
	lbnz 1f
	CALL(scanner_start_XXX)
	RETURN

!__something else???
1:
	RETURN


drawpower:
	LDREG(Rtmp2, segs_u_digit_4)

	ADJUST(Rram, txpower)
	ldn Rram
	ani 3
	adi '0'
	dec Rstk
	str Rstk
	CALL(drawchr)
	inc Rstk

	RETURN

backspace:

	ADJUST(Rram, dig_idx)
	ldn Rram
	lbnz 1f
	RETURN
1:
	smi 1
	ani 7
	str Rram
	adi LO(digbuf)
	plo Rptr
	ldi ' '
	str Rptr

	ldn Rram
	lbnz 1f
	CALL(drawfreq), 0
	RETURN
1:

drawdigits:

	LDREG(Rtmp2, segs_dl_digit_1)

	dec Rstk

	ADJUST(Rram, digbuf + 0)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, digbuf + 1)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, digbuf + 2)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, digbuf + 3)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, digbuf + 4)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, digbuf + 5)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, digbuf + 6)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, digbuf + 7)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)

	inc Rstk

	RETURN


docmd:
	ADJUST(Rram, digbuf)
	ADJUST(Rptr, dig_idx)
	ldn Rptr
	lbz 9f			! if no digits
	smi 1
	lbz 1f			! if 1 digit
	smi 1
	lbz 2f			! if 2 digits
	smi 1
	lbz 3f			! if 3 digits
	smi 1
	lbz 4f			! if 4 digits
	
	lbr 5f			! if 5 digits

1:
	ldn Rram		
	lbr go_memory		! 1 digit
	! lbr 1f
2:
	sex Rram		! 2 digits
	ldn Rram; add; add; add; add; add; add; add; add; add;
	inc Rram
	add

/* 2 NUMBER COMMANDS */
1:
	plo Rtmp
	smi 81
	lbz toggle_rep_scan

	glo Rtmp
	smi 82
	lbz toggle_simp_scan

	glo Rtmp
	smi 83
	lbz toggle_mem_scan

#ifdef DEBUG
	glo Rtmp
	smi 80
	lbz show_debug 		

	glo Rtmp
	smi 42
	lbz do_oh3nwq
#endif

	glo Rtmp
	smi 69
	lbz do_69

	glo Rtmp
	smi 84
	lbz set_lights_on

	glo Rtmp
	smi 85
	lbz scanner_clear_rejects

	glo Rtmp
	smi 86
	lbz pos_rep

	glo Rtmp
	smi 87
	lbz rep_76

	glo Rtmp
	smi 88
	lbz display_test

	glo Rtmp
	smi 89
	lbz band_show

	glo Rtmp
	smi 90
	lbz txpower_0

	glo Rtmp
	smi 91
	lbz txpower_1

	glo Rtmp
	smi 92
	lbz txpower_2

	glo Rtmp
	smi 93
	lbz txpower_3

	glo Rtmp
	smi 94
	lbz toggle_rptr

	glo Rtmp
	smi 95
	lbz scanner_reject

!	glo Rtmp
!	smi 97
!	lbz beep_7
!
!	glo Rtmp
!	smi 98
!	lbz beep_8
!
!	glo Rtmp
!	smi 99
!	lbz beep_9

	glo Rtmp
	smi 99
	lbz do_99

	glo Rtmp
	smi MEM_NUM
	lbdf error			! NWQ say "Error" - not a command nor memory channel
	
	!lbdf 9f			! was Oops

!frequency input handled here
				
	LDREG(Rtmp2, memories)
1:
	glo Rtmp
	lbz 1f
	inc Rtmp2; inc Rtmp2
	dec Rtmp
	lbr 1b
1:
	ADJUST(Rram, channel)
	lda Rtmp2
	str Rram
	inc Rram
	ldn Rtmp2
	str Rram
	lbr 6f

3:
	ADJUST(Rptr, digbuf + 1)	! 3 digits
	ADJUST(Rram, digbuf + 3)			! 475
	ldn Rptr
	str Rram					! 4757
	ldi DEF_FREQ/1000%10
	str Rptr					! 4357
	dec Rptr
	dec Rram
	ldn Rptr
	str Rram					! 4347
	ldi DEF_FREQ/10000%10
	str Rptr					! 3347 (433475)
 lbr 5f
4:
 ADJUST(Rptr, digbuf + 2) ! 4 digits
 ADJUST(Rram, digbuf + 3)   ! 4625
 ldn Rptr
 str Rram     ! 4622
 dec Rptr
 dec Rram
 ldn Rptr
 str Rram     ! 4662
 dec Rptr
 dec Rram
 ldn Rptr
 str Rram     ! 4462
 ldi DEF_FREQ/10000%10
 str Rptr     ! 3462 (434625)

5:
 LDREG(Rtmp2, digbuf)  ! 5 digits
 CALL(freq2chan)   ! determine channel from input digits
6:
 CALL(def_repeater)
9:
 CALL(storedebug)
 CALL(zerobuf)
 CALL(rxsynth), 0
 CALL(drawfreq), 0
 RETURN

go_memory:
 plo Rtmp
 smi 1
 lbz go_memory_1

 glo Rtmp
 smi 2
 lbz go_memory_2  

 glo Rtmp
 smi 3
 lbz go_memory_3  

 glo Rtmp
 smi 4
 lbz go_memory_4  

	glo Rtmp
	smi 5
	lbz go_memory_5		

	glo Rtmp
	smi 6
	lbz go_memory_6		

	glo Rtmp
	smi 7
	lbz go_memory_7		
		
	glo Rtmp
	smi 8
	lbz go_memory_8		

	glo Rtmp
	smi 9
	lbz go_memory_9		
	
	glo Rtmp
	smi 0
	lbz go_memory_0		

	lbr error		


beep_7:
	CLR(ALO)
	CALL(scanner_stop)
	LIT(BIT_CALL)		! NWQ
	CALL(txon)		! xmit on

	CALL(ccir_7)
    	DIM(BIT_CALL)		! NWQ
	CALL(txoff)	
	RETURN

beep_8:
	CLR(ALO)
	CALL(scanner_stop)
	LIT(BIT_CALL)		! NWQ
	CALL(txon)		! xmit on

	CALL(ccir_8)
    	DIM(BIT_CALL)		! NWQ
	CALL(txoff)	
	RETURN

beep_9:
	CLR(ALO)
	CALL(scanner_stop)
	LIT(BIT_CALL)		! NWQ
	CALL(txon)		! xmit on

	CALL(ccir_9)
    	DIM(BIT_CALL)		! NWQ
	CALL(txoff)	
	RETURN


storedebug:

	ADJUST(Rram, dig_idx)	! NEW in 2.0b3
	ldn Rram			!
	lbz 1f			! 0 digits
	smi 1				!
	lbz 1f			! 1 gigit
	smi 1				!
	lbz 1f			! 2 digits

!	dec Rstk		! 2.123
	ADJUST(Rptr, digbuf)	
	ADJUST(Rram, debug)	

	ldn Rptr	!1
	str Rram

	inc Rptr
	inc Rram
	ldn Rptr	!2
	str Rram

	inc Rptr
	inc Rram
	ldn Rptr	!3
	str Rram

	inc Rptr
	inc Rram
	ldn Rptr	!4
	str Rram

	inc Rptr
	inc Rram
	ldn Rptr	!5
	str Rram

!	inc Rstk	!2.123
1:
	RETURN


reject_memory_0:				
	ADJUST(Rram, mode_0)
	ldn Rram
	ori MEMOSKIP
	str Rram
	
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	CALL(waitkey)		! wait for the release of R key
	lbr scanner_step

reject_memory_1:
	ADJUST(Rram, mode_1)
	ldn Rram
	ori MEMOSKIP
	str Rram
	
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	CALL(waitkey)		! wait for the release of R key
	lbr scanner_step
	
reject_memory_2:
	ADJUST(Rram, mode_2)
	ldn Rram
	ori MEMOSKIP
	str Rram
	
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	CALL(waitkey)		! wait for the release of R key
	lbr scanner_step

reject_memory_3:
	ADJUST(Rram, mode_3)
	ldn Rram
	ori MEMOSKIP
	str Rram
	
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	CALL(waitkey)		! wait for the release of R key
	lbr scanner_step

reject_memory_4:
	ADJUST(Rram, mode_4)
	ldn Rram
	ori MEMOSKIP
	str Rram
	
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	CALL(waitkey)		! wait for the release of R key
	lbr scanner_step

reject_memory_5:
	ADJUST(Rram, mode_5)
	ldn Rram
	ori MEMOSKIP
	str Rram
	
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	CALL(waitkey)		! wait for the release of R key
	lbr scanner_step

reject_memory_6:
	ADJUST(Rram, mode_6)
	ldn Rram
	ori MEMOSKIP
	str Rram
	
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	CALL(waitkey)		! wait for the release of R key
	lbr scanner_step

reject_memory_7:
	ADJUST(Rram, mode_7)
	ldn Rram
	ori MEMOSKIP
	str Rram
	
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	CALL(waitkey)		! wait for the release of R key
	lbr scanner_step

reject_memory_8:
	ADJUST(Rram, mode_8)
	ldn Rram
	ori MEMOSKIP
	str Rram
	
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	CALL(waitkey)		! wait for the release of R key
	lbr scanner_step

reject_memory_9:
	ADJUST(Rram, mode_9)
	ldn Rram
	ori MEMOSKIP
	str Rram
	
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	CALL(waitkey)		! wait for the release of R key
	lbr scanner_step


do_sto:
	ADJUST(Rram, dig_idx)
	ldn Rram
	smi 1
	lbz 1f

	CALL(scanner_stop)	! not 1 number in buffer so step 1 channel up
	CALL(zerobuf)
	CALL(chanstep), 1
	CALL(def_repeater)
	CALL(rxsynth), 0
	CALL(drawfreq), 0
	RETURN
	
1:
	ADJUST(Rram, digbuf)    ! 1 number in buffer so store to that location
	ldn Rram
	lbz store_0

	ldn Rram
	smi 1
	lbz store_1

	ldn Rram
	smi 2
	lbz store_2

	ldn Rram
	smi 3
	lbz store_3
	
	ldn Rram
	smi 4
	lbz store_4

	ldn Rram
	smi 5
	lbz store_5

	ldn Rram
	smi 6
	lbz store_6

	ldn Rram
	smi 7
	lbz store_7

	ldn Rram
	smi 8
	lbz store_8

	lbr store_9


store_0:
	FLIP(WDR)

	ADJUST(Rram, memory_0)		! store to mem # 0  
	ADJUST(Rptr, debug)
	
	ldn Rptr
	str Rram		!1

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!2

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!3

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!4

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!5

	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)

	ldi 'r'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'd'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)
	
	ldi '0'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk	

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	CALL(display)
	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi ' '
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi '/'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'C'
	str Rstk
	CALL(drawchr)
	

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 31		! '?'
	str Rstk
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)

! get key if STO => reject 0 = 0
!         if CL  => reject 0 = 1
!---
1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	
	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi 'S'		! STO pressed -> do scan
	lbz 1f
	
	ldn Rram	! CL pressed  -> don't scan
	smi 'C'
	lbz 2f

	lbr 1b		! other key   -> loop back

1:
	ADJUST(Rram, mode_0)
	ldn Rram
	ani ~MEMOSKIP
	ani ~SAVESKIP
	str Rram
	lbr 1f
2:
	ADJUST(Rram, mode_0)
	ldn Rram
	ori MEMOSKIP
	ori SAVESKIP
	str Rram
	CALL(marker_on), SEG_KEY

1:
	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0

	FLIP(WDR)
	CALL(scanner_stop)
	CALL(docmd)

	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0

	FLIP(WDR)
	lbr go_memory_0

store_1:
	FLIP(WDR)

	ADJUST(Rram, memory_1)		! store to mem # 1  
	ADJUST(Rptr, debug)
	
	ldn Rptr
	str Rram		!1

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!2

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!3

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!4

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!5

	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi 'r'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'd'
 str Rstk
 CALL(drawchr)

 ldi ' '
 str Rstk
 CALL(drawchr)
 

 ldi '1'
 str Rstk
 CALL(drawchr)
 FLIP(WDR)

 ldi ' '
 str Rstk
 CALL(drawchr)
 CALL(drawchr)
 CALL(display)
 FLIP(WDR)

 inc Rstk 

 LDREG(Rtmp, 0)
1:
 dec Rtmp
 glo Rtmp
 lbnz 1b
 FLIP(WDR)
 ghi Rtmp
 lbnz 1b   ! longer delay before continuing
 inc Rtmp

 CALL(display)
 FLIP(WDR)

 dec Rstk
 LDREG(Rtmp2, segs_dl_digit_1)

 ldi 'S'
 str Rstk
 CALL(drawchr)

 ldi 't'
 str Rstk
 CALL(drawchr)

 ldi 'o'
 str Rstk
 CALL(drawchr)
 
 ldi ' '
 str Rstk
 CALL(drawchr)
 FLIP(WDR)

 ldi '/'
 str Rstk
 CALL(drawchr)

 ldi ' '
 str Rstk
 CALL(drawchr)

 ldi 'C'
	str Rstk
	CALL(drawchr)
	

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 31		! '?'
	str Rstk
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)

! get key if STO => reject 0 = 0
!         if CL  => reject 0 = 1
!---
1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	
	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi 'S'		! STO pressed -> do scan
	lbz 1f
	
	ldn Rram	! CL pressed  -> don't scan
	smi 'C'
	lbz 2f

	lbr 1b		! other key   -> loop back

1:
	ADJUST(Rram, mode_1)
	ldn Rram
	ani ~MEMOSKIP
	ani ~SAVESKIP
	str Rram
	lbr 1f
2:
	ADJUST(Rram, mode_1)
	ldn Rram
	ori MEMOSKIP
	ori SAVESKIP
	str Rram
	CALL(marker_on), SEG_KEY

1:
	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0

	FLIP(WDR)
	CALL(scanner_stop)
	CALL(docmd)

	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0

	FLIP(WDR)
	lbr go_memory_1

store_2:
	FLIP(WDR)

	ADJUST(Rram, memory_2)		! store to mem # 2  
	ADJUST(Rptr, debug)
	
	ldn Rptr
	str Rram		!1

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!2

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!3

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!4

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!5

	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi 'r'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'd'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)
	

	ldi '2'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	CALL(display)
	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi ' '
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi '/'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'C'
	str Rstk
	CALL(drawchr)
	

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 31		! '?'
	str Rstk
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)

! get key if STO => reject 0 = 0
!         if CL  => reject 0 = 1
!---
1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	
	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi 'S'		! STO pressed -> do scan
	lbz 1f
	
	ldn Rram	! CL pressed  -> don't scan
	smi 'C'
	lbz 2f

	lbr 1b		! other key   -> loop back

1:
	ADJUST(Rram, mode_2)
	ldn Rram
	ani ~MEMOSKIP
	ani ~SAVESKIP
	str Rram
	lbr 1f
2:
	ADJUST(Rram, mode_2)
	ldn Rram
	ori MEMOSKIP
	ori SAVESKIP
	str Rram
	CALL(marker_on), SEG_KEY

1:
	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0

	FLIP(WDR)
	CALL(scanner_stop)
	CALL(docmd)

	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0

	FLIP(WDR)
	lbr go_memory_2

store_3:
	FLIP(WDR)

	ADJUST(Rram, memory_3)		! store to mem # 3  
	ADJUST(Rptr, debug)
	
	ldn Rptr
	str Rram		!1

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!2

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!3

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!4

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!5

	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi 'r'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'd'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)
	

	ldi '3'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	CALL(display)
	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi ' '
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi '/'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'C'
	str Rstk
	CALL(drawchr)
	

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 31		! '?'
	str Rstk
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)

! get key if STO => reject 0 = 0
!         if CL  => reject 0 = 1
!---
1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	
	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi 'S'		! STO pressed -> do scan
	lbz 1f
	
	ldn Rram	! CL pressed  -> don't scan
	smi 'C'
	lbz 2f

	lbr 1b		! other key   -> loop back

1:
	ADJUST(Rram, mode_3)
	ldn Rram
	ani ~MEMOSKIP
	ani ~SAVESKIP
	str Rram
	lbr 1f
2:
	ADJUST(Rram, mode_3)
	ldn Rram
	ori MEMOSKIP	
	ori SAVESKIP
	str Rram
	CALL(marker_on), SEG_KEY

1:
	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0

	FLIP(WDR)
	CALL(scanner_stop)
	CALL(docmd)

	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0

	FLIP(WDR)
	lbr go_memory_3

store_4:
	FLIP(WDR)

	ADJUST(Rram, memory_4)		! store to mem # 4  
	ADJUST(Rptr, debug)
	
	ldn Rptr
	str Rram		!1

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!2

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!3

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!4

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!5

	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

 ldi 'o'
 str Rstk
 CALL(drawchr)
 
 ldi 'r'
 str Rstk
 CALL(drawchr)
 FLIP(WDR)

 ldi 'E'
 str Rstk
 CALL(drawchr)

 ldi 'd'
 str Rstk
 CALL(drawchr)

 ldi ' '
 str Rstk
 CALL(drawchr)
 

 ldi '4'
 str Rstk
 CALL(drawchr)
 FLIP(WDR)

 ldi ' '
 str Rstk
 CALL(drawchr)
 CALL(drawchr)
 CALL(display)
 FLIP(WDR)

 inc Rstk

 LDREG(Rtmp, 0)
1:
 dec Rtmp
 glo Rtmp
 lbnz 1b
 FLIP(WDR)
 ghi Rtmp
 lbnz 1b   ! longer delay before continuing
 inc Rtmp

	CALL(display)
	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi ' '
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi '/'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'C'
	str Rstk
	CALL(drawchr)
	

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 31		! '?'
	str Rstk
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)

! get key if STO => reject 0 = 0
!         if CL  => reject 0 = 1
!---
1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	
	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi 'S'		! STO pressed -> do scan
	lbz 1f
	
	ldn Rram	! CL pressed  -> don't scan
	smi 'C'
	lbz 2f

	lbr 1b		! other key   -> loop back

1:
	ADJUST(Rram, mode_4)
	ldn Rram
	ani ~MEMOSKIP
	ani ~SAVESKIP
	str Rram
	lbr 1f
2:
	ADJUST(Rram, mode_4)
	ldn Rram
	ori MEMOSKIP
	ori SAVESKIP
	str Rram
	CALL(marker_on), SEG_KEY

1:
	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0

	FLIP(WDR)
	CALL(scanner_stop)
	CALL(docmd)

	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0

	FLIP(WDR)
	lbr go_memory_4

store_5:
	FLIP(WDR)

	ADJUST(Rram, memory_5)		! store to mem # 0  
	ADJUST(Rptr, debug)
	
	ldn Rptr
	str Rram		!1

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!2

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!3

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!4

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!5

	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi 'r'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'd'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)
	

	ldi '5'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	CALL(display)
	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi ' '
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi '/'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'C'
	str Rstk
	CALL(drawchr)
	

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 31		! '?'
	str Rstk
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)

! get key if STO => reject 0 = 0
!         if CL  => reject 0 = 1
!---
1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	
	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi 'S'		! STO pressed -> do scan
	lbz 1f
	
	ldn Rram	! CL pressed  -> don't scan
	smi 'C'
	lbz 2f

	lbr 1b		! other key   -> loop back

1:
	ADJUST(Rram, mode_5)
	ldn Rram
	ani ~MEMOSKIP
	ani ~SAVESKIP
	str Rram
	lbr 1f
2:
	ADJUST(Rram, mode_5)
	ldn Rram
	ori MEMOSKIP
	ori SAVESKIP
	str Rram
	CALL(marker_on), SEG_KEY

1:
	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0

	FLIP(WDR)
	CALL(scanner_stop)
	CALL(docmd)

	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0

	FLIP(WDR)
	lbr go_memory_5

store_6:
	FLIP(WDR)

	ADJUST(Rram, memory_6)		! store to mem # 6  
	ADJUST(Rptr, debug)
	
	ldn Rptr
	str Rram		!1

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!2

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!3

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!4

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!5

	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi 'r'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'd'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)
	

	ldi '6'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	CALL(display)
	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi ' '
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi '/'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'C'
	str Rstk
	CALL(drawchr)
	

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 31		! '?'
	str Rstk
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)

! get key if STO => reject 0 = 0
!         if CL  => reject 0 = 1
!---
1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	
	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi 'S'		! STO pressed -> do scan
	lbz 1f
	
	ldn Rram	! CL pressed  -> don't scan
	smi 'C'
	lbz 2f

	lbr 1b		! other key   -> loop back

1:
	ADJUST(Rram, mode_6)
	ldn Rram
	ani ~MEMOSKIP
	ani ~SAVESKIP
	str Rram
	lbr 1f
2:
	ADJUST(Rram, mode_6)
	ldn Rram
	ori MEMOSKIP
	ori SAVESKIP
	str Rram
	CALL(marker_on), SEG_KEY

1:
	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0

	FLIP(WDR)
	CALL(scanner_stop)
	CALL(docmd)

	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0

	FLIP(WDR)
	lbr go_memory_6

store_7:
	FLIP(WDR)

	ADJUST(Rram, memory_7)		! store to mem # 7  
	ADJUST(Rptr, debug)
	
	ldn Rptr
	str Rram		!1

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!2

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!3

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!4

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!5

	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi 'r'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'd'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)
	

	ldi '7'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	CALL(display)
	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi ' '
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi '/'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'C'
	str Rstk
	CALL(drawchr)
	

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 31		! '?'
	str Rstk
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)

! get key if STO => reject 0 = 0
!         if CL  => reject 0 = 1
!---
1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	
	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi 'S'		! STO pressed -> do scan
	lbz 1f
	
	ldn Rram	! CL pressed  -> don't scan
	smi 'C'
	lbz 2f

	lbr 1b		! other key   -> loop back

1:
	ADJUST(Rram, mode_7)
	ldn Rram
	ani ~MEMOSKIP
	ani ~SAVESKIP
	str Rram
	lbr 1f
2:
	ADJUST(Rram, mode_7)
	ldn Rram
	ori MEMOSKIP
	ori SAVESKIP
	str Rram
	CALL(marker_on), SEG_KEY

1:
	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0

	FLIP(WDR)
	CALL(scanner_stop)
	CALL(docmd)

	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0

	FLIP(WDR)
	lbr go_memory_7

store_8:
	FLIP(WDR)

	ADJUST(Rram, memory_8)		! store to mem # 8  
	ADJUST(Rptr, debug)
	
	ldn Rptr
	str Rram		!1

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!2

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!3

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!4

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!5

	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi 'r'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'd'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)
	

	ldi '8'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	CALL(display)
	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi ' '
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi '/'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'C'
	str Rstk
	CALL(drawchr)
	

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 31		! '?'
	str Rstk
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)

! get key if STO => reject 0 = 0
!         if CL  => reject 0 = 1
!---
1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	
	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi 'S'		! STO pressed -> do scan
	lbz 1f
	
	ldn Rram	! CL pressed  -> don't scan
	smi 'C'
	lbz 2f

	lbr 1b		! other key   -> loop back

1:
	ADJUST(Rram, mode_8)
	ldn Rram
	ani ~MEMOSKIP
	ani ~SAVESKIP
	str Rram
	lbr 1f
2:
	ADJUST(Rram, mode_8)
	ldn Rram
	ori MEMOSKIP
	ori SAVESKIP
	str Rram
	CALL(marker_on), SEG_KEY

1:
	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0

	FLIP(WDR)
	CALL(scanner_stop)
	CALL(docmd)

	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0

	FLIP(WDR)
	lbr go_memory_8

store_9:
	FLIP(WDR)

	ADJUST(Rram, memory_9)		! store to mem # 9  
	ADJUST(Rptr, debug)
	
	ldn Rptr
	str Rram		!1

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!2

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!3

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!4

	inc Rptr
	inc Rram
	ldn Rptr
	str Rram		!5

	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi 'r'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'd'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)
	

	ldi '9'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	CALL(display)
	FLIP(WDR)

	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'S'
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	
	ldi ' '
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi '/'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'C'
	str Rstk
	CALL(drawchr)
	

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 31		! '?'
	str Rstk
	CALL(drawchr)
	CALL(display)
	FLIP(WDR)

	inc Rstk

	LDREG(Rtmp, 0)

! get key if STO => reject 0 = 0
!         if CL  => reject 0 = 1
!---
1:
	FLIP(WDR)
	CALL(input_register)
	glo Rtmp
	ani POWEROFF
	lbz 2f
	lbr shutdown
2:	
	CALL(keypad)
	ADJUST(Rram, key)

	ldn Rram
	smi 'S'		! STO pressed -> do scan
	lbz 1f
	
	ldn Rram	! CL pressed  -> don't scan
	smi 'C'
	lbz 2f

	lbr 1b		! other key   -> loop back

1:
	ADJUST(Rram, mode_9)
	ldn Rram
	ani ~MEMOSKIP
	ani ~SAVESKIP
	str Rram
	lbr 1f
2:
	ADJUST(Rram, mode_9)
	ldn Rram
	ori MEMOSKIP
	ori SAVESKIP
	str Rram
	CALL(marker_on), SEG_KEY

1:
	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0

	FLIP(WDR)
	CALL(scanner_stop)
	CALL(docmd)

	CALL(rxsynth), 0
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0

	FLIP(WDR)
	lbr go_memory_9


go_memory_0:
	ADJUST(Rram, mode_0)		! NWQ 2.107
	ldn Rram			!
	ani MEMOSKIP				!
	lbz 1f				!
					!
	CALL(marker_on), SEG_SKIP	! if skip on lit I on the right corner
	lbr 2f
					
1:					! NWQ 2.107
	CALL(marker_off), SEG_SKIP	! otherwise dim I on the right corner
2:					
	dec Rstk
	ADJUST(Rptr, memory_0)	
	ADJUST(Rram, digbuf)	
	lbr 3f

go_memory_1:
	ADJUST(Rram, mode_1)		! NWQ 2.107
	ldn Rram			!
	ani MEMOSKIP				!
	lbz 1f				!
					!
	CALL(marker_on), SEG_SKIP	! if skip on lit I on the right corner
	lbr 2f
					
1:					! NWQ 2.107
	CALL(marker_off), SEG_SKIP	! otherwise dim I on the right corner
2:					
	dec Rstk
	ADJUST(Rptr, memory_1)	
	ADJUST(Rram, digbuf)	
	lbr 3f

go_memory_2:
	ADJUST(Rram, mode_2)		! NWQ 2.107
	ldn Rram			!
	ani MEMOSKIP				!
	lbz 1f				!
					!
	CALL(marker_on), SEG_SKIP	! if skip on lit I on the right corner
	lbr 2f
					
1:					! NWQ 2.107
	CALL(marker_off), SEG_SKIP	! otherwise dim I on the right corner
2:					
	dec Rstk
	ADJUST(Rptr, memory_2)	
	ADJUST(Rram, digbuf)	
	lbr 3f

go_memory_3:
	ADJUST(Rram, mode_3)		! NWQ 2.107
	ldn Rram			!
	ani MEMOSKIP				!
	lbz 1f				!
					!
	CALL(marker_on), SEG_SKIP	! if skip on lit I on the right corner
	lbr 2f
					
1:					! NWQ 2.107
	CALL(marker_off), SEG_SKIP	! otherwise dim I on the right corner
2:					
	dec Rstk
	ADJUST(Rptr, memory_3)	
	ADJUST(Rram, digbuf)	
	lbr 3f

go_memory_4:
	ADJUST(Rram, mode_4)		! NWQ 2.107
	ldn Rram			!
	ani MEMOSKIP				!
	lbz 1f				!
					!
	CALL(marker_on), SEG_SKIP	! if skip on lit I on the right corner
	lbr 2f
					
1:					! NWQ 2.107
	CALL(marker_off), SEG_SKIP	! otherwise dim I on the right corner
2:					
	dec Rstk
	ADJUST(Rptr, memory_4)	
	ADJUST(Rram, digbuf)	
	lbr 3f

go_memory_5:
	ADJUST(Rram, mode_5)		! NWQ 2.107
	ldn Rram			!
	ani MEMOSKIP				!
	lbz 1f				!
					!
	CALL(marker_on), SEG_SKIP	! if skip on lit I on the right corner
	lbr 2f
					
1:					! NWQ 2.107
	CALL(marker_off), SEG_SKIP	! otherwise dim I on the right corner
2:					
	dec Rstk
	ADJUST(Rptr, memory_5)	
	ADJUST(Rram, digbuf)	
	lbr 3f

go_memory_6:
	ADJUST(Rram, mode_6)		! NWQ 2.107
	ldn Rram			!
	ani MEMOSKIP				!
	lbz 1f				!
					!
	CALL(marker_on), SEG_SKIP	! if skip on lit I on the right corner
	lbr 2f
					
1:					! NWQ 2.107
	CALL(marker_off), SEG_SKIP	! otherwise dim I on the right corner
2:					
	dec Rstk
	ADJUST(Rptr, memory_6)	
	ADJUST(Rram, digbuf)	
	lbr 3f

go_memory_7:
	ADJUST(Rram, mode_7)		! NWQ 2.107
	ldn Rram			!
	ani MEMOSKIP				!
	lbz 1f				!
					!
	CALL(marker_on), SEG_SKIP	! if skip on lit I on the right corner
	lbr 2f
					
1:					! NWQ 2.107
	CALL(marker_off), SEG_SKIP	! otherwise dim I on the right corner
2:					
	dec Rstk
	ADJUST(Rptr, memory_7)	
	ADJUST(Rram, digbuf)	
	lbr 3f

go_memory_8:
	ADJUST(Rram, mode_8)		! NWQ 2.107
	ldn Rram			!
	ani MEMOSKIP				!
	lbz 1f				!
					!
	CALL(marker_on), SEG_SKIP	! if skip on lit I on the right corner
	lbr 2f
					
1:					! NWQ 2.107
	CALL(marker_off), SEG_SKIP	! otherwise dim I on the right corner
2:					
	dec Rstk
	ADJUST(Rptr, memory_8)	
	ADJUST(Rram, digbuf)	
	lbr 3f

go_memory_9:
	ADJUST(Rram, mode_9)		! NWQ 2.107
	ldn Rram			!
	ani MEMOSKIP				!
	lbz 1f				!
					!
	CALL(marker_on), SEG_SKIP	! if skip on lit I on the right corner
	lbr 2f
					
1:					! NWQ 2.107
	CALL(marker_off), SEG_SKIP	! otherwise dim I on the right corner
2:					
	dec Rstk
	ADJUST(Rptr, memory_9)	
	ADJUST(Rram, digbuf)	

3:
	ldn Rptr	!1
	str Rram

	inc Rptr
	inc Rram
	ldn Rptr	!2
	str Rram

	inc Rptr
	inc Rram
	ldn Rptr	!3
	str Rram

	inc Rptr
	inc Rram
	ldn Rptr	!4
	str Rram

	inc Rptr
	inc Rram
	ldn Rptr	!5
	str Rram

	FLIP(WDR)

	ADJUST(Rram, dig_idx)
	ldi 5
	str Rram

	LDREG(Rtmp2, digbuf)		! 5 digits
	CALL(freq2chan) 		! determine channel from input digits
	CALL(def_repeater)
	CALL(zerobuf)
	CALL(rxsynth), 0
	CALL(drawfreq), 0

	inc Rstk	!2.124

	RETURN


! do the mambo jambo
!-----------------------

dodigit:
	CALL(scanner_stop)

	ADJUST(Rram, key)
	ldn Rram
	plo Rtmp

	ADJUST(Rram, dig_idx)
	ldn Rram
	ani 7
	adi 1
	str Rram
	adi LO(digbuf) - 1
	plo Rptr
	glo Rtmp
	str Rptr

	ldn Rram
	smi 5
	lbz docmd

	lbr drawdigits

!
!  Rtmp points to 10Mc digit in 4 digit area, {12,4}xxxx{0,5}
!---------------------------------------------------------------

freq2chan:

	ADJUST(Rram, channel + 1)
	ldi 0
	str Rram
	dec Rram
	str Rram
	sex Rram		! left over LSByte of channel

	ldi HI(f2ctables)
	phi Rtmp

#define ADDDIG(tbl) lda Rtmp2; shl; adi LO(tbl); plo Rtmp;lda Rtmp; add; str Rram; inc Rram;ldn Rtmp; adc; str Rram; dec Rram;

	ADDDIG(f2c10MHz)
	ADDDIG(f2c1MHz)
	ADDDIG(f2c100kHz)
	ADDDIG(f2c10kHz)

	RETURN


	! At 1297000...487 ? Or 434600..975 ?

def_repeater:

	ADJUST(Rptr, rptr)
	ldi 0
	str Rptr

	ADJUST(Rram, channel)
	lda Rram
	plo Rtmp

	ldn Rram
	smi HI(RPTR_START)
	lbnf 1f				! If below start
	lbnz 2f				! If not near start
	glo Rtmp			! Near start, check lsB
	smi LO(RPTR_START)
	lbnf 1f				! Below, but not much
2:
	ldn Rram
	smi HI(RPTR_END)
	lbnf 2f				! If below end
	lbnz 1f				! If not near end
	glo Rtmp
	smi LO(RPTR_END)
	lbdf 1f				! Above, but not much
2:
	ldi 1
	str Rptr
1:

	FLIP(WDR)

	CALL(upd_rptr_icons)

	RETURN


	.align 8

#ifdef STEP125
#define X(v) LO(v), HI(v)
#else
#define X(v) LO((v) / 2), HI((v) / 2)
#endif

f2ctables:
	! 0     1       2       3       4       5       6       7       8       9
f2c10MHz:
.byte 0,0,X(800),X(1600),X(2400),X(3200),X(4000),X(4800),X(5600),X(6400),X(7200)
f2c1MHz:
.byte 0,0, X(80), X(160), X(240), X(320), X(400), X(480), X(560), X(640), X(720)
f2c100kHz:
.byte 0,0,  X(8),  X(16),  X(24),  X(32),  X(40),  X(48),  X(56),  X(64),  X(72)
f2c10kHz:
.byte 0,0,  X(1),   X(2),   X(3),   X(3),   X(4),   X(5),   X(6),   X(7),   X(7)

#undef X

	ASSERT(HI(.) == HI(f2ctables))

zerobuf:
	ADJUST(Rram, dig_idx)
	ldi 0
	str Rram

	ADJUST(Rram, digbuf)
	ldi ' ' ; str Rram
	inc Rram; str Rram
	inc Rram; str Rram
	inc Rram; str Rram

	inc Rram; str Rram
	inc Rram; str Rram
	inc Rram; str Rram
	inc Rram; str Rram

	RETURN

	.align 8

	/*
	 *  Loop for 1750 Hz with 4.8 MHz pclk on ME59, 3.6864 on MD5x.
	 *  
	 * 2 loops form one cycle of 1750.
	 * 1750 Hz cycle is 0.000571429 sec.
	 * one loop takes half of that, 0.000285714 sec.
	 * one cpu cycle is 0.000001667 sec on ME, 0.000002170 on MD.
	 * Loop takes 171 cpu cycles on ME59, 132 cycles on MD5x.
	 */

waitkeybeep:
	
	MIC_OFF

	ADJUST(Rram, phireg)
	ADJUST(Rptr, pscreg)
	LDREG(Rtmp2, wdrreg)

1:
	ldn Rtmp2		! 2
	xri iWDR		! 4
	str Rtmp2		! 6
	sex Rtmp2		! 8
	out REG			! 10
	dec Rtmp2		! 12 watchdog flipped

	ldn Rram		! 14
	xri iPHI		! 16
	str Rram		! 18
	sex Rram		! 20
	out REG			! 22
	dec Rram		! 24 PHI flipped

	ldn Rptr		! 26
	ori iPSC		! 28
	str Rptr		! 30
	sex Rptr		! 32
	out REG			! 34
	dec Rptr		! 36
	ani ~iPSC		! 38
	str Rptr		! 40
	out REG			! 42
	dec Rptr		! 44 PSC pulsed

	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 74
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 104

#ifdef ME59
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 134
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 164
	nop ;	! 167
	ldi 0	! 169

	bn3 1b	! 171
#else
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop             ! 128
	ldi 0   ! 130

	bn3 1b  ! 132
#endif

	ldn Rram
#ifdef MD50
	ori iPHI		! Keep high on MD50
#else
	ani ~iPHI		! Keep PHI low on Mx59
#endif
	str Rram
	sex Rram
	out REG

	RETURN



/*
	ccir tones
	

        Tone #          EIA     CCIR    ZVEI1   ZVEI2   ZVEI3/DZVEI     PZVEI   EEA
        0               600     1981    2400    2400    2200            2400    1981
        1               741     1124    1060    1060    970             1060    1124
        2               882     1197    1160    1160    1060            1160    1197
        3               1023    1275    1270    1270    1160            1270    1275
        4               1164    1358    1400    1400    1270            1400    1358
        5               1305    1446    1530    1530    1400            1530    1446
        6               1446    1540    1670    1670    1530            1670    1540
        7               1587    1640    1830    1830    1670            1830    1640
        8               1728    1747    2000    2000    1830            2000    1747
        9               1869    1860    2200    2200    2000            2200    1860
        A               2151    2400    2800    885     825             970     1055
        B               2435    930     810     810     740             810     930
        X/C             2010    2247    970     740     2600            2800    2247
        D               2295    991     885     680     885             885     991
        R/E             459     2110    2600    970     2400            2600    2110
        F               No/tone 1055    680     2600    680             680     2400
        Timing
        Preamble        673ms   673ms   673ms   673ms   673ms           673ms   673ms
        Gap             65ms    65ms    65ms    65ms    65ms            65ms    65ms
        Tone            33ms    40ms    100ms   100ms   100ms           100ms   100ms
        X Tone          65ms    40ms    100ms   100ms   100ms           100ms   100ms

The Preamble is used as a battery saving mechanism, similar to todays
digital pagers, thus the pager looks for its preamble, if not heard it
shuts off to standby mode. Not all systems use the Preamble, that is why
its called 5/6 tone paging. You may only have 5 tones when not using the
Preamble.

In 5/6 tone paging a consecutive number is never sent. thus a pager with
capcode 1-12344, would be sent using the a Preamble tone of 1/600Hz,
followed by a 65ms gap of silence, then 2/882Hz, 3/1023Hz, 4/1164Hz each
33ms long, the second four is transmitted using the R (Repeat) Tone of
R/459Hz.

The second address of a pager is activated by sending the X tone after the
pagers capcode, thus 1-12345X.

The chart above inlcudes both 5/6 Tone & HSC Tones. For 5/6 Tone pagers only
Tones 0-9, X, & R are used. Tones A-F are for use in HSC Pagers
and 5/6 Tone ANI systems.

							
        Tone #          CCIR    		md / me
!        0               1981    ./. 	116/151
!        1               1124    ./. 	205/266
!        2               1197    ./. 	192/251
!        3               1275    ./. 	181/235
!        4               1358    ./. 	170/221
!        5               1446    ./. 	159/207
!        6               1540    ./. 	150/195
!        7               1640    ./. 	141/183
!        8               1747    ./. 	132/172
!        9               1860    ./. 	127/165
!        A               2400    ./. 	 96/125
!        B               930     ./. 	248/323
!        X/C             2247    ./. 	102/133
!        D               991     ./. 	232/303
!        R/E             2110    ./. 	109/142
!        F               1055    ./. 	218/284


*/

	.align 8

ccir_7:
	
!        7               1640    ./. 	141/183

	MIC_OFF

	ADJUST(Rram, phireg)
	ADJUST(Rptr, pscreg)
	LDREG(Rtmp2, wdrreg)

1:
	ldn Rtmp2		! 2
	xri iWDR		! 4
	str Rtmp2		! 6
	sex Rtmp2		! 8
	out REG			! 10
	dec Rtmp2		! 12 watchdog flipped

	ldn Rram		! 14
	xri iPHI		! 16
	str Rram		! 18
	sex Rram		! 20
	out REG			! 22
	dec Rram		! 24 PHI flipped

	ldn Rptr		! 26
	ori iPSC		! 28
	str Rptr		! 30
	sex Rptr		! 32
	out REG			! 34
	dec Rptr		! 36
	ani ~iPSC		! 38
	str Rptr		! 40
	out REG			! 42
	dec Rptr		! 44 PSC pulsed

	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 74
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 104

#ifdef ME59
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 134
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 164
	nop ;	nop ; nop ; nop ; nop ! 179
	ldi 0	! 181

	bn3 1b	! 183
#else
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop             ! 128
	nop ; nop ; nop	! 137
	ldi 0   ! 139

	bn3 1b  ! 141
#endif

	ldn Rram
#ifdef MD50
	ori iPHI		! Keep high on MD50
#else
	ani ~iPHI		! Keep PHI low on Mx59
#endif
	str Rram
	sex Rram
	out REG

	RETURN


ccir_8:
	
!        8               1747    ./. 	132/172

	MIC_OFF

	ADJUST(Rram, phireg)
	ADJUST(Rptr, pscreg)
	LDREG(Rtmp2, wdrreg)

1:
	ldn Rtmp2		! 2
	xri iWDR		! 4
	str Rtmp2		! 6
	sex Rtmp2		! 8
	out REG			! 10
	dec Rtmp2		! 12 watchdog flipped

	ldn Rram		! 14
	xri iPHI		! 16
	str Rram		! 18
	sex Rram		! 20
	out REG			! 22
	dec Rram		! 24 PHI flipped

	ldn Rptr		! 26
	ori iPSC		! 28
	str Rptr		! 30
	sex Rptr		! 32
	out REG			! 34
	dec Rptr		! 36
	ani ~iPSC		! 38
	str Rptr		! 40
	out REG			! 42
	dec Rptr		! 44 PSC pulsed

	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 74
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 104

#ifdef ME59
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 134
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 164
	nop 	! 167
	ldi 0	! 169

	bn3 1b	! 171
#else
	nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop             ! 128
	ldi 0   ! 130

	bn3 1b  ! 132
#endif

	ldn Rram
#ifdef MD50
	ori iPHI		! Keep high on MD50
#else
	ani ~iPHI		! Keep PHI low on Mx59
#endif
	str Rram
	sex Rram
	out REG

	RETURN


	.align 8
ccir_9:
!        9               1860    ./. 	127/165
	
	MIC_OFF

	ADJUST(Rram, phireg)
	ADJUST(Rptr, pscreg)
	LDREG(Rtmp2, wdrreg)

1:
	ldn Rtmp2		! 2
	xri iWDR		! 4
	str Rtmp2		! 6
	sex Rtmp2		! 8
	out REG			! 10
	dec Rtmp2		! 12 watchdog flipped

	ldn Rram		! 14
	xri iPHI		! 16
	str Rram		! 18
	sex Rram		! 20
	out REG			! 22
	dec Rram		! 24 PHI flipped

	ldn Rptr		! 26
	ori iPSC		! 28
	str Rptr		! 30
	sex Rptr		! 32
	out REG			! 34
	dec Rptr		! 36
 ani ~iPSC  ! 38
 str Rptr  ! 40
 out REG   ! 42
 dec Rptr  ! 44 PSC pulsed

 nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 74
 nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 104

#ifdef ME59
 nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop # 134
 nop ; nop ; nop ; nop ; nop ; nop ; nop ; nop ;  # 159
 nop   ! +3 = 162

 ldi 0  ! +2 = 164 

 bn3 1b ! +2 = 166
#else
 nop ; nop ; nop ; nop ; nop ; nop              ! 122
 ldi 0    ! +2 = 124

 bn3 1b   ! +2 = 126
#endif

 ldn Rram
#ifdef MD50
 ori iPHI  ! Keep high on MD50
#else
 ani ~iPHI  ! Keep PHI low on Mx59
#endif
 str Rram
 sex Rram
 out REG

 RETURN


reset_settings:

 ADJUST(Rram, digbuf+0)
 ldn Rram
 smi PIN_1
 lbz 1f
 CALL(error)
 lbr scanner_start 
1:
 ADJUST(Rram, digbuf+1)
 ldn Rram
	smi PIN_2
	lbz 1f
	CALL(error)
	lbr scanner_start 
1:

	ADJUST(Rram, digbuf+2)
	ldn Rram
	smi PIN_3
	lbz 1f
	CALL(error)
	lbr scanner_start 
1:

	ADJUST(Rram, digbuf+3)
	ldn Rram
	smi PIN_4
	lbz 1f
	CALL(error)
	lbr scanner_start 
1:

	ADJUST(Rram, ram)
1:
	ldi 0
	str Rram
	inc Rram
	glo Rram
	smi LO(_end)
	lbnz 1b

	LDREG(Rram, ram)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0
	FLIP(WDR)

	lbr shutdown

force_aprs:
force_reset:
	ADJUST(Rram, ram)
1:
	ldi 0
	str Rram
	inc Rram
	glo Rram
	smi LO(_end)
	lbnz 1b

	ADJUST(Rram, volume)		! vola 3
	ldi 3
	str Rram

	ADJUST(Rram, scan_rep)		! repeater scanning
	ldi 1
	str Rram

#ifdef APRS
	ADJUST(Rram, scan_rep)		! repeater scanning
	ldi 0
	str Rram
#endif

	ADJUST(Rram, elvis_1)		! el-vis is de-
	ldi 0xde
	str Rram

	ADJUST(Rram, elvis_2)		! ad
	ldi 0xad
	str Rram

#ifdef GERMAN
	ADJUST(Rram, rptr_76)		! on German version - select 7.6/28 MHz shift
	ldi 1
	str Rram
#endif

#ifdef ME59
			! this is for ME59	
	ADJUST(Rram, memory_0)		! mem 0  1296.600
	ldi 9				! on USA version these will be bogus QRG's - who cares
	str Rram

	inc Rram
	ldi 7
	str Rram

	inc Rram
	ldi 6
	str Rram

	inc Rram
	ldi 0
	str Rram

	inc Rram
	ldi 0
	str Rram

	FLIP(WDR)

	ADJUST(Rram, memory_1)		! mem 1  1297.500
	ldi 9
	str Rram

	inc Rram
	ldi 7
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 0
	str Rram

	inc Rram
	ldi 0
	str Rram

	ADJUST(Rram, memory_2)		! mem 2  1297.525
	ldi 9
	str Rram

	inc Rram
	ldi 7
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 2
	str Rram

	inc Rram
	ldi 5
	str Rram

	ADJUST(Rram, memory_3)		! mem 3  1297.550
	ldi 9
	str Rram

	inc Rram
	ldi 7
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 0
	str Rram

	FLIP(WDR)

	ADJUST(Rram, memory_4)		! mem 4  1297.575
	ldi 9
	str Rram

	inc Rram
	ldi 7
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 7
	str Rram

	inc Rram
	ldi 5
	str Rram

	ADJUST(Rram, memory_5)		! mem 5  1298.400
	ldi 9
	str Rram

	inc Rram
	ldi 8
	str Rram

	inc Rram
	ldi 4
	str Rram

	inc Rram
	ldi 0
	str Rram
	
	inc Rram
	ldi 0
	str Rram

	ADJUST(Rram, memory_6)		! mem 6  1298.500
	ldi 9
	str Rram

	inc Rram
	ldi 8
 str Rram

 inc Rram
 ldi 5
 str Rram

 inc Rram
 ldi 0
 str Rram

 inc Rram
 ldi 0
 str Rram

 FLIP(WDR)

 ADJUST(Rram, memory_7)  ! mem 7  1297.050
 ldi 9
 str Rram

 inc Rram
 ldi 7
 str Rram

 inc Rram
 ldi 0
 str Rram

 inc Rram
 ldi 5
 str Rram

 inc Rram
 ldi 0
 str Rram

 ADJUST(Rram, memory_8)  ! mem 8  1297.025
 ldi 9
 str Rram

 inc Rram
 ldi 7
 str Rram

 inc Rram
 ldi 0
 str Rram

 inc Rram
 ldi 2
 str Rram

 inc Rram
 ldi 5
 str Rram

 ADJUST(Rram, memory_9)  ! mem 9  1297.000
 ldi 9
 str Rram

 inc Rram
 ldi 7
 str Rram

 inc Rram
 ldi 0
 str Rram

 inc Rram
 ldi 0
 str Rram

 inc Rram
 ldi 0
 str Rram

#else
   ! this is for MD59
 ADJUST(Rram, memory_0)  ! mem 0  433.400
 ldi 3
 str Rram

	inc Rram
	ldi 3
	str Rram

	inc Rram
	ldi 4
	str Rram

	inc Rram
	ldi 0
	str Rram

	inc Rram
	ldi 0
	str Rram

	FLIP(WDR)

	ADJUST(Rram, memory_1)		! mem 1  433.500
	ldi 3
	str Rram

	inc Rram
	ldi 3
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 0
	str Rram

	inc Rram
	ldi 0
	str Rram

	ADJUST(Rram, memory_2)		! mem 2  433.525
	ldi 3
	str Rram

	inc Rram
	ldi 3
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 2
	str Rram

 inc Rram
 ldi 5
 str Rram

 ADJUST(Rram, memory_3)  ! mem 3  433.550
 ldi 3
 str Rram

 inc Rram
 ldi 3
 str Rram

 inc Rram
 ldi 5
 str Rram

 inc Rram
 ldi 5
 str Rram

 inc Rram
 ldi 0
 str Rram

 FLIP(WDR)

 ADJUST(Rram, memory_4)  ! mem 4  433.575
 ldi 3
 str Rram

 inc Rram
 ldi 3
 str Rram

 inc Rram
 ldi 5
 str Rram

 inc Rram
 ldi 7
 str Rram

 inc Rram
 ldi 5
 str Rram

 ADJUST(Rram, memory_5)  ! mem 5  434.400
	ldi 3
	str Rram

	inc Rram
	ldi 4
	str Rram

	inc Rram
	ldi 4
	str Rram

	inc Rram
	ldi 0
	str Rram

	inc Rram
	ldi 0
	str Rram

	ADJUST(Rram, memory_6)		! mem 6  434.500
	ldi 3
	str Rram

	inc Rram
	ldi 4
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 0
	str Rram

	inc Rram
	ldi 0
	str Rram

	FLIP(WDR)

	ADJUST(Rram, memory_7)		! mem 7  434.675
	ldi 3
	str Rram

	inc Rram
	ldi 4
	str Rram

	inc Rram
	ldi 6
	str Rram

	inc Rram
	ldi 7
	str Rram

	inc Rram
	ldi 5
	str Rram

	ADJUST(Rram, memory_8)		! mem 8  434.850
	ldi 3
	str Rram

	inc Rram
	ldi 4
	str Rram

	inc Rram
	ldi 8
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 0
	str Rram

	ADJUST(Rram, memory_9)		! mem 9  434.950
	ldi 3
	str Rram

	inc Rram
	ldi 4
	str Rram

	inc Rram
	ldi 9
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 0
	str Rram
#endif

#ifdef APRS
	ADJUST(Rram, memory_0)  ! mem 0  432.500
	ldi 3
	str Rram

	inc Rram
	ldi 2
	str Rram

	inc Rram
	ldi 5
	str Rram

	inc Rram
	ldi 0
	str Rram

	inc Rram
	ldi 0
	str Rram

        ADJUST(Rram, scan_mode)
        ldi 0
        str Rram

        CALL(go_memory_0)

#endif

	FLIP(WDR)
	LDREG(Rram, ram)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0
	FLIP(WDR)

	RETURN


txillegal:
	SET(ALO)
	SET(KV)
	LIT(BIT_HF)		! NWQ can't transmit here 
				! are we using HF?
	CALL(illegal)
	CALL(display)

1:
	FLIP(WDR)
	bn3 1b
	CALL(input_register)
	glo Rtmp
	ani AUXPTT
	bnz 1b

	DIM(BIT_HF)
	CALL(drawfreq), 0	! Show RX frequency
	CALL(display)

	CLR(ALO)
	CLR(KV)
	RETURN


waitkey:
	CLR(ALO)
1:
	FLIP(WDR)
	bn3 1b

	RETURN


do_99:
	dec Rstk

	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'Y'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)

	ldi 'u'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 't'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi '9'
	str Rstk
	CALL(drawchr)

	ldi '9'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	CALL(display)

	FLIP(WDR)

	LDREG(Rtmp, 0)

	inc Rstk

	FLIP(WDR)

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0
	FLIP(WDR)

	RETURN


show_debug:
	dec Rstk

	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'd'
	str Rstk
	CALL(drawchr)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'b'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'u'
	str Rstk
	CALL(drawchr)

	ldi 'G'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'i'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'n'
	str Rstk
	CALL(drawchr)

	ldi 'f'
	str Rstk
	CALL(drawchr)

	ldi 'o'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	CALL(display)

	FLIP(WDR)

	inc Rstk
	
	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	LDREG(Rtmp2, segs_dl_digit_1)

	dec Rstk

	ADJUST(Rram, debug + 0)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, debug + 1)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, debug + 2)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, debug + 3)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, debug + 4)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, debug + 5)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, debug + 6)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, debug + 7)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, debug + 8)
	ldn Rram
	str Rstk
	CALL(drawchr)

	ADJUST(Rram, debug + 9)
	ldn Rram
	str Rstk
	CALL(drawchr)

	inc Rstk

	CALL(display)

	FLIP(WDR)

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0
	FLIP(WDR)

	RETURN

do_69:
	dec Rstk

	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'Y'
	str Rstk
	CALL(drawchr)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'S'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi 'P'
	str Rstk
	CALL(drawchr)

	ldi 'L'
	str Rstk
 CALL(drawchr)

 ldi 'E'
 str Rstk
 CALL(drawchr)
 FLIP(WDR)

 ldi 'A'
 str Rstk
 CALL(drawchr)

 ldi 'S'
 str Rstk
 CALL(drawchr)

 ldi 'E'
 str Rstk
 CALL(drawchr)
 FLIP(WDR)

 CALL(display)

 FLIP(WDR)

 LDREG(Rtmp, 0)

 inc Rstk

 FLIP(WDR)

 LDREG(Rtmp, 0)
1:
 dec Rtmp
 glo Rtmp
 lbnz 1b
 FLIP(WDR)
 ghi Rtmp
 lbnz 1b   ! longer delay before continuing
 inc Rtmp

 CALL(zerobuf)
 CALL(drawpower)
 CALL(upd_rptr_icons)
 CALL(dovola), 0
 FLIP(WDR)

 RETURN


shutdown:
	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'B'
	str Rstk
	CALL(drawchr)

	ldi 'Y'
	str Rstk
	CALL(drawchr)

	ldi 'E'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi '-'
	str Rstk
	CALL(drawchr)

	ldi 'B'
	str Rstk
	CALL(drawchr)

	ldi 'Y'
	str Rstk
	CALL(drawchr)

	ldi 'E'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)

	ldi '7'
	str Rstk
	CALL(drawchr)

	ldi '3'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	LIT(BIT_KEYLIGHT)
	LIT(BIT_LCDLIGHT)

	CALL(display)	
	CALL(display)

	FLIP(WDR)

	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before switching off

#if 1
	SET(OFF1)
	CLR(OFF1)
#endif
	SET(OFF1)
	CLR(WDR)
	br .

1:
	sex Rstk
#if XXX
	ret
#else
	dis
#endif

!int:
!	dec Rstk
!	sav
!	lbr 1b

	.align 8
int:
	dec Rstk
	sav
	lbr 1b

error:
	dec Rstk

	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'r'
	str Rstk
	CALL(drawchr)

	ldi 'r'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'o'
	str Rstk
	CALL(drawchr)

	ldi 'r'
	str Rstk
	CALL(drawchr)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)

	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)

	FLIP(WDR)

	CALL(display)

	FLIP(WDR)

	inc Rstk
	
	LDREG(Rtmp, 0)
1:
	dec Rtmp
	glo Rtmp
	lbnz 1b
	FLIP(WDR)
	ghi Rtmp
	lbnz 1b			! longer delay before continuing
	inc Rtmp

	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0
	FLIP(WDR)

	RETURN

illegal:
	dec Rstk

	LDREG(Rtmp2, segs_dl_digit_1)

	ldi 'I'
	str Rstk
	CALL(drawchr)

	ldi 'L'
	str Rstk
	CALL(drawchr)

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi 'E'
	str Rstk
	CALL(drawchr)

	ldi 'G'
	str Rstk
	CALL(drawchr)

	ldi 'A'
	str Rstk
	CALL(drawchr)

	ldi 'L'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)

	ldi ' '
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	FLIP(WDR)

	CALL(display)

	FLIP(WDR)

	inc Rstk
	
	RETURN

	.align 8

keypad:

#ifdef DUALRIG
 	CALL(dualrig)		! will doublereturn if we are suspended 
#endif

	SET(ALO)

	CUSEL(KEYPAD)		!	strobe the data into shifter

	PULSE(CLK)

	CUSEL(LCD1)

 ;   ! ignore darkness info

 ldi 0
 plo Rtmp

 PULSE(CLK); glo Rtmp ; shl ; plo Rtmp ; b1 1f; inc Rtmp ; 1:
 PULSE(CLK); glo Rtmp ; shl ; plo Rtmp ; b1 1f; inc Rtmp ; 1:
 PULSE(CLK); glo Rtmp ; shl ; plo Rtmp ; b1 1f; inc Rtmp ; 1:
 PULSE(CLK); glo Rtmp ; shl ; plo Rtmp ; b1 1f; inc Rtmp ; 1:
 PULSE(CLK); glo Rtmp ; shl ; plo Rtmp ; b1 1f; inc Rtmp ; 1:

#ifdef CU59
 PULSE(CLK) ! 2 buttons connected specially
 b1 1f
 glo Rtmp
 ori 0x20
 plo Rtmp
1:
#endif
#ifdef CU53
 PULSE(CLK) ! Shift state is bit 5
 bn1 1f  ! Note here bn1, not the b1 above
 glo Rtmp
 ori 0x20
 plo Rtmp
1:
#endif

 ADJUST(Rram, keycode)
 glo Rtmp
 str Rram

 glo Rtmp
 adi LO(keytbl)
 plo Rtbl

 ADJUST(Rram, key)
 ldn Rtbl
 str Rram

#if 0
 ADJUST(Rram, keycode)
 ldn Rram
 dec Rstk
 str Rstk
 LDREG(Rtmp2, segs_u_digit_3)
 CALL(drawhex)
 inc Rstk
#endif

 RETURN


display:
#ifdef DUALRIG
  CALL(dualrig)  ! will doublereturn if we are suspended
#endif
 ADJUST(Rptr, segments)

 CUSEL(LCD2)

 CUSEL(LCD1)
 CALL(display_group)
 CALL(display_bit_zero)

 CUSEL(LCD2)
 CALL(display_group)
 CALL(display_bit_zero)

 CUSEL(LCD1)
 CALL(display_group)
 CALL(display_bit_one)

 CUSEL(LCD2)
 CALL(display_group)
 CALL(display_bit_one)

 CUSEL(LCD1)
 CALL(display_byte)

 CUSEL(LATCH)
 CUSEL(LCD1)

 RETURN

display_group:
 CALL(display_bit_zero)
 CALL(display_byte)
 CALL(display_byte)
 CALL(display_byte)
 CALL(display_byte)

 RETURN

display_byte:

 ldn Rptr; ani 0x01; smi 1; CALL(display_bit)
	ldn Rptr; ani 0x02; smi 1; CALL(display_bit)
	ldn Rptr; ani 0x04; smi 1; CALL(display_bit)
	ldn Rptr; ani 0x08; smi 1; CALL(display_bit)

	ldn Rptr; ani 0x10; smi 1; CALL(display_bit)
	ldn Rptr; ani 0x20; smi 1; CALL(display_bit)
	ldn Rptr; ani 0x40; smi 1; CALL(display_bit)
	ldn Rptr; ani 0x80; smi 1; CALL(display_bit)

	inc Rptr

	FLIP(WDR)
	RETURN

display_bit:
	lbnf display_bit_zero
	lbr  display_bit_one

display_bit_zero:
	CLR(DP)
	PULSE(CLK)
	CLR(DP)

	RETURN

display_bit_one:
	SET(DP)
	PULSE(CLK)
	CLR(DP)

	RETURN

drawhex:
	FLIP(WDR)

	dec Rstk
	ldn Rbp
	shr4
	str Rstk
	CALL(drawdig)
	ldn Rbp
	ani 0xF
	str Rstk
	CALL(drawdig)
	inc Rstk

	RETURN

drawdig:
	ldn Rbp
	smi 10
	lsnf; adi 'A' - 10 - '0'
	adi 10 + '0'
	dec Rstk
	str Rstk
	CALL(drawchr)
	inc Rstk

	RETURN

drawfixed:

	dec Rstk
	lda Rarg
	str Rstk
	CALL(drawchr)
	inc Rstk
	RETURN

drawchr:

	ldn Rbp
	ani 0x7F
	plo Rtmp		! Rtmp -> segment bits
	ldi HI(font)		; ASSERT(LO(font) == 0)
	phi Rtmp

	dec Rstk

	lda Rtmp2; str Rstk; ldn Rtmp; ani 0x01; smi 1; CALL(segment_onoff)
	lda Rtmp2; str Rstk; ldn Rtmp; ani 0x02; smi 1; CALL(segment_onoff)
	lda Rtmp2; str Rstk; ldn Rtmp; ani 0x04; smi 1; CALL(segment_onoff)
	lda Rtmp2; str Rstk; ldn Rtmp; ani 0x08; smi 1; CALL(segment_onoff)

	lda Rtmp2; str Rstk; ldn Rtmp; ani 0x10; smi 1; CALL(segment_onoff)
	lda Rtmp2; str Rstk; ldn Rtmp; ani 0x20; smi 1; CALL(segment_onoff)
	lda Rtmp2; str Rstk; ldn Rtmp; ani 0x40; smi 1; CALL(segment_onoff)

	inc Rstk

	RETURN

marker_on:
	lda Rarg
	dec Rstk
	str Rstk
	CALL(segment_on)
	inc Rstk
	RETURN

marker_off:
	lda Rarg
	dec Rstk
	str Rstk
	CALL(segment_off)
	inc Rstk
	RETURN

segment_onoff:
	lbnf segment_off

segment_on:

	ldn Rbp
	ani 7				! bit-offset in byte
	adi LO(setbit)
	plo Rtbl

	ldn Rbp
	shr					! /= 2
	shr					! /= 4
	shr					! /= 8, byte-offset in segments
	ani 15
	adi LO(segments)
	plo Rram

	ldn Rtbl
	sex Rram
	or
	str Rram

	RETURN

segment_off:

	ldn Rbp
	ani 7
	adi LO(clrbit)
	plo Rtbl

	ldn Rbp
	shr
	shr
	shr					! bit-offset into byte
	ani 15
	adi LO(segments)
	plo Rram

	ldn Rtbl
	sex Rram
	and
	str Rram

	RETURN

segment_flip:

	ldn Rbp
	ani 7
	adi LO(setbit)
	plo Rtbl

	ldn Rbp
	shr
	shr
	shr					! bit-offset into byte
	ani 15
	adi LO(segments)
	plo Rram

	ldn Rtbl
	sex Rram
	xor
	str Rram

	RETURN

	.align 8

scanner_run:

	glo Rtmp			! 1.87
	ani PORTABLE
	bz 1f

	ADJUST(Rram, lighttimer)
	ldn Rram
	smi 1				! 2.05A was 4 (but if 1,2,3) ... never zero...
	str Rram
	bnz 1f
	inc Rram
	ldn Rram
	smi 1
	str Rram
	bnz 1f
	ldi 10
	str Rram
	FLIP(WDR)
	DIM(BIT_LCDLIGHT)
	DIM(BIT_KEYLIGHT)
	CALL(display)
1:					! 1.87

	ADJUST(Rram, indicators)
	ldn Rram
	ani MASK(BIT_SERV)			! if busy 
	bnz 1f
	ADJUST(Rram, sq_forced)
	ldn Rram
	bnz 1f

scanner_run_now:

	ADJUST(Rram, car)		! 
	ldi 0
	str Rram			! zero carrier counter for recounting up

	CALL(zerobuf)
	CALL(scanner_step)	! next scanned channel  -> point of entry for the new scanning routine
	CALL(def_repeater)	! show repeater status
	CALL(drawfreq), 0		! show frequency
	CALL(display)		! Only for additional delay
	RETURN
1:

!
! Channel busy (SERV_ON) bail out from scanning
!___________________________________________________

	ADJUST(Rram, channel)
	ADJUST(Rptr, vipchannel)
	lda Rram
	str Rptr
	inc Rptr
	ldn Rram
	str Rptr

	CALL(drawfreq), 0
	CALL(display)

	RETURN

scanner_start:

#ifndef ME59
	ADJUST(Rram, car)
	ldi 0
	str Rram
#endif

	ADJUST(Rram, scan_mode)
	ldi 1
	str Rram

	ADJUST(Rram, channel)
	ADJUST(Rptr, vipchannel)
	lda Rram
	str Rptr
	inc Rptr
	ldn Rram
	str Rptr

	CALL(scanner_step)

	CALL(zerobuf)

	ADJUST(Rram, sq_forced)
	ldi 0
	str Rram
	CALL(marker_off), SEG_N

	CLR(HF)
	CLR(EAR)
	FLIP(WDR)

	CALL(display)

	RETURN

scanner_stop:

	ADJUST(Rram, scan_mode)
	ldn Rram
	bnz 1f
	RETURN
1:
	ldi 0
	str Rram

	ADJUST(Rram, vipchannel)
	ADJUST(Rptr, channel)
	lda Rram
	str Rptr
	inc Rptr
	ldn Rram
	str Rptr

	ADJUST(Rram, car)
	ldi 0
	str Rram			! zero carrier counter for recounting up

	FLIP(WDR)
	CALL(def_repeater)
	CALL(rxsynth), 0
	CALL(drawfreq), 0

	CALL(marker_off), SEG_SCAN1
	CALL(marker_off), SEG_SCAN2


	CALL(display)

	RETURN


scanner_step:
!	LDREG(Rtmp2, 100)		! Safety for full block. ! NWQ I don't think this is needed
	FLIP(WDR)

	ADJUST(Rram, twiddle)
	ldn Rram
	xri 1
	str Rram
	ani 1
	lbz 1f
	CALL(marker_off), SEG_SCAN1
	CALL(marker_on),  SEG_SCAN2
	lbr 2f
1:
	CALL(marker_on),  SEG_SCAN1
	CALL(marker_off), SEG_SCAN2
2:
	FLIP(WDR)

!
! NEW scanning routine...  version >= 2.06	(OH3NWQ)
!-----------------------------------------------------------------------

! scan_num = 0 ... NUM_MEM-1, 0 ... NUM_DUP-1, 0 ... NUM_SIMP-1 
!
! ! @ boot set scan_num = -1, scan_which = SC_MEMORY	! done
!

!  inc scan_num							! done
	ADJUST(Rram, scan_num)
	ldn Rram
	adi 1
	str Rram
 
! if scan_which = SC_REPEATER	lbr scanner_rep		! done
	ADJUST(Rram, scan_which)
	ldn Rram
	smi SC_REPEATER
	lbz scanner_rep

! if scan_which = SC_SIMPLEX	lbr scanner_simp		! done
	ADJUST(Rram, scan_which)
	ldn Rram
	smi SC_SIMPLEX
	lbz scanner_simp

scanner_memo:

!  if scan_mem = 0 => repeater
	ADJUST(Rram, scan_mem)
	ldn Rram
	lbz 2f

!  if scan_num = NUM_MEM					! done
	ADJUST(Rram, scan_num)
	ldn Rram
	smi NUM_MEM
	lbnz 1f

!     { scan_num = -1						! done
!	scan_which = SC_REPEATER				! done
!	jmp scan_rep (or RETURN) }				! done
2:
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	ADJUST(Rram, scan_which)
	ldi SC_REPEATER
	str Rram

	FLIP(WDR)
	RETURN
1:
!  goto mem(scan_num)						!done
	ADJUST(Rram, scan_num)
	ldn Rram
	smi 1
	lbnz 1f

	ADJUST(Rram, mode_1)
	ldn Rram
	ani MEMOSKIP 				
	lbz go_memory_1
	lbr scanner_step 

1:
	ADJUST(Rram, scan_num)
	ldn Rram
	smi 2
	lbnz 1f

	ADJUST(Rram, mode_2)
	ldn Rram
	ani MEMOSKIP				
	lbz go_memory_2
	lbr scanner_step 

1:
	ADJUST(Rram, scan_num)
	ldn Rram
	smi 3
	lbnz 1f

	ADJUST(Rram, mode_3)
	ldn Rram
	ani MEMOSKIP 				
	lbz go_memory_3
	lbr scanner_step 

1:
	ADJUST(Rram, scan_num)
	ldn Rram
	smi 4
	lbnz 1f

	ADJUST(Rram, mode_4)
	ldn Rram
	ani MEMOSKIP 				
	lbz go_memory_4
	lbr scanner_step 

1:
	ADJUST(Rram, scan_num)
	ldn Rram
	smi 5
	lbnz 1f

	ADJUST(Rram, mode_5)
	ldn Rram
	ani MEMOSKIP 				
	lbz go_memory_5
	lbr scanner_step 

1:
	ADJUST(Rram, scan_num)
	ldn Rram
	smi 6
	lbnz 1f

	ADJUST(Rram, mode_6)
	ldn Rram
	ani MEMOSKIP 				
	lbz go_memory_6
	lbr scanner_step 

1:
	ADJUST(Rram, scan_num)
	ldn Rram
	smi 7
	lbnz 1f

	ADJUST(Rram, mode_7)
	ldn Rram
	ani MEMOSKIP 				
	lbz go_memory_7
	lbr scanner_step 

1:
	ADJUST(Rram, scan_num)
	ldn Rram
	smi 8
	lbnz 1f

	ADJUST(Rram, mode_8)
	ldn Rram
	ani MEMOSKIP 				
	lbz go_memory_8
	lbr scanner_step 

1:
	ADJUST(Rram, scan_num)
	ldn Rram
	smi 9
	lbnz 1f

	ADJUST(Rram, mode_9)
	ldn Rram
	ani MEMOSKIP 				
	lbz go_memory_9
	lbr scanner_step 

1:
	ADJUST(Rram, scan_num)
	ldn Rram
	smi 0
	lbnz 1f

	ADJUST(Rram, mode_0)
	ldn Rram
	ani MEMOSKIP 				
	lbz go_memory_0
	lbr scanner_step 

1:
	lbr 2b				! we shouldn't be here


scanner_rep:
!  if scan_num = NUM_DUP or /scan_rep			! done

	ADJUST(Rram, scan_rep)
	ldn Rram
	lbz 2f

	ADJUST(Rram, scan_num)
	ldn Rram
	smi NUM_DUP
	lbnz 1f
	
!     { scan_num = -1						! done
!	scan_which = SC_SIMPLEX					! done
!	jmp scan_simp (or RETURN)}				! done
2:
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	ADJUST(Rram, scan_which)
	ldi SC_SIMPLEX
	str Rram

	FLIP(WDR)
	RETURN
1:
!  goto rep(scan_num)	!!	!!	!!			! done
	
	ADJUST(Rram, scan_num)
	ldn Rram
!	str Rtmp
	plo Rtmp
	
	LDREG(Rtmp2, duplex)
	lbr sc_finish

scanner_simp:
!  if scan_num = NUM_SIMP or /scan_simp			!done

	ADJUST(Rram, scan_simp)
	ldn Rram
!	smi 0
	lbz 2f

	ADJUST(Rram, scan_num)
	ldn Rram
	smi NUM_SIMP
	lbnz 1f
	
!     { scan_num = -1						! done
!	scan_which = SC_MEMORY					! done
!	jmp scan_start (or RETURN)}				! done
2:
	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	FLIP(WDR)
	RETURN
1:
!  goto simp(scan_num)	!!	!!	!!			! done
	
	ADJUST(Rram, scan_num)
	ldn Rram
	plo Rtmp

	LDREG(Rtmp2, simplex)

!  jmp sc_finish    						! done
!	lbr sc_finish ! not needed as sc_finish is the next command

sc_finish:

1:
	glo Rtmp
	lbz 1f
	inc Rtmp2; inc Rtmp2
	dec Rtmp
	lbr 1b
1:
	ADJUST(Rram, channel)
	lda Rtmp2
	str Rram
	inc Rram
	ldn Rtmp2
	str Rram
2:
	FLIP(WDR)

	ADJUST(Rptr, rejects)		! Check if this channel is rejected
	ADJUST(Rram, channel)
	sex Rram

	lda Rptr; sm; lbnz 1f; inc Rram; ldn Rptr; sm; lbz 2f; dec Rram; 1: inc Rptr
	lda Rptr; sm; lbnz 1f; inc Rram; ldn Rptr; sm; lbz 2f; dec Rram; 1: inc Rptr
	lda Rptr; sm; lbnz 1f; inc Rram; ldn Rptr; sm; lbz 2f; dec Rram; 1: inc Rptr
	lda Rptr; sm; lbnz 1f; inc Rram; ldn Rptr; sm; lbz 2f; dec Rram; 1: inc Rptr

	lda Rptr; sm; lbnz 1f; inc Rram; ldn Rptr; sm; lbz 2f; dec Rram; 1: inc Rptr
	lda Rptr; sm; lbnz 1f; inc Rram; ldn Rptr; sm; lbz 2f; dec Rram; 1: inc Rptr
	lda Rptr; sm; lbnz 1f; inc Rram; ldn Rptr; sm; lbz 2f; dec Rram; 1: inc Rptr
	lda Rptr; sm; lbnz 1f; inc Rram; ldn Rptr; sm; lbz 2f; dec Rram; 1: inc Rptr
	lbr 1f
2:
	FLIP(WDR)

	dec Rtmp2
	glo Rtmp2
	lbnz scanner_step		! was rejected so step again

	lbr scanner_stop		! Oops.

1:
	CALL(def_repeater)	! continue with accepted channel
	CALL(zerobuf)
	CALL(rxsynth), 0
	CALL(drawfreq), 0	
	FLIP(WDR)
	RETURN


txpower_0:
	ldi 0
	lskp
txpower_1:
	ldi 1
	lskp
txpower_2:
	ldi 2
	lskp
#ifdef NOHIPOWER
txpower_3:
	ldi 2
#else
txpower_3:
	ldi 3
#endif
	plo Rtmp
	ADJUST(Rram, txpower)
	glo Rtmp
	str Rram
	CALL(zerobuf)
	CALL(drawpower)
	CALL(drawfreq), 0
	RETURN

scanner_reject_go:

	CALL(marker_on), SEG_KEY

	ADJUST(Rptr, reject_idx)
	ldn Rptr
	adi 2
	ani 15
	str Rptr
	adi LO(rejects)
	plo Rptr

	ADJUST(Rram, vipchannel)
	lda Rram
	str Rptr
	inc Rptr
	ldn Rram
	str Rptr

	lbr scanner_run_now

scanner_clear_rejects:

	CALL(marker_off), SEG_KEY

	ADJUST(Rram, rejects + 15)
	sex Rram
	ldi 0
	stxd; stxd
	stxd; stxd
	stxd; stxd
	stxd; stxd

	stxd; stxd
	stxd; stxd
	stxd; stxd
	stxd; stxd
	
	ADJUST(Rram, mode_0)
	ldn Rram
	ani ~MEMOSKIP
	str Rram

	ADJUST(Rram, mode_1)
	ldn Rram
	ani ~MEMOSKIP
	str Rram

	ADJUST(Rram, mode_2)
	ldn Rram
	ani ~MEMOSKIP	
	str Rram

	ADJUST(Rram, mode_3)
	ldn Rram
	ani ~MEMOSKIP	
	str Rram

	ADJUST(Rram, mode_4)
	ldn Rram
	ani ~MEMOSKIP	
	str Rram

	ADJUST(Rram, mode_5)
	ldn Rram
	ani ~MEMOSKIP	
	str Rram

	ADJUST(Rram, mode_6)
 ldn Rram
 ani ~MEMOSKIP 
 str Rram

 ADJUST(Rram, mode_7)
 ldn Rram
 ani ~MEMOSKIP 
 str Rram

 ADJUST(Rram, mode_8)
 ldn Rram
 ani ~MEMOSKIP 
 str Rram

 ADJUST(Rram, mode_9)
 ldn Rram
 ani ~MEMOSKIP 
 str Rram

 RETURN

do_this_scan:

 FLIP(WDR)

 ADJUST(Rram, digbuf)
 ldn Rram
 smi 1
 lbz do_scan_1

 ldn Rram
 smi 2
 lbz do_scan_2

 ldn Rram
 smi 3
 lbz do_scan_3

 ldn Rram
 smi 4
 lbz do_scan_4

 ldn Rram
 smi 4
 lbz do_scan_4

 ldn Rram
	smi 5
	lbz do_scan_5

	ldn Rram
	smi 6
	lbz do_scan_6

	ldn Rram
	smi 7
	lbz do_scan_7

	ldn Rram
	smi 8
	lbz do_scan_8

	ldn Rram
	smi 9
	lbz do_scan_9

	lbz do_scan_0


do_scan_0:
	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	ADJUST(Rram, scan_mem)
	ldi 0
	str Rram

	ADJUST(Rram, scan_simp)
	ldi 0
	str Rram

	ADJUST(Rram, scan_rep)
	ldi 0
	str Rram

	ADJUST(Rram, scan_num)
	ldi -1
	str Rram
	
	lbr scanner_start

do_scan_1:


	ADJUST(Rram, scan_which)
	ldi SC_REPEATER
	str Rram

	ADJUST(Rram, scan_mem)
	ldi 0
	str Rram

	ADJUST(Rram, scan_simp)
	ldi 0
	str Rram

	ADJUST(Rram, scan_rep)
	ldi 1
	str Rram

	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	lbr scanner_start
	

do_scan_2:
	ADJUST(Rram, scan_which)
	ldi SC_SIMPLEX
	str Rram

	ADJUST(Rram, scan_mem)
	ldi 0
	str Rram

	ADJUST(Rram, scan_simp)
	ldi 1
	str Rram

	ADJUST(Rram, scan_rep)
	ldi 0
	str Rram

	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	lbr scanner_start

do_scan_3:
!
! insert here 12__5678_0 to show which channels are scanned
!
	
	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ADJUST(Rram, mode_1)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '1'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_2)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '2'
 str Rstk
 CALL(drawchr)
 lbr 2f
1:
 ldi '_'
 str Rstk
 CALL(drawchr)

2:
 ADJUST(Rram, mode_3) 
 ldn Rram
 ani MEMOSKIP
 lbnz 1f

 ldi '3'
 str Rstk
 CALL(drawchr)
 lbr 2f
1:
 ldi '_'
 str Rstk
 CALL(drawchr)

2:
 ADJUST(Rram, mode_4) 
 ldn Rram
 ani MEMOSKIP
 lbnz 1f

 ldi '4'
 str Rstk
 CALL(drawchr)
 lbr 2f
1:
 ldi '_'
 str Rstk
 CALL(drawchr)

2:
 ADJUST(Rram, mode_5) 
 ldn Rram
 ani MEMOSKIP
 lbnz 1f

 ldi '5'
 str Rstk
 CALL(drawchr)
 lbr 2f
1:
 ldi '_'
 str Rstk
 CALL(drawchr)

2:
 ADJUST(Rram, mode_6) 
 ldn Rram
 ani MEMOSKIP
 lbnz 1f

 ldi '6'
 str Rstk
 CALL(drawchr)
 lbr 2f
1:
 ldi '_'
 str Rstk
 CALL(drawchr)

2:
 ADJUST(Rram, mode_7) 
 ldn Rram
 ani MEMOSKIP
 lbnz 1f

 ldi '7'
 str Rstk
 CALL(drawchr)
 lbr 2f
1:
 ldi '_'
 str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_8)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '8'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_9)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '9'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)


2:
	ADJUST(Rram, mode_0)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '0'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)
2:

	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)

	FLIP(WDR)

	inc Rstk
	

	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	ADJUST(Rram, scan_mem)
	ldi 1
	str Rram

	ADJUST(Rram, scan_simp)
	ldi 0
	str Rram

	ADJUST(Rram, scan_rep)
	ldi 0
	str Rram

	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	lbr scanner_start
	
	
do_scan_4:
	ADJUST(Rram, scan_which)
	ldi SC_SIMPLEX
	str Rram

	ADJUST(Rram, scan_mem)
	ldi 0
	str Rram

	ADJUST(Rram, scan_simp)
	ldi 1
	str Rram

	ADJUST(Rram, scan_rep)
	ldi 1
	str Rram

	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	lbr scanner_start

do_scan_5:
!
! insert here 12__5678_0 to show which channels are scanned
!
	
	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ADJUST(Rram, mode_1)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '1'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_2)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '2'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_3)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '3'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_4)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '4'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_5)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '5'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_6)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '6'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_7)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '7'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_8)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '8'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_9)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '9'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)


2:
	ADJUST(Rram, mode_0)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '0'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)
2:

	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)

	FLIP(WDR)

	inc Rstk
	

	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	ADJUST(Rram, scan_mem)
	ldi 1
	str Rram

	ADJUST(Rram, scan_simp)
	ldi 1
	str Rram

	ADJUST(Rram, scan_rep)
	ldi 1
	str Rram

	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	lbr scanner_start

do_scan_6:
!
! insert here 12__5678_0 to show which channels are scanned
!
	
	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ADJUST(Rram, mode_1)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '1'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_2)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '2'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_3)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '3'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_4)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '4'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_5)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '5'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_6)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '6'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_7)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '7'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_8)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '8'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_9)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '9'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_0)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '0'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)
2:

	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)

	FLIP(WDR)

	inc Rstk
	
	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	ADJUST(Rram, scan_mem)
	ldi 1
	str Rram

	ADJUST(Rram, scan_simp)
	ldi 0
	str Rram

	ADJUST(Rram, scan_rep)
	ldi 0
	str Rram

	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	lbr scanner_start

do_scan_7:
!
! insert here 12__5678_0 to show which channels are scanned
!
	
	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ADJUST(Rram, mode_1)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '1'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_2)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '2'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_3)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '3'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_4)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '4'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_5)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '5'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_6)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '6'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_7)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '7'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_8)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '8'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_9)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '9'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)


2:
	ADJUST(Rram, mode_0)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '0'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)
2:

	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)

	FLIP(WDR)

	inc Rstk
	
	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	ADJUST(Rram, scan_mem)
	ldi 1
	str Rram

	ADJUST(Rram, scan_simp)
	ldi 0
	str Rram

	ADJUST(Rram, scan_rep)
	ldi 1
	str Rram

	ADJUST(Rram, scan_num)
	ldi -1
 str Rram

 lbr scanner_start

do_scan_8:
!
! insert here 12__5678_0 to show which channels are scanned
!
 
 dec Rstk
 LDREG(Rtmp2, segs_dl_digit_1)

 ADJUST(Rram, mode_1) 
 ldn Rram
 ani MEMOSKIP
 lbnz 1f

 ldi '1'
 str Rstk
 CALL(drawchr)
 lbr 2f
1:
 ldi '_'
 str Rstk
 CALL(drawchr)

2:
 ADJUST(Rram, mode_2) 
 ldn Rram
 ani MEMOSKIP
 lbnz 1f

 ldi '2'
 str Rstk
 CALL(drawchr)
 lbr 2f
1:
 ldi '_'
 str Rstk
 CALL(drawchr)

2:
 ADJUST(Rram, mode_3) 
 ldn Rram
 ani MEMOSKIP
 lbnz 1f

	ldi '3'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_4)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '4'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_5)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '5'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_6)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '6'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_7)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '7'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_8)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '8'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_9)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '9'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)


2:
	ADJUST(Rram, mode_0)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '0'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)
2:

	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)

	FLIP(WDR)

	inc Rstk
	
	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	ADJUST(Rram, scan_mem)
	ldi 1
	str Rram

	ADJUST(Rram, scan_simp)
	ldi 1
	str Rram

	ADJUST(Rram, scan_rep)
	ldi 0
	str Rram

	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	lbr scanner_start

do_scan_9:
!
! insert here 12__5678_0 to show which channels are scanned
!
	
	dec Rstk
	LDREG(Rtmp2, segs_dl_digit_1)

	ADJUST(Rram, mode_1)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '1'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_2)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '2'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_3)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '3'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_4)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '4'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_5)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '5'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_6)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '6'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_7)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '7'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_8)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '8'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
	ldi '_'
	str Rstk
	CALL(drawchr)

2:
	ADJUST(Rram, mode_9)	
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ldi '9'
	str Rstk
	CALL(drawchr)
	lbr 2f
1:
 ldi '_'
 str Rstk
 CALL(drawchr)


2:
 ADJUST(Rram, mode_0) 
 ldn Rram
 ani MEMOSKIP
 lbnz 1f

 ldi '0'
 str Rstk
 CALL(drawchr)
 lbr 2f
1:
 ldi '_'
 str Rstk
 CALL(drawchr)
2:

 CALL(display)
 CALL(display)
 CALL(display)
 CALL(display)
 CALL(display)
 CALL(display)
 CALL(display)
 CALL(display)
 CALL(display)
 CALL(display)
 CALL(display)

 FLIP(WDR)

 inc Rstk
 
 ADJUST(Rram, scan_which)
 ldi SC_MEMORY
 str Rram

 ADJUST(Rram, scan_mem)
 ldi 1
 str Rram

 ADJUST(Rram, scan_simp)
 ldi 1
	str Rram

	ADJUST(Rram, scan_rep)
	ldi 1
	str Rram

	ADJUST(Rram, scan_num)
	ldi -1
	str Rram

	lbr scanner_start


scanner_start_XXX:

	ADJUST(Rram, dig_idx)
	ldn Rram
	smi 1
	lbz do_this_scan

	ldn Rram
	smi 3
	lbz 1f	

	ldn Rram
	lbz scanner_start

	ldn Rram
	smi 4
	lbz reset_settings	

	CALL(error)
	lbr scanner_start

1:
	dec Rstk			! NXO's display segment test program 123(HF)
	ldi 0
	str Rstk

	FLIP(WDR)

	ADJUST(Rram, digbuf)
	lda Rram
	plo Rtmp
1:
	glo Rtmp
	lbz 2f
	ldn Rstk
	adi 100
	str Rstk
	dec Rtmp
	lbr 1b
2:
	lda Rram
	plo Rtmp
1:
	glo Rtmp
	lbz 2f
	ldn Rstk
	adi 10
	str Rstk
	dec Rtmp
	lbr 1b
2:
	ldn Rstk
	sex Rram
	add
	str Rstk

	CALL(segment_flip)

	inc Rstk

	CALL(display)

	RETURN

show_lowbatt:
	CALL(marker_on), SEG_LOWBATT		! NWQ this stays on  
	CALL(display)				! until the display is repainted 
	RETURN					! with 88#

#ifdef CU59
show_offhook:			
	CALL(marker_on), SEG_OFFHOOK		! NWQ
	CALL(display)
	RETURN

show_onhook:
	CALL(marker_off), SEG_OFFHOOK		! NWQ
	CALL(display)
	RETURN
#endif	

set_onhook:
	ADJUST(Rram, onhook)
	ldi 1
	str Rram
	RETURN

set_offhook:
	ADJUST(Rram, onhook)
	ldi 0
	str Rram
	RETURN

toggle_rptr:
	ADJUST(Rram, rptr)
	ldn Rram
	ani 1
	xri 1
	str Rram
	CALL(upd_rptr_icons)
	CALL(zerobuf)
	CALL(drawfreq), 0
	CALL(display)
	RETURN

rep_76:
	ADJUST(Rram, rptr_76)			! NWQ
	ldn Rram
	ani 1
	xri 1
	str Rram
	CALL(upd_rptr_icons)
	CALL(zerobuf)
	CALL(drawfreq), 0
	CALL(display)
	RETURN

pos_rep:
	ADJUST(Rram, rptr_pos)			! NWQ
	ldn Rram
	ani 1
	xri 1
	str Rram
	CALL(upd_rptr_icons)
	CALL(zerobuf)
	CALL(drawfreq), 0
	CALL(display)
	RETURN

toggle_rep_scan:
	ADJUST(Rram, scan_rep)
	ldn Rram
	ani 1
	xri 1
	str Rram

	ADJUST(Rram, scan_num)		! this has to be done
	ldi -1
	str Rram

	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	CALL(upd_rptr_icons)
	CALL(zerobuf)
	CALL(drawfreq), 0
	CALL(display)
	RETURN

toggle_simp_scan:
	ADJUST(Rram, scan_simp)
	ldn Rram
	ani 1
	xri 1
	str Rram

	ADJUST(Rram, scan_num)		! this has to be done
	ldi -1
	str Rram

	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	CALL(upd_rptr_icons)
	CALL(zerobuf)
	CALL(drawfreq), 0
	CALL(display)
	RETURN

toggle_mem_scan:
	ADJUST(Rram, scan_mem)
	ldn Rram
	ani 1
	xri 1
	str Rram

	ADJUST(Rram, scan_num)		! this has to be done
	ldi -1
	str Rram

	ADJUST(Rram, scan_which)
	ldi SC_MEMORY
	str Rram

	CALL(upd_rptr_icons)
	CALL(zerobuf)
	CALL(drawfreq), 0
	CALL(display)
	RETURN

set_lights_on:
	ADJUST(Rram, lights_on)
	ldn Rram
	ani 1
	xri 1
	str Rram

	ADJUST(Rram, lights_on)		! NWQ if lights permanently on...
	ldn Rram
	lbz 1f	

	LIT(BIT_LCDLIGHT)
	LIT(BIT_KEYLIGHT)	
	lbr 2f
1:
	DIM(BIT_LCDLIGHT)
	DIM(BIT_KEYLIGHT)	
2:
	CALL(upd_rptr_icons)
	CALL(zerobuf)
	CALL(drawfreq), 0
	CALL(display)
	RETURN

band_show:
	FLIP(WDR)
        dec Rstk
        LDREG(Rtmp2, segs_u_digit_5)

#ifdef ME59
#ifdef X81
	ldi 0x81		
	str Rstk
	CALL(drawhex)
	ldi ' '
	str Rstk
	CALL(drawchr)
#else
 ldi 0x12  
 str Rstk
 CALL(drawhex)
 ldi '6'
 str Rstk
 CALL(drawchr)
#endif

#else 
 !/ME59

#ifdef X214
 ldi 0x21  
 str Rstk
 CALL(drawhex)
 ldi '4'
 str Rstk
 CALL(drawchr)
#else
 ldi 0x31  
 str Rstk
 CALL(drawhex)
 ldi '4'
 str Rstk
 CALL(drawchr)
#endif

#endif  
 !ME59

 FLIP(WDR)

#ifdef GERMAN   
        ldi 'G'     
#else  
        ldi 'F'
#endif
 str Rstk  
 CALL(drawchr) 

 FLIP(WDR)

        ldi '5'
 str Rstk
 CALL(drawchr)

#ifdef CU53
        ldi '3'
#else
        ldi '9'
#endif
	str Rstk
	CALL(drawchr)

	FLIP(WDR)

	LDREG(Rtmp2, segs_dl_digit_1)
#ifdef ME59
#ifdef USA
        ldi ' '
	str Rstk
	CALL(drawchr)
        ldi '9'
	str Rstk
	CALL(drawchr)
        ldi '0'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '2'
	str Rstk
	CALL(drawchr)
        ldi '-'
	str Rstk
	CALL(drawchr)
        ldi '9'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '2'
	str Rstk
	CALL(drawchr)
        ldi '8'
	str Rstk
	CALL(drawchr)
        ldi ' '
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi ' '
	str Rstk
	CALL(drawchr)
#else
        ldi '1'
	str Rstk
	CALL(drawchr)
        ldi '2'
	str Rstk
	CALL(drawchr)
        ldi '4'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '0'
	str Rstk
	CALL(drawchr)
        ldi '-'
	str Rstk
	CALL(drawchr)
        ldi '1'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '3'
	str Rstk
	CALL(drawchr)
        ldi '0'
	str Rstk
	CALL(drawchr)
        ldi '0'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi ' '
	str Rstk
	CALL(drawchr)
#endif
#else
#ifdef FINHAM
        ldi '4'
	str Rstk
	CALL(drawchr)
        ldi '3'
	str Rstk
	CALL(drawchr)
        ldi '2'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '-'
	str Rstk
	CALL(drawchr)
        ldi '4'
	str Rstk
	CALL(drawchr)
        ldi '3'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '8'
	str Rstk
	CALL(drawchr)
        ldi ' '
	str Rstk
	CALL(drawchr)
#endif


#ifdef EUROHAM
        ldi '4'
	str Rstk
	CALL(drawchr)
        ldi '3'
	str Rstk
	CALL(drawchr)
        ldi '0'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '-'
	str Rstk
	CALL(drawchr)
        ldi '4'
	str Rstk
	CALL(drawchr)
        ldi '4'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '0'
	str Rstk
	CALL(drawchr)
        ldi ' '
	str Rstk
	CALL(drawchr)
#endif

#ifdef FREEBAND
        ldi '4'
	str Rstk
	CALL(drawchr)
        ldi '0'
	str Rstk
	CALL(drawchr)
        ldi '0'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '-'
	str Rstk
	CALL(drawchr)
        ldi '4'
	str Rstk
	CALL(drawchr)
        ldi '9'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '0'
	str Rstk
	CALL(drawchr)
        ldi ' '
	str Rstk
	CALL(drawchr)
#endif

#ifdef STEP125
        ldi '1'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '2'
	str Rstk
	CALL(drawchr)
#else
        ldi '2'
	str Rstk
	CALL(drawchr)
	FLIP(WDR)
        ldi '5'
	str Rstk
	CALL(drawchr)
#endif
#endif 
	!MD5x

	inc Rstk

	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	FLIP(WDR)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	FLIP(WDR)

	CALL(waitkey)		! .. until key released.

	FLIP(WDR)
        lbr 1f

display_test:
#ifdef CU53
	CALL(marker_on), SEG_KEY      
	CALL(marker_on), SEG_T        
	CALL(marker_on), SEG_C        
	CALL(marker_on), SEG_COLON_L  
	CALL(marker_on), SEG_COLON_R  
	CALL(marker_on), SEG_BAR_L    
	CALL(marker_on), SEG_BAR_R    
	FLIP(WDR)
	CALL(marker_on), SEG_S        
	CALL(marker_on), SEG_F        
	CALL(marker_on), SEG_D        
	CALL(marker_on), SEG_I        
	CALL(marker_on), SEG_LESS     
	CALL(marker_on), SEG_N        

#endif
#ifdef CU59
	CALL(marker_on), SEG_ARROW    
	CALL(marker_on), SEG_KEY      
	CALL(marker_on), SEG_r        
	CALL(marker_on), SEG_s        
	CALL(marker_on), SEG_t        
	CALL(marker_on), SEG_HANDSET  
	CALL(marker_on), SEG_COLON_R  
	FLIP(WDR)
	CALL(marker_on), SEG_CH       
	CALL(marker_on), SEG_A        
	CALL(marker_on), SEG_D        
	CALL(marker_on), SEG_I        
	CALL(marker_on), SEG_LESS     	
	CALL(marker_on), SEG_S        
	CALL(marker_on), SEG_F        
	CALL(marker_on), SEG_N        
#endif

	FLIP(WDR)

        dec Rstk

        LDREG(Rtmp2, segs_u_digit_5)
	ldi 0x88			
	str Rstk
	CALL(drawhex)
	ldi 0x88			
	str Rstk
	CALL(drawhex)
	ldi 0x88			
	str Rstk
	CALL(drawhex)

	FLIP(WDR)

	LDREG(Rtmp2, segs_dl_digit_1)
	ldi 0x88			
	str Rstk
	CALL(drawhex)
	ldi 0x88			
	str Rstk
	CALL(drawhex)
	ldi 0x88			
	str Rstk
	CALL(drawhex)
	ldi 0x88			
	str Rstk
	CALL(drawhex)
	ldi 0x88			
	str Rstk
	CALL(drawhex)
	FLIP(WDR)

	inc Rstk

	LIT(BIT_AVAIL)
	LIT(BIT_CALL)     
	LIT(BIT_SERV)     
	LIT(BIT_KEYLIGHT) 
	LIT(BIT_ROAM)     
	LIT(BIT_HF)       
	LIT(BIT_LCDLIGHT)
	LIT(BIT_BRIGHT)   
	FLIP(WDR)

	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	FLIP(WDR)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	CALL(display)
	FLIP(WDR)

	CALL(display)

	CALL(waitkey)		! .. until key released.

	FLIP(WDR)

#ifdef CU53
        CALL(marker_off), SEG_KEY
        CALL(marker_off), SEG_T
        CALL(marker_off), SEG_C
        CALL(marker_off), SEG_COLON_L
        CALL(marker_off), SEG_COLON_R
        CALL(marker_off), SEG_BAR_L
        CALL(marker_off), SEG_BAR_R
	FLIP(WDR)
        CALL(marker_off), SEG_S
        CALL(marker_off), SEG_F
        CALL(marker_off), SEG_D
        CALL(marker_off), SEG_I
        CALL(marker_off), SEG_LESS
        CALL(marker_off), SEG_N

#endif
#ifdef CU59
        CALL(marker_off), SEG_ARROW
        CALL(marker_off), SEG_KEY
        CALL(marker_off), SEG_r
        CALL(marker_off), SEG_s
        CALL(marker_off), SEG_t
        CALL(marker_off), SEG_HANDSET
        CALL(marker_off), SEG_COLON_R
	FLIP(WDR)
        CALL(marker_off), SEG_CH
        CALL(marker_off), SEG_A
        CALL(marker_off), SEG_D
        CALL(marker_off), SEG_I
        CALL(marker_off), SEG_LESS
        CALL(marker_off), SEG_S
        CALL(marker_off), SEG_F
        CALL(marker_off), SEG_N
#endif

1:
	FLIP(WDR)
        dec Rstk

        LDREG(Rtmp2, segs_u_digit_5)
	LDREG(Rtmp, version + 5)
	ldn Rtmp
	str Rstk
	CALL(drawchr)
	CALL(drawchr)
	FLIP(WDR)
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	CALL(drawchr)
	FLIP(WDR)
        inc Rstk

	DIM(BIT_AVAIL)
        DIM(BIT_CALL)
	DIM(BIT_SERV)     
	FLIP(WDR)
        DIM(BIT_ROAM)
	DIM(BIT_HF)       
	DIM(BIT_BRIGHT)   
	FLIP(WDR)

	CALL(display)
	FLIP(WDR)

	CALL(zerobuf)
	CALL(drawpower)
	CALL(upd_rptr_icons)
	CALL(dovola), 0
	FLIP(WDR)

	CALL(show_rejects)
	RETURN


show_rejects:

	ADJUST(Rram, reject_idx)
	ldn Rram
	lbnz 1f

	ADJUST(Rram, mode_0)	! show key if one or more memory channels are rejected
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ADJUST(Rram, mode_1)
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ADJUST(Rram, mode_2)
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ADJUST(Rram, mode_3)
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ADJUST(Rram, mode_4)
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ADJUST(Rram, mode_5)
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ADJUST(Rram, mode_6)
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ADJUST(Rram, mode_7)
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ADJUST(Rram, mode_8)
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	ADJUST(Rram, mode_9)
	ldn Rram
	ani MEMOSKIP
	lbnz 1f

	FLIP(WDR)
	RETURN
1:
	FLIP(WDR)
	CALL(marker_on), SEG_KEY
	RETURN


scanner_reject:

	CALL(marker_on), SEG_KEY

	ADJUST(Rptr, reject_idx)
	ldn Rptr
	adi 2
	ani 15
	str Rptr
	adi LO(rejects)
	plo Rptr

	ADJUST(Rram, vipchannel)
	lda Rram
	str Rptr
	inc Rptr
	ldn Rram
	str Rptr

	RETURN
	
	.align 8
!----------------------------------------------------------------------
!
!  Look into input shift register
!
!  PSC (PL aka parallel load) is normally kept high,
!  so DA from control unit is visible at /EF3.
!
!  Rest of input pins are shifted out by
!  first dropping PL and then shifting 8 bits with Q.
!

input_register:

	CLR(PSC)		! drop PL to shift out rest of input bits

	ADJUST(Rram, input_bits)
	ldi 0

#ifdef MD50
	seq; req; b3 1f; ori POWEROFF		! /PW
1:
	seq; req; b3 1f; ori TOFF		! RF_OFF
1:
	seq; req; b3 1f; ori OFFHOOK		! /HK
1:
	seq; req; b3 1f; ori LOWBATT		! VC
1:
	seq; req; bn3 1f; ori AUXPTT		! PC (used as /ptt)
1:
	seq; req; bn3 1f; ori LOCAL		! /LOCAL
1:
	seq; req; b3 1f; ori PORTABLE		! POR
1:
	seq; req; b3 1f; ori COLDSTART	! POT
1:
#endif

#ifdef MD59
	seq; req; b3 1f; ori POWEROFF		! /PW
1:
	seq; req; b3 1f; ori AUXPTT		! AC (used as +ptt), NOTE TX when +12V
1:
	seq; req; b3 1f; ori OFFHOOK		! /HK
1:
	seq; req; b3 1f; ori LOWBATT		! VC
1:
	seq; req; bn3 1f; ori IGNITION_XXX	! /IGN
1:
	seq; req; b3 1f; ori LOCAL		! LOC
1:
	seq; req; bn3 1f; ori PORTABLE	! VRO
1:
	seq; req; b3 1f; ori COLDSTART	! POT
1:
	!
	!  Special case for MD59, /AUXPTT is /EF4
	!  which is also EEPROM DO. EEPROM never
	!  used or selected (EECS kept low)
	!  So /EF4 is just /PTT, there is 100k pullup.
	!
	bn4 1f
	ori AUXPTT
1:
#endif

#ifdef ME59
	seq; req; b3 1f; ori POWEROFF		! /PW
1:
	seq; req; b3 1f; ori TOFF		! TOFF
1:
	seq; req; b3 1f; ori OFFHOOK		! /HK
1:
	seq; req; bn3 1f; ori AUXPTT		! /PTT
1:
	seq; req; bn3 1f; ori PORTABLE	! VRO
1:
	seq; req; b3 1f; ori AUTOCALL_XXX	! AC
1:
	seq; req; bn3 1f; ori IGNITION_XXX	! /IGN
1:
	seq; req; b3 1f; ori LOCAL		! LOC
1:
#endif

#ifdef DUALRIG 
#ifdef ME59 
	xri SUSPENDED				! differentiate MD59/ME59 
#endif 
#endif 

	plo Rtmp
	sex Rram
	sm
	lbz 1f
	glo Rtmp
	str Rram

#ifdef DUALRIG 
	ani SUSPENDED 
	lbz 1f 
	CUSEL(KEYPAD)			! keep CSx == 0 when suspended 
#endif 

#if 0
	glo Rtmp 
	dec Rstk
	str Rstk
	dec Rstk
	str Rstk
	LDREG(Rtmp2, segs_u_digit_3)
	CALL(drawhex)		! arg in stack
	inc Rstk
	CALL(display)
	lda Rstk
	plo Rtmp
#endif
1:

	SET(PSC)		! Keep PL on (DA directly in /EF3)

	RETURN


#ifdef DUALRIG    
!---------------------------------------------------------------------- 
!  Before entering dualrig sensitive areas, call this. 
!  This will just return if not suspended. 
!  If suspended, the return discards one SCRT level. 
! 
dualrig: 
 
	ADJUST(Rram, input_bits) 
	ldn Rram 
	ani SUSPENDED 
	lbz 1f					! we are NOT suspended 
 
	lda Rstk				! back up one level of SCRT 
	plo Rarg 
	lda Rstk 
	phi Rarg 
 
	lda Rstk 
	plo Rbp 
1: 
	RETURN					! to our caller or our callers caller 
#endif /* DUALRIG */ 
  
	ASSERT(THEMEANINGOFLIFEUNIVERSEANDEVERYTHING == 0x2A)
	.align 8

tables:

keytbl:

#ifdef NORWAY

#ifdef CU53
 .byte  9 , 8 , 7 ,'C', 6 , 5 , 4 ,'S' ! 0x00  
 .byte  3 , 2 , 1 ,'R','#','*' ,0 ,'E' ! 0x08  
 .byte 'P','B','-','+','Z','Z','Z','Z' ! 0x10  
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x18

 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x20
 .byte 'X','D','Z','Z','Z','Z','Z','Z' ! 0x28
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x30
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x38
#else
 .byte  9 , 8 , 7 ,'C', 6 , 5 , 4 ,'S' ! 0x00  
 .byte  3 , 2 , 1 ,'R','#','*' ,0 ,'E' ! 0x08  
 .byte 'P','D','-','+','Z','Z','Z','Z' ! 0x10  
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x18

 .byte 'X','B','Z','Z','Z','Z','Z','Z' ! 0x20
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x28
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x30
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x38
#endif

#else
	!not NORWAY

#ifdef CU53
 .byte  3 , 2 , 1 ,'C', 6 , 5 , 4 ,'S'	! 0x00
 .byte  9 , 8 , 7 ,'R','#', 0 ,'*','E'	! 0x08
 .byte 'P','B','-','+','Z','Z','Z','Z' ! 0x10
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x18

 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x20
 .byte 'X','D','Z','Z','Z','Z','Z','Z' ! 0x28
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x30
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x38
#else
 .byte  3 , 2 , 1 ,'C', 6 , 5 , 4 ,'S' ! 0x00
 .byte  9 , 8 , 7 ,'R','#', 0 ,'*','E' ! 0x08
 .byte 'P','D','-','+','Z','Z','Z','Z' ! 0x10
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x18

 .byte 'X','B','Z','Z','Z','Z','Z','Z' ! 0x20
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x28
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x30
 .byte 'Z','Z','Z','Z','Z','Z','Z','Z' ! 0x38
#endif

#endif
	!NORWAY

setbit:
 .byte 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80
clrbit:
 .byte 0xFE, 0xFD, 0xFB, 0xF7, 0xEF, 0xDF, 0xBF, 0x7F

#define X(seg) (seg)

/* down left digit-area */

segs_dl_digit_1: .byte X(56), X(57), X(58), X(59), X(120), X(121), X(122)
segs_dl_digit_0: .byte X(60), X(61), X(62), X(63), X(124), X(125), X(126)


/* down right digit-area */

segs_dr_digit_7: .byte  X(0),  X(1),  X(2),  X(3),  X(64),  X(65), X(66)
segs_dr_digit_6: .byte  X(4),  X(5),  X(6),  X(7),  X(68),  X(69), X(70)
segs_dr_digit_5: .byte  X(8),  X(9), X(10), X(11),  X(72),  X(73), X(74)
segs_dr_digit_4: .byte X(12), X(13), X(14), X(15),  X(76),  X(77), X(78)
segs_dr_digit_3: .byte X(16), X(17), X(18), X(19),  X(80),  X(81), X(82)
segs_dr_digit_2: .byte X(20), X(21), X(22), X(23),  X(84),  X(85), X(86)
segs_dr_digit_1: .byte X(24), X(25), X(26), X(27),  X(88),  X(89), X(90)
segs_dr_digit_0: .byte X(28), X(29), X(30), X(31),  X(92),  X(93), X(94)

/* upper digit-area */

segs_u_digit_5:  .byte X(32), X(33), X(34), X(35),  X(96),  X(97),  X(98)
segs_u_digit_4:  .byte X(36), X(37), X(38), X(39), X(100), X(101), X(102)
segs_u_digit_3:  .byte X(40), X(41), X(42), X(43), X(104), X(105), X(106)
segs_u_digit_2:  .byte X(44), X(45), X(46), X(47), X(108), X(109), X(110)
segs_u_digit_1:  .byte X(48), X(49), X(50), X(51), X(112), X(113), X(114)
segs_u_digit_0:  .byte X(52), X(53), X(54), X(55), X(116), X(117), X(118)

#undef X

        .ascii "\n              \n"
 .ascii "@(#)"

#ifdef MD50
 .ascii "MD50"
#endif

#ifdef MD59
 .ascii "MD59"
#endif

#ifdef ME59
 .ascii "ME59"
#endif

 .ascii "/"

#ifdef CU53
 .ascii "CU53"
#endif

#ifdef CU59
 .ascii "CU59"
#endif

#ifdef NOHANDSET
 .ascii "/none"
#endif
 .ascii " "

date:
 .ascii DATE
 .ascii " "
 
version:
 .ascii VNUMBER

#ifdef BETA
 .ascii " (",BETA,") "
#endif

#ifdef APRS
 .ascii " optimized for packet radio "
#endif

#ifdef FREEBAND
 .ascii " Freeband: not supported software "
#else
 .ascii " HamWare ",COPYRIGHT," "
#endif

#ifdef ME59
 .ascii " OffsetVCO="
#else
 .ascii " OffsetXtal="
#endif 

xtal:
 .ascii XTAL," "

#ifdef REPEATER
 .ascii "+ "
#ifdef ME59
 .ascii "6.0 "
#else
 .ascii "1.6 "
#endif
#endif

#ifdef PROM
 .ascii "PROM"
#endif

#ifdef SPTT
 .ascii " SPTT"
#endif

#ifdef MPTT
 .ascii " MPTT"
#endif

#ifdef HASHPTT
 .ascii " #PTT"
#endif

#ifdef NORWAY
 .ascii " Norwegean keyboard layout"
#endif

#ifdef GERMAN
 .ascii " German repeater frquencies"
#endif 
 !GERMAN

#ifdef MD59
#ifndef FREEBAND
#ifdef FINHAM
 .ascii " TX=432-438"
#else
 .ascii " TX=430-440"
#endif 
 !FINHAM
#endif 
 !nFREEBAND
#endif 
 !MD59

#ifdef ME59
#ifdef USA
 .ascii " TX=902-928"
#else
 .ascii " TX=1240-1300"
#endif
#endif 
 !ME59

 .ascii " "

#ifdef STEP125
 .ascii "Step=12.5 "
#else
 .ascii "Step=25.0 "
#endif

#ifdef NOHANDSET
 .ascii "Optimzed for operation without a handset "
#endif

#ifdef EASY_BEEP
 .ascii "Easy repeater beep "
#endif

verlet:
#ifdef FREEBAND
        .ascii "---"
#else

#ifdef FINHAM
 .ascii "FIN"
#else
#ifdef USA
        .ascii "USA"
#else
        .ascii "EUR"
#endif
#endif
#endif

#ifdef SHIFT20
 .ascii " 1.6MHz / 2.0 MHz repeater shift"
#endif

#ifdef REPEATER
 .ascii " REPEATER version"
#endif

#ifdef NOHIPOWER
 .ascii " Power level 3 disabled"
#endif

! NWQ binary shows the pin code if set
#ifdef PIN
 .ascii " PIN="
 .byte  PIN_1+0x30, PIN_2+0x30, PIN_3+0x30, PIN_4+0x30
 .ascii " "
#else
 .ascii " PIN code (3694) is not used "
#endif

#ifdef DEBUG
 .ascii " \n-=- this is a debug version - so it might not be stable -=- "
#endif
        .ascii " \n"

#if 0
    -     4
   | |  0   3
    -     5
   | |  1   2
    -     6
#endif

 .align 8
font:

 .byte 0x5f # 0  0 1 2 3   4 - 6
 .byte 0x0c # 1  - - 2 3   - - -
 .byte 0x7a # 2  - 1 - 3   4 5 6
 .byte 0x7c # 3  - - 2 3   4 5 6
 .byte 0x2d # 4  0 - 2 3   - 5 -
 .byte 0x75 # 5  0 - 2 -   4 5 6
 .byte 0x77 # 6  0 1 2 -   4 5 6
 .byte 0x1c # 7  - - 2 3   4 - -
 .byte 0x7f # 8  0 1 2 3   4 5 6
 .byte 0x7d # 9  0 - 2 3   4 5 6
 .byte 0x3f # A  0 1 2 3   4 5 -
 .byte 0x67 # b  0 1 2 -   - 5 6
 .byte 0x53 # C  0 1 - -   4 - 6
 .byte 0x6e # d  - 1 2 3   - 5 6
 .byte 0x73 # E  0 1 - -   4 5 6
 .byte 0x33 # F  0 1 - -   4 5 -

 .byte 0x57 # G  0 1 2 -   4 - 6

#ifdef OH3NWQRULEZ
#ifndef FREEBAND
 .byte ' ','O','H','3','N','W','Q',' '
#endif 
#endif

 .byte 0x00 #17
 .byte 0x00 #18
 .byte 0x00 #19
 .byte 0x00 #20
 .byte 0x00 #21
 .byte 0x00 #22
 .byte 0x00 #23
 .byte 0x00 #24
 .byte 0x00 #25
 .byte 0x00 #26
 .byte 0x00 #27
 .byte 0x00 #28
 .byte 0x00 #29
 .byte 0x00 #30
 .byte 0x3a #31 (?) - 1 - 3   4 5 -
 

 .org font + ' '

 .byte 0x00 #    - - - -   - - -
 .byte 0x0c # !  - - 2 3   - - -
 .byte 0x09 # "  0 - - 3   - - -
 .byte 0x66 # #  - 1 2 -   - 5 6
 .byte 0x25 # $  0 - 2 -   - 5 -
 .byte 0x05 # %  0 - 2 -   - - -
 .byte 0x6a # &  - 1 - 3   - 5 6
 .byte 0x08 # '  - - - 3   - - -
 .byte 0x0c # (  - - 2 3   - - -
 .byte 0x03 # )  0 1 - -   - - -
 .byte 0x70 # *  - - - -   4 5 6
 .byte 0x23 # +  0 1 - -   - 5 -
 .byte 0x02 # ,  - 1 - -   - - -
 .byte 0x20 # -  - - - -   - 5 -
 .byte 0x02 # .  - 1 - -   - - -
 .byte 0x2a # /  - 1 - 3   - 5 -
 .byte 0x5f # 0  0 1 2 3   4 - 6
 .byte 0x0c # 1  - - 2 3   - - -
 .byte 0x7a # 2  - 1 - 3   4 5 6
 .byte 0x7c # 3  - - 2 3   4 5 6
 .byte 0x2d # 4  0 - 2 3   - 5 -
 .byte 0x75 # 5  0 - 2 -   4 5 6
 .byte 0x77 # 6  0 1 2 -   4 5 6
 .byte 0x1c # 7  - - 2 3   4 - -
 .byte 0x7f # 8  0 1 2 3   4 5 6
 .byte 0x7d # 9  0 - 2 3   4 5 6
 
 .byte 0x3f # A  0 1 2 3   4 5 -  ! NWQ
 .byte 0x67 # b  0 1 2 -   - 5 6  !
 .byte 0x53 # C  0 1 - -   4 - 6  ! these changed
 .byte 0x6e # d  - 1 2 3   - 5 6  ! to allow hex
 .byte 0x73 # E  0 1 - -   4 5 6  ! digits shown 
 .byte 0x33 # F  0 1 - -   4 5 -  ! more easily

! .byte 0x50 # :  - - - -   4 - 6  ! these 
! .byte 0x48 # ;  - - - 3   - - 6  ! were
! .byte 0x2c # <  - - 2 3   - 5 -  ! the original
! .byte 0x60 # =  - - - -   - 5 6  ! ones 
! .byte 0x23 # >  0 1 - -   - 5 -
! .byte 0x3a # ?  - 1 - 3   4 5 -

 .byte 0x7e # @  - 1 2 3   4 5 6
 .byte 0x3f # A  0 1 2 3   4 5 -
 .byte 0x67 # b  0 1 2 -   - 5 6
 .byte 0x53 # C  0 1 - -   4 - 6
 .byte 0x6e # d  - 1 2 3   - 5 6
 .byte 0x73 # E  0 1 - -   4 5 6
 .byte 0x33 # F  0 1 - -   4 5 -
 .byte 0x57 # G  0 1 2 -   4 - 6
 .byte 0x2f # H 0 1 2 3   - 5 -
 .byte 0x0c # I  - - 2 3   - - -
 .byte 0x4e # J  - 1 2 3   - - 6
 .byte 0x2f # K  0 1 2 3   - 5 - = H
 .byte 0x43 # L 0 1 - -   - - 6
 .byte 0x1f # M 0 1 2 3   4 - -
 .byte 0x26 # N - 1 2 -   - 5 -
 .byte 0x5f # O  0 1 2 3   4 - 6
 .byte 0x3b # P  0 1 - 3   4 5 -
 .byte 0x3d # Q  0 - 2 3   4 5 -
 .byte 0x1b # R 0 1 - 3   4 - -
 .byte 0x75 # S 0 - 2 -   4 5 6
 .byte 0x13 # T 0 1 - -   4 - -
 .byte 0x4f # U  0 1 2 3   - - 6
 .byte 0x4f # V  0 1 2 3   - - 6
 .byte 0x6f # W  0 1 2 3   - 5 6
 .byte 0x70 # X - - - -   4 5 6
 .byte 0x6d # Y  0 - 2 3   - 5 6
 .byte 0x7a # Z  - 1 - 3   4 5 6
 .byte 0x53 # [  0 1 - -   4 - 6
 .byte 0x25 # \  0 - 2 -   - 5 -
 .byte 0x5c # ]  - - 2 3   4 - 6
 .byte 0x10 # ^  - - - -   4 - -
 .byte 0x40 # _  - - - -   - - 6
 .byte 0x01 # `  0 - - -   - - -
 .byte 0x26 # a  - 1 2 -   - 5 -
 .byte 0x67 # b  0 1 2 -   - 5 6
 .byte 0x62 # c  - 1 - -   - 5 6
 .byte 0x6e # d  - 1 2 3   - 5 6
 .byte 0x62 # e  - 1 - -   - 5 6
 .byte 0x33 # f  0 1 - -   4 5 -
 .byte 0x7d # g  0 - 2 3   4 5 6
 .byte 0x27 # h 0 1 2 -   - 5 -
 .byte 0x04 # i  - - 2 -   - - -
 .byte 0x44 # j  - - 2 -   - - 6
 .byte 0x27 # k  0 1 2 -   - 5 -  =h
 .byte 0x42 # l - 1 - -   - - 6
 .byte 0x26 # m - 1 2 -   - 5 -  =n
 .byte 0x26 # n - 1 2 -   - 5 -
 .byte 0x66 # o  - 1 2 -   - 5 6
 .byte 0x3b # p  0 1 - 3   4 5 -
 .byte 0x3d # q  0 - 2 3   4 5 -
 .byte 0x22 # r - 1 - -   - 5 -
 .byte 0x75 # s  0 - 2 -   4 5 6
 .byte 0x63 # t 0 1 - -   - 5 6
 .byte 0x46 # u  - 1 2 -   - - 6
 .byte 0x46 # v  - 1 2 -   - - 6
 .byte 0x56 # w - 1 2 -   4 - 6
 .byte 0x06 # x - 1 2 -   - - -
 .byte 0x2d # y  0 - 2 3   - 5 -
 .byte 0x60 # z  - - - -   - 5 6
 .byte 0x62 # {  - 1 - -   - 5 6
 .byte 0x02 # |  - 1 - -   - - -
 .byte 0x64 # }  - - 2 -   - 5 6
 .byte 0x10 # ~  - - - -   4 - -
 .byte 0x00 # ^?  - - - -   - - -

 fontsize = . - font

 ASSERT(fontsize == 128)

!    -     4
!   | |  0   3
!    -     5
!   | |  1   2
!    -     6

#ifdef FREEBAND
 ASSERT(42 == 69)  ! Who cares
#endif

 .align 8

 ! byte => %
!div99tbl:

#if 0
! NWQ new table 15 =~ 00

        .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x02
        .byte 0x02, 0x02, 0x03, 0x03, 0x04, 0x04, 0x04, 0x05
        .byte 0x05, 0x06, 0x06, 0x06, 0x07, 0x07, 0x08, 0x08
        .byte 0x08, 0x09, 0x09, 0x10, 0x10, 0x10, 0x11, 0x11
        .byte 0x12, 0x12, 0x13, 0x13, 0x13, 0x14, 0x14, 0x15
        .byte 0x15, 0x15, 0x16, 0x16, 0x17, 0x17, 0x17, 0x18
        .byte 0x18, 0x19, 0x19, 0x19, 0x20, 0x20, 0x21, 0x21
        .byte 0x21, 0x22, 0x22, 0x23, 0x23, 0x23, 0x24, 0x24
        .byte 0x25, 0x25, 0x26, 0x26, 0x26, 0x27, 0x27, 0x28
        .byte 0x28, 0x28, 0x29, 0x29, 0x30, 0x30, 0x30, 0x31
        .byte 0x31, 0x32, 0x32, 0x32, 0x33, 0x33, 0x34, 0x34
        .byte 0x34, 0x35, 0x35, 0x36, 0x36, 0x36, 0x37, 0x37
        .byte 0x38, 0x38, 0x39, 0x39, 0x39, 0x40, 0x40, 0x41
        .byte 0x41, 0x41, 0x42, 0x42, 0x43, 0x43, 0x43, 0x44
        .byte 0x44, 0x45, 0x45, 0x45, 0x46, 0x46, 0x47, 0x47
        .byte 0x47, 0x48, 0x48, 0x49, 0x49, 0x50, 0x50, 0x50
        .byte 0x51, 0x51, 0x52, 0x52, 0x52, 0x53, 0x53, 0x54
        .byte 0x54, 0x54, 0x55, 0x55, 0x56, 0x56, 0x56, 0x57
        .byte 0x57, 0x58, 0x58, 0x58, 0x59, 0x59, 0x60, 0x60
        .byte 0x60, 0x61, 0x61, 0x62, 0x62, 0x63, 0x63, 0x63
        .byte 0x64, 0x64, 0x65, 0x65, 0x65, 0x66, 0x66, 0x67
        .byte 0x67, 0x67, 0x68, 0x68, 0x69, 0x69, 0x69, 0x70
        .byte 0x70, 0x71, 0x71, 0x71, 0x72, 0x72, 0x73, 0x73
        .byte 0x73, 0x74, 0x74, 0x75, 0x75, 0x76, 0x76, 0x76
        .byte 0x77, 0x77, 0x78, 0x78, 0x78, 0x79, 0x79, 0x80
        .byte 0x80, 0x80, 0x81, 0x81, 0x82, 0x82, 0x82, 0x83
        .byte 0x83, 0x84, 0x84, 0x84, 0x85, 0x85, 0x86, 0x86
        .byte 0x86, 0x87, 0x87, 0x88, 0x88, 0x89, 0x89, 0x89
        .byte 0x90, 0x90, 0x91, 0x91, 0x91, 0x92, 0x92, 0x93
        .byte 0x93, 0x93, 0x94, 0x94, 0x95, 0x95, 0x95, 0x96
        .byte 0x96, 0x97, 0x97, 0x97, 0x98, 0x98, 0x99, 0x99
#endif

div99tbl:
! old table by NXO
 .byte 0x00, 0x00, 0x01, 0x01, 0x02, 0x02, 0x02, 0x03, 0x03, 0x04
 .byte 0x04, 0x04, 0x05, 0x05, 0x05, 0x06, 0x06, 0x07, 0x07, 0x07
 .byte 0x08, 0x08, 0x09, 0x09, 0x09, 0x10, 0x10, 0x11, 0x11, 0x11
 .byte 0x12, 0x12, 0x12, 0x13, 0x13, 0x14, 0x14, 0x14, 0x15, 0x15
 .byte 0x16, 0x16, 0x16, 0x17, 0x17, 0x18, 0x18, 0x18, 0x19, 0x19
 .byte 0x20, 0x20, 0x20, 0x21, 0x21, 0x21, 0x22, 0x22, 0x23, 0x23
 .byte 0x23, 0x24, 0x24, 0x25, 0x25, 0x25, 0x26, 0x26, 0x27, 0x27
 .byte 0x27, 0x28, 0x28, 0x29, 0x29, 0x29, 0x30, 0x30, 0x30, 0x31
 .byte 0x31, 0x32, 0x32, 0x32, 0x33, 0x33, 0x34, 0x34, 0x34, 0x35
 .byte 0x35, 0x36, 0x36, 0x36, 0x37, 0x37, 0x37, 0x38, 0x38, 0x39
 .byte 0x39, 0x39, 0x40, 0x40, 0x41, 0x41, 0x41, 0x42, 0x42, 0x43
 .byte 0x43, 0x43, 0x44, 0x44, 0x45, 0x45, 0x45, 0x46, 0x46, 0x46
 .byte 0x47, 0x47, 0x48, 0x48, 0x48, 0x49, 0x49, 0x50, 0x50, 0x50
 .byte 0x51, 0x51, 0x52, 0x52, 0x52, 0x53, 0x53, 0x54, 0x54, 0x54
 .byte 0x55, 0x55, 0x55, 0x56, 0x56, 0x57, 0x57, 0x57, 0x58, 0x58
 .byte 0x59, 0x59, 0x59, 0x60, 0x60, 0x61, 0x61, 0x61, 0x62, 0x62
 .byte 0x62, 0x63, 0x63, 0x64, 0x64, 0x64, 0x65, 0x65, 0x66, 0x66
 .byte 0x66, 0x67, 0x67, 0x68, 0x68, 0x68, 0x69, 0x69, 0x70, 0x70
 .byte 0x70, 0x71, 0x71, 0x71, 0x72, 0x72, 0x73, 0x73, 0x73, 0x74
 .byte 0x74, 0x75, 0x75, 0x75, 0x76, 0x76, 0x77, 0x77, 0x77, 0x78
 .byte 0x78, 0x79, 0x79, 0x79, 0x80, 0x80, 0x80, 0x81, 0x81, 0x82
 .byte 0x82, 0x82, 0x83, 0x83, 0x84, 0x84, 0x84, 0x85, 0x85, 0x86
 .byte 0x86, 0x86, 0x87, 0x87, 0x87, 0x88, 0x88, 0x89, 0x89, 0x89
 .byte 0x90, 0x90, 0x91, 0x91, 0x91, 0x92, 0x92, 0x93, 0x93, 0x93
 .byte 0x94, 0x94, 0x95, 0x95, 0x95, 0x96, 0x96, 0x96, 0x97, 0x97
 .byte 0x98, 0x98, 0x98, 0x99, 0x99, 0x99

 .align 8

#define X(f) .byte LO(f2c(f + MSD)), HI(f2c(f + MSD));

#ifdef ME59
#ifdef USA
#define MSD 900000
#else 
 !/USA
#define MSD 1290000
#endif
#else 
 !=MD5x
#define MSD  430000
#endif

! SIMPLEX FREQUENCY TABLES FOR SCANNING
!_____________________________________________________________

simplex:
#ifdef ME59

#ifdef USA
 X(27000) X(27025) X(27050) X(27075) X(27100) X(27125) X(27150) X(27175) ! S00..07  USA 
 X(27200) X(27225) X(27250) X(27275) X(27300) X(27325) X(27350) X(27375) ! S08..15  33cm 
 X(27400) X(27425) X(27450) X(27475) X(27500) X(27525) X(27550) X(27575) ! S16..23
 X(27600) X(27625) X(27650) X(27675) X(27700) X(27725) X(27750) X(27775) ! S24..31
 X(27800) X(27825) X(27850) X(27875) X(27900) X(27925) X(27950) X(27975) ! S32..39
#else 
 ! /USA

#ifndef GERMAN
 X(7500) X(7525) X(7550) X(7575)     ! SM20..23     not German
 X(7600) X(7625) X(7650) X(7675) X(7700) X(7725) X(7750) X(7775) ! SM24...SM31 23cm
 X(7800) X(7825) X(7850) X(7875) X(7900) X(7925) X(7950) X(7975) ! SM32...SM39
#endif 
 !/GERMAN

#ifdef GERMAN
 X(7500) X(7525) X(7550) X(7575)     ! 41...44 German
 X(7600) X(7625) X(7650) X(7675) X(7700) X(7725) X(7750) X(7775) ! 45...51 23cm
 X(7800) X(7825) X(7850) X(7875) X(7900) X(7925) X(7950) X(7975) ! 52...59
#endif 
 !GERMAN
#endif  
 !USA

#else 
 ! MD5x

#ifndef GERMAN
 X(3400) X(3425) X(3450) X(3475) X(3500) X(3525) X(3550) X(3575) ! SU16..23  Not German
#endif  
 !/GERMAN

#ifdef GERMAN
        X(3000) X(3025) X(3050) X(3075) X(3100) X(3125) X(3150) X(3175) ! 00..07  German
        X(3200) X(3225) X(3250) X(3275) X(3300) X(3325) X(3350) X(3375) ! 08..15 70cm
        X(3400) X(3425) X(3450) X(3475) X(3500) X(3525) X(3550) X(3575) ! 16..23
        X(3600) X(3625) X(3650) X(3675) X(3700) X(3725) X(3750) X(3775) ! 24..31
        X(3800) X(3825) X(3850) X(3875) X(3900) X(3925) X(3950) X(3975) ! 32..39
        X(4000) X(4025) X(4050) X(4075) X(4100) X(4125) X(4150) X(4175) ! 40..47
        X(4200) X(4225) X(4250) X(4275) X(4300) X(4325) X(4350) X(4375) ! 48..55
        X(4400) X(4425) X(4450) X(4475) X(4500) X(4525) X(4550) X(4575) ! 56..63
#endif  
 !GERMAN

#endif 
 ! ME59/MD5x
simplex_end:


! DUPLEX FREQUENCY TABLES FOR SCANNING
!_____________________________________________________________

 ! .align 8   ! (100 + 100) * 2 < 256

duplex:
#ifdef ME59

#ifdef USA
 X(19000) X(19025) X(19050) X(19075) X(19100) X(19125) X(19150) X(19175) ! R40..47 USA
 X(19200) X(19225) X(19250) X(19275) X(19300) X(19325) X(19350) X(19375) ! R48..55 33cm
 X(19400) X(19425) X(19450) X(19475) X(19500) X(19525) X(19550) X(19575) ! R56..63
 X(19600) X(19625) X(19650) X(19675) X(19700) X(19725) X(19750) X(19775) ! R64..71
 X(19800) X(19825) X(19850) X(19875) X(19900) X(19925) X(19950) X(19975) ! R72..79
#endif  
 !USA 

#ifndef USA
#ifndef GERMAN
#ifdef REPEATER
 X(1000) X(1025) X(1050) X(1075) X(1100) X(1125) X(1150) X(1175) ! RM00..RM07 Not German
 X(1200) X(1225) X(1250) X(1275) X(1300) X(1325) X(1350) X(1375) ! RM08..RM15 23cm
 X(1400) X(1425) X(1450) X(1475)     ! RM16..RM19
#else
 X(7000) X(7025) X(7050) X(7075) X(7100) X(7125) X(7150) X(7175) ! RM00..RM07 Not German
 X(7200) X(7225) X(7250) X(7275) X(7300) X(7325) X(7350) X(7375) ! RM08..RM15 23cm
 X(7400) X(7425) X(7450) X(7475)     ! RM16..RM19
#endif 
 !REPEATER
#endif 
 !/GERMAN

#ifdef GERMAN
 X(8000)        ! RS00  German 
 X(8025) X(8050) X(8075) X(8100) X(8125) X(8150) X(8175) X(8200) ! RS01...RS08 23cm
 X(8225) X(8250) X(8275) X(8300) X(8325) X(8350) X(8375) X(8400) ! RS09...RS16
 X(8425) X(8450) X(8475) X(8500) X(8525) X(8550) X(8575) X(8600) ! RS17...RS24
 X(8625) X(8650) X(8775) X(8700) X(8725) X(8750) X(8775) X(8800) ! RS25...RS32
 X(8825) X(8850) X(8875) X(8900) X(8925) X(8950) X(8975) X(9000) ! RS33...RS40

#endif 
 !GERMAN
#endif 
 !/USA

#else 
 ! MD5x

#ifndef GERMAN
 X(4600) X(4625) X(4650) X(4675) X(4700) X(4725) X(4750) X(4775) ! RU00...RU07 Not German
 X(4800) X(4825) X(4850) X(4875) X(4900) X(4925) X(4950) X(4975) ! RU08...RU15 70cm
#endif  
 !/GERMAN

#ifdef GERMAN
        X(8550) X(8575) X(8600) X(8625) X(8650) X(8675) X(8700) X(8725) ! 64..71 German
        X(8750) X(8775) X(8800) X(8825) X(8850) X(8875) X(8900) X(8925) ! 72..79  70cm
        X(8950) X(8975) X(9000) X(9025) X(9050) X(9075) X(9100) X(9125) ! 80..87 
        X(9150) X(9175) X(9200) X(9225) X(9250) X(9275) X(9300) X(9325) ! 88..95
        X(9350) X(9375) X(9400) X(9425)     ! 96..99
#endif  
 !GERMAN

#endif 
 ! ME59/MD5x
duplex_end:



! FREQUENCY TABLES FOR DIRECT MEMORY ACCESS (PERMANENT MEMORIES)
!_________________________________________________________________

 .align 8
memories:
#ifdef ME59

#ifdef USA

 X(27000) X(27025) X(27050) X(27075) X(27100) X(27125) X(27150) X(27175) ! S00..07
 X(27200) X(27225) X(27250) X(27275) X(27300) X(27325) X(27350) X(27375) ! S08..15
 X(27400) X(27425) X(27450) X(27475) X(27500) X(27525) X(27550) X(27575) ! S16..23
 X(27600) X(27625) X(27650) X(27675) X(27700) X(27725) X(27750) X(27775) ! S24..31
 X(27800) X(27825) X(27850) X(27875) X(27900) X(27925) X(27950) X(27975) ! S32..39
 X(19000) X(19025) X(19050) X(19075) X(19100) X(19125) X(19150) X(19175) ! R40..47
 X(19200) X(19225) X(19250) X(19275) X(19300) X(19325) X(19350) X(19375) ! R48..55
 X(19400) X(19425) X(19450) X(19475) X(19500) X(19525) X(19550) X(19575) ! R56..63
 X(19600) X(19625) X(19650) X(19675) X(19700) X(19725) X(19750) X(19775) ! R64..71
 X(19800) X(19825) X(19850) X(19875) X(19900) X(19925) X(19950) X(19975) ! R72..79
#else 
 !/USA

#ifndef GERMAN
#ifdef REPEATER
 X(1000) X(1025) X(1050) X(1075) X(1100) X(1125) X(1150) X(1175) ! RM00..RM07
 X(1200) X(1225) X(1250) X(1275) X(1300) X(1325) X(1350) X(1375) ! RM8..RM15
 X(1400) X(1425) X(1450) X(1475)          ! RM16..RM19
 X(1500) X(1525) X(1550) X(1575)          ! SM20..SM23 
 X(7600) X(7625) X(7650) X(7675) X(7700) X(7725) X(7750) X(7775) ! SM24...SM31
 X(7800) X(7825) X(7850) X(7875) X(7900) X(7925) X(7950) X(7975) ! SM32...SM39
#else
 X(7000) X(7025) X(7050) X(7075) X(7100) X(7125) X(7150) X(7175) ! RM00..RM07
 X(7200) X(7225) X(7250) X(7275) X(7300) X(7325) X(7350) X(7375) ! RM8..RM15
 X(7400) X(7425) X(7450) X(7475)          ! RM16..RM19
 X(7500) X(7525) X(7550) X(7575)          ! SM20..SM23 
 X(7600) X(7625) X(7650) X(7675) X(7700) X(7725) X(7750) X(7775) ! SM24...SM31
 X(7800) X(7825) X(7850) X(7875) X(7900) X(7925) X(7950) X(7975) ! SM32...SM39
#endif 
 !REPEATER
#endif
#ifdef GERMAN
 X(8000)        ! RS00
 X(8025) X(8050) X(8075) X(8100) X(8125) X(8150) X(8175) X(8200) ! RS01...RS08
 X(8225) X(8250) X(8275) X(8300) X(8325) X(8350) X(8375) X(8400) ! RS09...RS16
 X(8425) X(8450) X(8475) X(8500) X(8525) X(8550) X(8575) X(8600) ! RS17...RS24
 X(8625) X(8650) X(8775) X(8700) X(8725) X(8750) X(8775) X(8800) ! RS25...RS32
 X(8825) X(8850) X(8875) X(8900) X(8925) X(8950) X(8975) X(9000) ! RS33...RS40
 X(7500) X(7525) X(7550) X(7575)     ! 41...44
 X(7600) X(7625) X(7650) X(7675) X(7700) X(7725) X(7750) X(7775) ! 45...51
 X(7800) X(7825) X(7850) X(7875) X(7900) X(7925) X(7950) X(7975) ! 52...59
#endif 
#endif 
 !USA

#else

#ifndef GERMAN
 X(4600) X(4625) X(4650) X(4675) X(4700) X(4725) X(4750) X(4775) ! RU00...RU07
 X(4800) X(4825) X(4850) X(4875) X(4900) X(4925) X(4950) X(4975) ! RU08...RU15
 X(3400) X(3425) X(3450) X(3475) X(3500) X(3525) X(3550) X(3575) ! SU16..23
 X(3600) X(3625) X(3650) X(3675) X(3700) X(3725) X(3750) X(3775) ! SU24..31
 X(3800) X(3825) X(3850) X(3875) X(3900) X(3925) X(3950) X(3975) ! SU32..39
 X(4000) X(4025) X(4050) X(4075) X(4100) X(4125) X(4150) X(4175) ! SU40..47
 X(4200) X(4225) X(4250) X(4275) X(4300) X(4325) X(4350) X(4375) ! SU48..55
 X(4400) X(4425) X(4450) X(4475) X(4500) X(4525) X(4550) X(4575) ! SU56..63
#endif 
 !/GERMAN

#ifdef GERMAN
        X(3000) X(3025) X(3050) X(3075) X(3100) X(3125) X(3150) X(3175) ! 00 Simplex
        X(3200) X(3225) X(3250) X(3275) X(3300) X(3325) X(3350) X(3375) ! 08
        X(3400) X(3425) X(3450) X(3475) X(3500) X(3525) X(3550) X(3575) ! 16
        X(3600) X(3625) X(3650) X(3675) X(3700) X(3725) X(3750) X(3775) ! 24
        X(3800) X(3825) X(3850) X(3875) X(3900) X(3925) X(3950) X(3975) ! 32
        X(4000) X(4025) X(4050) X(4075) X(4100) X(4125) X(4150) X(4175) ! 40
        X(4200) X(4225) X(4250) X(4275) X(4300) X(4325) X(4350) X(4375) ! 48
        X(4400) X(4425) X(4450) X(4475) X(4500) X(4525) X(4550) X(4575) ! 56
        X(8550) X(8575) X(8600) X(8625) X(8650) X(8675) X(8700) X(8725) ! 64 German
        X(8750) X(8775) X(8800) X(8825) X(8850) X(8875) X(8900) X(8925) ! 72 repeater
        X(8950) X(8975) X(9000) X(9025) X(9050) X(9075) X(9100) X(9125) ! 80 channels
        X(9150) X(9175) X(9200) X(9225) X(9250) X(9275) X(9300) X(9325) ! 88
        X(9350) X(9375) X(9400) X(9425)     ! 96..99
#endif 
 !GERMAN
#endif

#undef X
#undef MSD

memories_end:
The_End:
 .ascii "(info: executable code ends here) - Moppe's resurrection. "
 .ascii " One fine day this software might be useful. "

#ifndef FREEBAND
 .asciz LAST_EDITED_BY
 .asciz PROGRAMMERS_NOTE
#endif 
 
 .ascii " - This software is given to licensed ham radio operators "
 .ascii "free of charge and as it is. This program may be used for "
 .ascii "licensed radio amateur use only.  No warranty is given in "
 .ascii "any way, nor is the suitability for any purpose guaranteed. "
 .ascii "The user of this program takes the full responsibility "
 .ascii "of any direct and/or indirect consequencies caused by "
 .ascii "using this program. Using this program indicates that the "
 .ascii "user accepts this statement. "
 .ascii "Removal of this text does not release from the "
 .ascii "stated oblications."

#ifndef FREEBAND  
  .asciz "(C) 1998-2014 OH3NWQ \n"
#else
 .asciz "\n"
#endif 
Blah_Blah_End: 
  .cksum
 
 
 




   




