
(defrule stern0
(declare (salience 5000))
(id-root ?id stern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stern.clp 	stern0   "  ?id "  kaTora )" crlf))
)

(defrule stern1
(declare (salience 4900))
(id-root ?id stern)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTora_yA_nirxaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stern.clp 	stern1   "  ?id "  kaTora_yA_nirxaya )" crlf))
)

;"stern","Adj","1.kaTora yA nirxaya"
;Hotler was a stern man.
;--"2.jZahAjZa kA piCalA BAga'     
;When an iceberg was seen in front of a ship, people tried to escape from the stern part.
;
;