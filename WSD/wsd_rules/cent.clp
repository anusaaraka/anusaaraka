(defrule cent0
(declare (salience 0))
(id-root ?id cent)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id cents)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEnta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  cent.clp      cent0   "  ?id "  sEnta )" crlf)
)
)

