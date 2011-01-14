
(defrule off0
(declare (salience 5000))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suxUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off0   "  ?id "  suxUra )" crlf))
)

;"off","Adj","1.suxUra"
;He looked a bit off during the ceremony.
;
(defrule off1
(declare (salience 4900))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_xUra_hatakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off1   "  ?id "  se_xUra_hatakara )" crlf))
)

;"off","Adv","1.se_xUra_hatakara"
;The institute is still two kilometers off.
;
(defrule off2
(declare (salience 4800))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb )
(id-word =(+ ?id 1) coast)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_lage_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off2   "  ?id "  se_lage_hue )" crlf))
)

;Rule modified by Meena(11.01.10)
;He lives in a narrow lane off the main road .
(defrule off2
(declare (salience 4800))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(kriyA-off_saMbanXI  ?id1 ?id2)  ;Added by Meena(11.01.10)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_lagA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp      off2   "  ?id "  se_lagA_huA )" crlf))
)

;The ship was exploring the ocean-bed off the coast of the southern-most tip of india.
;BArawa ke xakRiNI Cora ke  wata se lage hue sAgara wala para eka panadubbI KojabIna kara rahI WI.
(defrule off3
(declare (salience 4700))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off3   "  ?id "  para_se )" crlf))
)

;"off","Prep","1.para_se"
;He fall off a ladder.
;
;LEVEL 
;Headword   :   off
;
;                                 
;Examples --                     
;  
;--"1.se"
;
;He fell off a ladder
;vaha girA off a sIDZI
;vaha sIDZI se gira gayA           
;
;The rain ran off the roof
;the barasAwa xOdZI off Cawa
;barasAwa kA pAnI Cawa se bahA
;
;The ball rolled off the table
;geMxa  ludZakI off the mejZa
;geMxa mejZa se ludZakI
;
;Cut another slice off the loaf
;kAto eka_Ora slAisa off the breda
;breda se eka Ora slAisa kAto
;
;Take a packet off the shelf
;lo   a pEketa   off the SElPZa
;SelPZa se eka pEketa lo
;
;We are getting right off the subject   (figu)
;hama  hEM   hata rahe    off the  viRaya
;hama viRaya se hata rahe hEM
;
;-"2.se_xUra"
;Keep off the grass 
;raho   off the  GAsa
;GAsa se xUra raho   
;
;They were only 100 meters off the summit when the accident happened
;ve    We   kevala 100 mItara  off the SiKara   jaba   ^   xurGatanA    huI
;jaba xurGatanA huI ve loga SiKara se kevala 100 mItara xUra We 
;
;Scientists are still a long way off a cure  (fig)
;vEjFAnika hEM aBI_BI a lambA rAswA off a ilAja 
;vEjFAnika aBI BI koI ilAja pAne ke kosoM xUra hEM  
;
;--"3.se_nikalanevAlA" (judZA_huA)
;He lives in a narrow lane off the main road
;vaha rahawA_hE in  a  saMkarI  galI  off the muKya mArga
;vaha muKya mArga se_nikalanevAlI eka saMkarI galI meM rahawA hE.
;
;The house has another bedroom off the main bedroom
;the makAna  [ke`]_hE eka_Ora SayanakakRa off the muKya SayanakakRa 
;makAna meM muKya SayanakakRa se(nikalakara) eka Ora SayanakakRa hE 
;        
;--"4.se_hatakara"
;A big house is built off the high street
;a badZA makAna hE banA off the hAI strIta
;hAI strIta se hatakara eka badZA makAna banA hE.
;
;The ship sank off Cape Horn
;the jahAjZa dUbA off kepa hOYrna
;jahAjZa kepa hOYrna se hatakara dUbA
;               
;ukwa uxAharaNoM se EsA prawIwa howA hE ki aMgrejZI 'off' kriyA ke vyApAra
;kI xiSA kI sUcanA xewA hE. yaha 'eka binxu se xUra jAne' ke arWa meM hE.
;isakA anwarnihiwa sUwra hogA -
;
;anwarnihiwa sUwra ;
;
; [meM/para]_se{alaga}
;
;
;sUwra : [meM/para]_se`
