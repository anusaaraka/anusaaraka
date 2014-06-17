
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
(defrule off14
(declare (salience 4800))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb )
(id-word =(+ ?id 1) coast)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_lage_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off14	   "  ?id "  se_lage_hue )" crlf))
)

;Rule modified by Meena(11.01.10)
;He lives in a narrow lane off the main road .
;$$$ Modified by Shirisha Manju Suggested by Chaitanya Sir (9-01-14) 
;	added root fact and modified meaning from 'se_lagA_huA' to 'se_nikalI_huI'
;	muKya sadaka se alaga howI huI sazkarI galI meM vaha rahawA hE.
;	muKya sadaka se nikalI huI sazkarI galI meM vaha rahawA hE.
;	muKya sadaka se jAwI huI sazkarI galI meM vaha rahawA hE.
(defrule off2
(declare (salience 4800))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(kriyA-off_saMbanXI  ?id1 ?id2)  ;Added by Meena(11.01.10)
(id-root ?id2 road|river|street)  
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_nikalI_huI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp      off2   "  ?id "  se_nikalI_huI )" crlf))
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

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;I'm off now - see you tomorrow. [Cambridge]
;मैं अब उपलब्ध नहीं हूँ - आपसे कल मिलता है  . 
(defrule off4
(declare (salience 5500))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(id-cat_coarse ?id1 pronoun)
(viSeRya-viSeRaka  ? ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upalabXa_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off4   "  ?id "  upalabXa_nahIM )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;She's off to Canada next week.  [Cambridge]
;वह अगले सप्ताह कनाडा जा रही है . 
(defrule off5
(declare (salience 5600))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(id-cat_coarse ?id1 pronoun)
(viSeRya-to_saMbanXI  ?id ?)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off5   "  ?id "  jA_raha )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Take your jacket off.  [Cambridge]
;आपका जैकेट उतार लीजिए .  
(defrule off6
(declare (salience 5600))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off6   "  ?id "  uwAra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;You can get some money off if you pay cash.   [Cambridge]
;आप थोडी पैसे में छूट पा सकते हैं यदि आप रोकड पैसे देते हैं . 
(defrule off7
(declare (salience 5700))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(id-root ?id1 money|cash|percent)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off7   "  ?id "  CUta )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;He's off at the moment - can I get him to ring you back?  [Cambridge]
;वह इस समय उपलब्ध नहीं - क्या मैं उसे वापस आपको टेलीफोन करने के लिये कह सकता हूँ ? 
(defrule off8
(declare (salience 5700))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ? ?id)
(viSeRya-at_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upalabXa_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off8   "  ?id "  upalabXa_nahIM )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;A solution is still some way off.  [OALD]
;अभी भी कुछ हल नहीं मिला  है . 
(defrule off9
(declare (salience 5700))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-subject  ? ?id2)
(id-root ?id1 way)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id1 ?id nahIM_milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " off.clp  off9  "  ?id1 "  " ?id "  nahIM_milA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The wedding is off.  [OALD]
;विवाहोत्सव रद्द हो गया है .  
(defrule off10
(declare (salience 5700))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id particle)
(id-root ?id1 wedding|meeting|ceremony|marriage|conference|engagement|appointment)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off10   "  ?id "  raxxa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Water is off.  [OALD]
;पानी बन्द है . 
;Make sure the TV is off. [OALD]
;निश्चित कीजिए दूरदर्शन बन्द है . 
(defrule off11
(declare (salience 5700))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id particle)
(id-root ?id1 water|tv)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off11   "  ?id "  banxa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;I've got three days off next week. [OALD]
;मेरे पास अगले सप्ताह तीन दिन की छुट्टी है . 
(defrule off12
(declare (salience 5700))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(id-root ?id1 day|month|hour|week)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CuttI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off12   "  ?id "  CuttI )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Shoes with $20 off. [OALD]
;20 छूट $ के साथ जूते . 
(defrule off13
(declare (salience 5700))
(id-root ?id off)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(id-cat_coarse ?id1 number)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  off.clp 	off13   "  ?id "  CUta )" crlf))
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
