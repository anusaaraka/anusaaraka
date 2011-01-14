
(defrule nag0
(declare (salience 5000))
(id-root ?id nag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tattU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nag.clp 	nag0   "  ?id "  tattU )" crlf))
)

;"nag","N","1.tattU"
;A race of nags were held in the country club yesterday.
;They used a nag to come here.
;
(defrule nag1
(declare (salience 4900))
(id-root ?id nag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nag.clp 	nag1   "  ?id "  waMga_kara )" crlf))
)

;"nag","V","1.waMga_karanA"
;Her mother keeps nagging her to study.
;
