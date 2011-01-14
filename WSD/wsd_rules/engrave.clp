
(defrule engrave0
(declare (salience 5000))
(id-root ?id engrave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id engraving )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XAwu-lakadZI_Axi_para_ciwra_Koxane_kI_vixyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  engrave.clp  	engrave0   "  ?id "  XAwu-lakadZI_Axi_para_ciwra_Koxane_kI_vixyA )" crlf))
)

;"engraving","N","1.XAwu-lakadZI_Axi_para_ciwra_Koxane_kI_vixyA"
;Sita bought an old engraving of the cathedral.
;
(defrule engrave1
(declare (salience 4900))
(id-root ?id engrave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engrave.clp 	engrave1   "  ?id "  Koxa )" crlf))
)

;"engrave","VT","1.KoxanA"
;Rats engrave the land.
;
;
