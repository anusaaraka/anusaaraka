
(defrule protestant0
(declare (salience 5000))
(id-root ?id protestant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id protestaMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  protestant.clp 	protestant0   "  ?id "  protestaMta )" crlf))
)

(defrule protestant1
(declare (salience 4900))
(id-root ?id protestant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id protestEnta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  protestant.clp 	protestant1   "  ?id "  protestEnta )" crlf))
)

;"protestant","Adj","1.protestEnta"
;In ancient times a protestant was punished very harshly.
;
;