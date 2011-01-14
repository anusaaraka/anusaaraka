
(defrule assault0
(declare (salience 5000))
(id-root ?id assault)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assault.clp 	assault0   "  ?id "  hamalA )" crlf))
)

(defrule assault1
(declare (salience 4900))
(id-root ?id assault)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assault.clp 	assault1   "  ?id "  hamalA_kara )" crlf))
)

;"assault","VT","1.hamalA karanA/AkramaNa_karanA"
;The police assaulted the unarmed demonstrators.
;
;