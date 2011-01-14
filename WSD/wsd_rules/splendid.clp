
(defrule splendid0
(declare (salience 5000))
(id-root ?id splendid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gOravapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  splendid.clp 	splendid0   "  ?id "  gOravapUrNa )" crlf))
)

(defrule splendid1
(declare (salience 4900))
(id-root ?id splendid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  splendid.clp 	splendid1   "  ?id "  SAnaxAra )" crlf))
)

;"splendid","Adj","1.SAnaxAra"
;Your house has a splendid design.
;Your mind is full of splendid ideas.
;
;
