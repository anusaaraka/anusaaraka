
(defrule mill0
(declare (salience 5000))
(id-root ?id mill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mill.clp 	mill0   "  ?id "  mila )" crlf))
)

;"mill","N","1.mila"
;Walk straight up front. A while later you will find a mill on your left, just opposite it is the library.
;--"2.cakkI"
;The mill closed down due to lack of funds.
;
(defrule mill1
(declare (salience 4900))
(id-root ?id mill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mill.clp 	mill1   "  ?id "  pIsa )" crlf))
)

;"mill","V","1.pIsanA"
;Mill the wheat properly.
;
