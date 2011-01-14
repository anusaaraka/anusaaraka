
(defrule sympathetic0
(declare (salience 5000))
(id-root ?id sympathetic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAnuBUwiSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sympathetic.clp 	sympathetic0   "  ?id "  sahAnuBUwiSIla )" crlf))
)

(defrule sympathetic1
(declare (salience 4900))
(id-root ?id sympathetic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAnuBUwiSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sympathetic.clp 	sympathetic1   "  ?id "  sahAnuBUwiSIla )" crlf))
)

;"sympathetic","Adj","1.sahAnuBUwiSIla"
;He was very sympathetic on the demise of her mother.
;--"2.sahAnuBUwisUcaka"
;Mahesh wept bitterly when his dear friend met an accident. It shows his sympathetic nature.
;--"3.kAruNika"
;The devastation caused by earthquake was very sympathetic.
;
;
