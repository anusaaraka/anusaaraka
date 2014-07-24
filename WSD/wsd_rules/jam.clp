;Modified by Meena(5.02.10)
(defrule jam0
(declare (salience 5000))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?id1)  ;added and the next line commented by Meena
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id murabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp 	jam0   "  ?id "  murabbA )" crlf))
)


;default_sense && category=verb	xabA	0
;"jam","V","1.xabAnA"
;The car was jammed between the two trucks.
;--"2.gadZabadZA_jAnA"
;The machine has jammed due to dust in the pipe.
;--"3.avaroXa_karanA"
;The crowd jammed the street in protest against Mandal Commission.
;
;

;Added by sheetal(6-01-10).
(defrule jam2
(declare (salience 4950))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id jammed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp   jam2   "  ?id "  jAma )" crlf))
)
;They used force to open the jammed door .


;@@@ Added by Prachi Rathore[17-1-14]
;The bus was delayed in a five-mile jam.[oald]
;बस एक पाँच-मील के जाम में विलंबित हुयी. 
(defrule jam4
(declare (salience 5500))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-root ?id1 delay)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp 	jam4   "  ?id "  jAma)" crlf))
)


;@@@ Added by Prachi Rathore[17-1-14]
;There's a paper jam in the photocopier.[oald]
;फोटोकपी मशीन में एक कगजी रुकावट है . 
(defrule jam5
(declare (salience 5500))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-root ?id1 photocopier)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rukAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp 	jam5   "  ?id "  rukAvata)" crlf))
)

;@@@ Added by Prachi Rathore[17-1-14]
;He jammed his fingers in his ears.[oald]
;उसने  उसकी उङ्गलियाँ उसके कान में अटका लीं . 
(defrule jam6
(declare (salience 5500))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id atakA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp 	jam6   "  ?id "  atakA_le)" crlf))
)


;@@@ Added by Prachi Rathore[17-1-14]
;There's a loose part that keeps jamming the mechanism.[oald]
;एक ढीला भाग है जो यन्त्रविन्यास अवरुद्ध करना जारी रखता है .  
(defrule jam7
(declare (salience 5500))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kqxanwa_karma  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaruxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp 	jam7  "  ?id "  avaruxXa_kara)" crlf))
)

;@@@ Added by Prachi Rathore[17-1-14]
;He jammed his fingers in his ears.[oald]
;उसने  उसकी उङ्गलियाँ उसके कान में अटका लीं . 
(defrule jam8
(declare (salience 5500))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id atakA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp 	jam8   "  ?id "  atakA_xe)" crlf))
)

;-------------------------- Default rules ------------------------
;@@@ Added by Prachi Rathore[17-1-14]
;Strawberry jam.[oald]
;स्त्राबेरी जैम . 
(defrule jam3
(declare (salience 200))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp      jam3   "  ?id "  jEma)" crlf))
)

(defrule jam1
(declare (salience 200))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp      jam1   "  ?id "  jama )" crlf))
)

