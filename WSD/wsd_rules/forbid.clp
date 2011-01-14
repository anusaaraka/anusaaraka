
(defrule forbid0
(declare (salience 5000))
(id-root ?id forbid)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id forbidding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aprIwikara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  forbid.clp  	forbid0   "  ?id "  aprIwikara )" crlf))
)

;"forbidding","Adj","1.aprIwikara"
;She gave me a forbidding reply.
;
(defrule forbid1
(declare (salience 4900))
(id-root ?id forbid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niReXa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forbid.clp 	forbid1   "  ?id "  niReXa_lagA )" crlf))
)

;"forbid","V","1.niReXa_lagAnA"
(defrule forbid2
(declare (salience 4800))
(id-root ?id forbid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forbid.clp 	forbid2   "  ?id "  manA_kara )" crlf))
)

;"forbid","VT","1.manA_karanA"
;My sense of tact forbids an honest answer.
;
