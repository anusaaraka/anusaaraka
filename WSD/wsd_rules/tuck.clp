
(defrule tuck0
(declare (salience 5000))
(id-root ?id tuck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cunata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tuck.clp 	tuck0   "  ?id "  cunata )" crlf))
)

;"tuck","N","1.cunata"
;He made a tuck in the frock.
;--"2.miTAI"
; A school tuck shop is nearby.
;
(defrule tuck1
(declare (salience 4900))
(id-root ?id tuck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sameta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tuck.clp 	tuck1   "  ?id "  sameta )" crlf))
)

;"tuck","V","1.sametanA"
;Tuck your skirt properly.
;--"2.cunata_dAlanA"
;The lady tucked her hair with a clip.
;--"3.surakRiwa_sWAna_para_raKanA"
;He tucked the watch in the bureau.
;--"4.ArAma_xenA"
;Tuck a blanket.
;
