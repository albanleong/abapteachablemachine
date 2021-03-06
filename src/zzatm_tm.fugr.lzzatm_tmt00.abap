*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 11/23/2020 at 23:27:19
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZZATM_GAMES_V...................................*
TABLES: ZZATM_GAMES_V, *ZZATM_GAMES_V. "view work areas
CONTROLS: TCTRL_ZZATM_GAMES_V
TYPE TABLEVIEW USING SCREEN '0020'.
DATA: BEGIN OF STATUS_ZZATM_GAMES_V. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZZATM_GAMES_V.
* Table for entries selected to show on screen
DATA: BEGIN OF ZZATM_GAMES_V_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZZATM_GAMES_V.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZZATM_GAMES_V_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZZATM_GAMES_V_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZZATM_GAMES_V.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZZATM_GAMES_V_TOTAL.

*...processing: ZZATM_PLAYERS_V.................................*
TABLES: ZZATM_PLAYERS_V, *ZZATM_PLAYERS_V. "view work areas
CONTROLS: TCTRL_ZZATM_PLAYERS_V
TYPE TABLEVIEW USING SCREEN '0010'.
DATA: BEGIN OF STATUS_ZZATM_PLAYERS_V. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZZATM_PLAYERS_V.
* Table for entries selected to show on screen
DATA: BEGIN OF ZZATM_PLAYERS_V_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZZATM_PLAYERS_V.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZZATM_PLAYERS_V_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZZATM_PLAYERS_V_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZZATM_PLAYERS_V.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZZATM_PLAYERS_V_TOTAL.

*...processing: ZZATM_QUESTIONSV................................*
TABLES: ZZATM_QUESTIONSV, *ZZATM_QUESTIONSV. "view work areas
CONTROLS: TCTRL_ZZATM_QUESTIONSV
TYPE TABLEVIEW USING SCREEN '0030'.
DATA: BEGIN OF STATUS_ZZATM_QUESTIONSV. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZZATM_QUESTIONSV.
* Table for entries selected to show on screen
DATA: BEGIN OF ZZATM_QUESTIONSV_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZZATM_QUESTIONSV.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZZATM_QUESTIONSV_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZZATM_QUESTIONSV_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZZATM_QUESTIONSV.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZZATM_QUESTIONSV_TOTAL.

*.........table declarations:.................................*
TABLES: ZZATM_GAMES                    .
TABLES: ZZATM_PLAYERS                  .
TABLES: ZZATM_QUESTIONS                .
