
(defrule assort0
(declare (salience 5000))
(id-root ?id assort)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id assorted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id milAjulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  assort.clp  	assort0   "  ?id "  milAjulA )" crlf))
)

;"assorted","Adj","1.milAjulA"
;Give me a box of assorted chocolates.
;
(defrule assort1
(declare (salience 4900))
(id-root ?id assort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assort.clp 	assort1   "  ?id "  CAzta )" crlf))
)

;"assort","V","1.CAztanA"
;
;
