
(defrule shepherd0
(declare (salience 5000))
(id-root ?id shepherd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZeriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shepherd.clp 	shepherd0   "  ?id "  gadZeriyA )" crlf))
)

;"shepherd","N","1.gadZeriyA"
;The shepherd lost two sheep in the meadows.
;
(defrule shepherd1
(declare (salience 4900))
(id-root ?id shepherd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArga_xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shepherd.clp 	shepherd1   "  ?id "  mArga_xiKA )" crlf))
)

;"shepherd","V","1.mArga_xiKAnA"
;A guide shepherded us into the musium.
;
