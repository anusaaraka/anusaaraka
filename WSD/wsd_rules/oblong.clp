
(defrule oblong0
(declare (salience 5000))
(id-root ?id oblong)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AyAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oblong.clp 	oblong0   "  ?id "  AyAwa )" crlf))
)

(defrule oblong1
(declare (salience 4900))
(id-root ?id oblong)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AyawAkqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oblong.clp 	oblong1   "  ?id "  AyawAkqwi )" crlf))
)

;"oblong","Adj","1.AyawAkqwi/AyawAkAra"
;The patch of ground was oblong && unweeded.
;
;