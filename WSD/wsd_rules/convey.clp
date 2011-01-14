
(defrule convey0
(declare (salience 5000))
(id-root ?id convey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convey.clp 	convey0   "  ?id "  xe )" crlf))
)

;"convey","V","1.vahana_karanA^bawalAnA"
(defrule convey1
(declare (salience 4900))
(id-root ?id convey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convey.clp 	convey1   "  ?id "  le_jA )" crlf))
)

;"convey","VT","1.le_jAnA"
;This train conveys both passengers && goods.
;--"2.pahuzcAnA"
;Please convey my good wishes to her.
;The important message conveyed by radio && T.V.
;Convey the news to everyone
;
