;@@@ Added by Krithika 10/3/2014
; He threatened the intruders with a gun and frightened them off.       [OALD]
; उसने घुसपैठियों को बंदूक का डर दिखाकर उन्हें भगा दिया .
; He threatened the intruders with a gun and frightened them away. 
; उसने घुसपैठियों को बंदूक का डर दिखाकर उन्हें भगा दिया .
(defrule frighten2
(declare (salience 4900))
(id-root ?id frighten)
(id-root ?id1 off|away)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-upasarga  ?id ?id1) (kriyA-kriyA_viSeRaNa  ?id ?id1))
(kriyA-object  ?id ?)

(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BagA_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " frighten.clp     frighten2  "  ?id "  " ?id1 "  BagA_xe  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  frighten.clp   frighten2   "  ?id " ko )" crlf)
)

;------------------------- Default Rules ------------------------
;$$$ Modified by Krithika on 10/3/2014 
(defrule frighten0
(declare (salience 4800))
(id-root ?id frighten)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id frightened)	; Commented by Krithika 10/3/2014
(id-cat_coarse ?id adjective) ; Added by Krithika 10/3/2014
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BayaBIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  frighten.clp  	frighten0   "  ?id "  BayaBIwa )" crlf))
)

;given_word=frightened && word_category=adjective	$BayaBIwa)

;"frightened","Adj","1.BayaBIwa"
;The frightened antelope ran fast.
;-----------------------------------------------
;Removed salience on 10/3/2014 by Krithika
(defrule frighten1
(id-root ?id frighten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id darA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frighten.clp 	frighten1   "  ?id "  darA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  frighten.clp  frighten1   "  ?id " ko )" crlf))
)

;"frighten","VT","1.darAnA"
;Ravi's anger frightened me.
;The bark of the dog can frighten the child.
;

;#######################Additional examples####################
 ; The high prices have frightened off many customers.
; Her story frightened the garden workers.
; It wana who spread the leopard story that frightened the garden workers into remaining at home at night.
; Don't be frightened.
; He sounded frightened.
