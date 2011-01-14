
(defrule solemn0
(declare (salience 5000))
(id-root ?id solemn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gamBIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solemn.clp 	solemn0   "  ?id "  gamBIra )" crlf))
)

(defrule solemn1
(declare (salience 4900))
(id-root ?id solemn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paviwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solemn.clp 	solemn1   "  ?id "  paviwra )" crlf))
)

;"solemn","Adj","1.paviwra"
;Holy places are considered to be solemn.
;--"2.OpacArika"
;Soldiers performed their duties with full solemn for their mother land.
;--"3.gaMBIra"
;He looked very solemn when he came to know about his uncle's death.
;
;
