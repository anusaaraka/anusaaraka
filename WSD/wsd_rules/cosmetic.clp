
(defrule cosmetic0
(declare (salience 5000))
(id-root ?id cosmetic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAMwi_varXaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cosmetic.clp 	cosmetic0   "  ?id "  kAMwi_varXaka )" crlf))
)

;"cosmetic","Adj","1.kAMwi_varXaka"
;She went for cosmetic surgery after she suffered from burns.
;
(defrule cosmetic1
(declare (salience 4900))
(id-root ?id cosmetic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ubatana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cosmetic.clp 	cosmetic1   "  ?id "  ubatana )" crlf))
)

;"cosmetic","N","1.ubatana/aMgarAga"
;I avoid using cosmetics.
;
