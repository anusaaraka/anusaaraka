
(defrule inch0
(declare (salience 5000))
(id-root ?id inch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inch.clp 	inch0   "  ?id "  iMca )" crlf))
)

;"inch","N","1.iMca"
;Could you please move an inch.
;
(defrule inch1
(declare (salience 4900))
(id-root ?id inch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XIre_XIre_Age_baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inch.clp 	inch1   "  ?id "  XIre_XIre_Age_baDZa )" crlf))
)

;"inch","V","1.XIre_XIre_Age_baDZanA"
;They inched their way across the narrow footbridge.
;
