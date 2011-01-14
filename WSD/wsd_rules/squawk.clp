
(defrule squawk0
(declare (salience 5000))
(id-root ?id squawk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squawk.clp 	squawk0   "  ?id "  cIKa )" crlf))
)

;"squawk","N","1.cIKa"
;He hates the squawk of the parrot.
;
(defrule squawk1
(declare (salience 4900))
(id-root ?id squawk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squawk.clp 	squawk1   "  ?id "  cIKa_mAra )" crlf))
)

;"squawk","V","1.cIKa_mAranA"
;What do you mean? He squawked.
;
