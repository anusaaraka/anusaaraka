
(defrule wage0
(declare (salience 5000))
(id-root ?id wage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majaxUrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wage.clp 	wage0   "  ?id "  majaxUrI )" crlf))
)

;"wage","N","1.majaxUrI"
;Workers get nominal wages
;
(defrule wage1
(declare (salience 4900))
(id-root ?id wage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wage.clp 	wage1   "  ?id "  kirAyA_kara )" crlf))
)

;"wage","VT","1.kirAyA_karanA"
;He had to wage his flat to get money
;
