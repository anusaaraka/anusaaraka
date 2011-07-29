
(defrule stop0
(declare (salience 5000))
(id-root ?id stop)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) ing_clause)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stop.clp 	stop0   "  ?id "  roka )" crlf))
)


;Salience reduced by Meena(19.7.11)
(defrule stop1
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id stop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stop.clp 	stop1   "  ?id "  ruka )" crlf))
)

; He did not wish to stop playing
(defrule stop2
(declare (salience 4800))
(id-root ?id stop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stop.clp 	stop2   "  ?id "  roka )" crlf))
)

(defrule stop3
(declare (salience 4700))
(id-root ?id stop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stop.clp 	stop3   "  ?id "  ruka )" crlf))
)



;Modified by Meena(19.7.11)
;When the dollar is in a free-fall, even central banks can not stop it. 
(defrule stop4
(declare (salience 5000))
(id-root ?id stop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?subj)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stop.clp 	stop4   "  ?id "  roka )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  stop.clp      stop4   "  ?id "  ko )" crlf)
)
)

(defrule stop5
(declare (salience 4500))
(id-root ?id stop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id virAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stop.clp 	stop5   "  ?id "  virAma )" crlf))
)

;default_sense && category=noun	virAma	0
;"stop","N","1.virAma"
;A sentence should always end with a full stop.
;
;
