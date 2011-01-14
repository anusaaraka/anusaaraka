
(defrule yon0
(declare (salience 5000))
(id-root ?id yon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahAz_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yon.clp 	yon0   "  ?id "  vahAz_kA )" crlf))
)

;"yon","Adj","1.vahAz_kA/uXara_kA"
;Yon island received heavy rains.
;
(defrule yon1
(declare (salience 4900))
(id-root ?id yon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yon.clp 	yon1   "  ?id "  vahAz )" crlf))
)

;"yon","Adv","1.vahAz/uXara"
;Some books were kept here,some yon.
;
