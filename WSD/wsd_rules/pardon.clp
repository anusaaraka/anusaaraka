
(defrule pardon0
(declare (salience 5000))
(id-root ?id pardon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pardon.clp 	pardon0   "  ?id "  mAPI )" crlf))
)

(defrule pardon1
(declare (salience 4900))
(id-root ?id pardon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAPa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pardon.clp 	pardon1   "  ?id "  mAPa_kara )" crlf))
)

;"pardon","V","1.mAPa_karanA"
;The offender was pardoned by the king.
;
;