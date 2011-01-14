
(defrule nest0
(declare (salience 5000))
(id-root ?id nest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GoMsalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nest.clp 	nest0   "  ?id "  GoMsalA )" crlf))
)

;"nest","N","1.GoMsalA"
;The sparrow made a beautiful nest.
;
(defrule nest1
(declare (salience 4900))
(id-root ?id nest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GoMsalA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nest.clp 	nest1   "  ?id "  GoMsalA_banA )" crlf))
)

;"nest","VTI","1.GoMsalA_banAnA"
;The sparrows nested on the tree.
;
