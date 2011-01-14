
(defrule log0
(declare (salience 5000))
(id-root ?id log)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id logging )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id katAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  log.clp  	log0   "  ?id "  katAI )" crlf))
)

;"logging","N","1.katAI{vqkRoM_kI}"
;Logging on a large scale is creating environmental problems.
;
(defrule log1
(declare (salience 4900))
(id-root ?id log)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  log.clp 	log1   "  ?id "  wanA )" crlf))
)

;"log","N","1.wanA"
;Logs of wood are often used as beams in rural houses.
;--"2.rojanAmacA"
;The driver maintains a logbook.
;
(defrule log2
(declare (salience 4800))
(id-root ?id log)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqkRa_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  log.clp 	log2   "  ?id "  vqkRa_kAta )" crlf))
)

;"log","V","1.vqkRa_kAtanA"
;In protected forests trees are logged with the convinance of the forest guards.
;
