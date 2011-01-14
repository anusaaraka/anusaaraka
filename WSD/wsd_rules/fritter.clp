
(defrule fritter0
(declare (salience 5000))
(id-root ?id fritter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Meaning_Target::))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fritter.clp   fritter0   "  ?id "  lapasI )" crlf))
)

;He frittered away his money on gambling
;usane apanA pEsA jue meM gazvA xiyA
(defrule fritter1
(declare (salience 4900))
(id-root ?id fritter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fritter.clp 	fritter0   "  ?id "  lapasI )" crlf))
)

;"fritter","N","1.lapasI"
;The potato fritters are very tasty.
;
(defrule fritter2
(declare (salience 4800))
(id-root ?id fritter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gazvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fritter.clp 	fritter1   "  ?id "  gazvA )" crlf))
)

;"fritter","VT","1.gazvAnA"
;The brothers frittered away their wealth in gambling.
;
