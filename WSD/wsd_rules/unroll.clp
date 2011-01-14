
(defrule unroll0
(declare (salience 5000))
(id-root ?id unroll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kula_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unroll.clp 	unroll0   "  ?id "  Kula_jA )" crlf))
)

(defrule unroll1
(declare (salience 4900))
(id-root ?id unroll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unroll.clp 	unroll1   "  ?id "  Kola )" crlf))
)

;"unroll","VT","1.Kula_jAnA"
;She unrolled the carpet.
;--"2.eka ke bAxa eka honA"
;We watched the events unroll.
;
;
