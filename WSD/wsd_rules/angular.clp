
(defrule angular0
(declare (salience 5000))
(id-root ?id angular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koNIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  angular.clp 	angular0   "  ?id "  koNIya )" crlf))
)

(defrule angular1
(declare (salience 4900))
(id-root ?id angular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurbala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  angular.clp 	angular1   "  ?id "  xurbala )" crlf))
)

;"angular","Adj","1.xurbala/ikaharA"
;The weak children of Somalia have angular figures.
;--"2.kaTora_akKadZa"
;His angular posture often misled the people.
;--"3.koNIya"
;The angular blocks of stones fell from the top.
; 
;"animal","N","1.paSu"
;We should be kind to animals.
;
;
