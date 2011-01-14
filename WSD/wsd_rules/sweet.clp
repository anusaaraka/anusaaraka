
; Added by human being
(defrule sweet0
(declare (salience 5000))
(id-root ?id sweet)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sweets )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miTAI))
;(assert (id-wsd_number ?id s)) ;Commented by Roja (13-01-11) Rama ate some sweets.
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweet.clp 	sweet0   "  ?id "  miTAI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number  "?*wsd_dir* "  sweet.clp     sweet0   "  ?id " s )" crlf))
)

(defrule sweet1
(declare (salience 4900))
(id-root ?id sweet)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mITA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweet.clp 	sweet1   "  ?id "  mITA )" crlf))
)

;"sweet","Adj","1.mITA"
;Grapes are sweet at this time of the year.
;--"2.maXura"
;She has a sweet voice.
;--"3.BInI"
;The garden air was sweet with the scent of tube roses.
;--"4.wAjZA"
;Once you enter the countryside, you can smell the pollution free sweet air.
;
(defrule sweet2
(declare (salience 4800))
(id-root ?id sweet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miTAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweet.clp 	sweet2   "  ?id "  miTAI )" crlf))
)

;"sweet","N","1.miTAI"
;Small kids always like sweet.
;
