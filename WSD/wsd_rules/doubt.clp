
(defrule doubt0
(declare (salience 5000))
(id-root ?id doubt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxeha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  doubt.clp 	doubt0   "  ?id "  saMxeha )" crlf))
)

;"doubt","N","1.saMxeha"
;Some peope have doubts about her honesty
;
(defrule doubt1
(declare (salience 4900))
(id-root ?id doubt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxeha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  doubt.clp 	doubt1   "  ?id "  saMxeha_kara )" crlf))
)

;"doubt","V","1.saMxeha_karanA"
;I doubt whether he'll come to the party or not
;
