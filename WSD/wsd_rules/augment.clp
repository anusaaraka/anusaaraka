
(defrule augment0
(declare (salience 5000))
(id-root ?id augment)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  augment.clp 	augment0   "  ?id "  baDZA )" crlf))
)

(defrule augment1
(declare (salience 4900))
(id-root ?id augment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  augment.clp 	augment1   "  ?id "  baDZa )" crlf))
)

;"augment","VTI","1.baDZAnA[baDZanA]"
;The side job augmented his income. 
;
