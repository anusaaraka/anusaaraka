

(defrule advertise0
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id advertising )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vijFApana_kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  advertise.clp          advertise0   "  ?id "  vijFApana_kI )" crlf))
)

(defrule advertise1
(declare (salience 5000))
(id-root ?id advertise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id advertising )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vijFApana_kI_praNAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  advertise.clp  	advertise1   "  ?id "  vijFApana_kI_praNAlI )" crlf))
)

;"advertising","N","1.vijFApana_kI_praNAlI"
;With competition growing stiffer,new methods of advertising are being used.
;
(defrule advertise2
(declare (salience 4900))
(id-root ?id advertise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vijFApana_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advertise.clp 	advertise2   "  ?id "  vijFApana_xe )" crlf))
)

;"advertise","V","1.vijFApana_xenA"
;All big companies advertise their products.
;
;
