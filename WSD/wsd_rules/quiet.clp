
;Added by human
(defrule quiet0
(declare (salience 5000))
(id-root ?id quiet)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 keep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quiet.clp 	quiet0   "  ?id "  SAMwa )" crlf))
)

(defrule quiet1
(declare (salience 4900))
(id-root ?id quiet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIrava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quiet.clp 	quiet1   "  ?id "  nIrava )" crlf))
)

(defrule quiet2
(declare (salience 4800))
(id-root ?id quiet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAMwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quiet.clp 	quiet2   "  ?id "  SAMwa_kara )" crlf))
)

;"quiet","VT","1.SAMwa_karanA"
;Quiet the dragons of worry && fear
;
;
