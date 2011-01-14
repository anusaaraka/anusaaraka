
(defrule ballot0
(declare (salience 5000))
(id-root ?id ballot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mawa-pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ballot.clp 	ballot0   "  ?id "  mawa-pawra )" crlf))
)

;"ballot","N","1.mawa-pawra"
;This year special ballot boxes were made to keep the ballots.
;
(defrule ballot1
(declare (salience 4900))
(id-root ?id ballot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mawaxAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ballot.clp 	ballot1   "  ?id "  mawaxAna )" crlf))
)

;"ballot","V","1.mawaxAna"
;The party balloted its members.
;
