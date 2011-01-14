
(defrule ferret0
(declare (salience 5000))
(id-root ?id ferret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nevale_kI_jAwi_kA_jAnavara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ferret.clp 	ferret0   "  ?id "  nevale_kI_jAwi_kA_jAnavara )" crlf))
)

;"ferret","N","1.nevale_kI_jAwi_kA_jAnavara"
;Ferrets are raised by many farmers to rid their fields of vermins like rats etc.
;
(defrule ferret1
(declare (salience 4900))
(id-root ?id ferret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DUMDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ferret.clp 	ferret1   "  ?id "  DUMDa )" crlf))
)

;"ferret","V","1.DUMDanA"
;I spent a whole day ferreting for some old coins.
;--"2.KojanA"
;I ferreted in the attic for locating my favourite book.
;
