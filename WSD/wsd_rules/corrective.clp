
(defrule corrective0
(declare (salience 5000))
(id-root ?id corrective)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suXAra_ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corrective.clp 	corrective0   "  ?id "  suXAra_ke_liye )" crlf))
)

;"corrective","Adj","1.suXAra_ke_liye"
;Government took corrective action against the criminals.
;
(defrule corrective1
(declare (salience 4900))
(id-root ?id corrective)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMSoXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corrective.clp 	corrective1   "  ?id "  saMSoXana )" crlf))
)

;"corrective","N","1.saMSoXana/prawikAra_karane_vAlA"
;Doctor keeps corrective records of the patient. 
;
