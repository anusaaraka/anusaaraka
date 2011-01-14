
(defrule lather0
(declare (salience 5000))
(id-root ?id lather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pena))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lather.clp 	lather0   "  ?id "  Pena )" crlf))
)

;"lather","N","1.Pena/JAga"
;Shaving creame produces very poor lather in hard water.
;--"2.BArI_pasInA{viSeRarUpa_se_GodZe_kA}"
;--"3.uwwejiwa_avasWA"
;He was in lather when asked to deliver his maiden speech.
;
(defrule lather1
(declare (salience 4900))
(id-root ?id lather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAga_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lather.clp 	lather1   "  ?id "  JAga_banA )" crlf))
)

;"lather","V","1.JAga_banAnA"
;Lather the face well helps in smooth shaving.
;
