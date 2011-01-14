
(defrule religious0
(declare (salience 5000))
(id-root ?id religious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XArmika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  religious.clp 	religious0   "  ?id "  XArmika )" crlf))
)

(defrule religious1
(declare (salience 4900))
(id-root ?id religious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majZahabI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  religious.clp 	religious1   "  ?id "  majZahabI )" crlf))
)

;"religious","Adj","1.majZahabI/XArmika"
;Temple is a religious place for Hindus.
;There is a religious house at the country side.
;--"2.XArmika_svaBAva_kA"
;She's very religious. 
;--"3.niRTApUrvaka"
;Pay religious attention to detail.
;
;