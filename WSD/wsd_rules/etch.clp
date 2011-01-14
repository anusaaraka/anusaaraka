
(defrule etch0
(declare (salience 5000))
(id-root ?id etch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id etching )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nakkASI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  etch.clp  	etch0   "  ?id "  nakkASI )" crlf))
)

;"etching","N","1.nakkASI"
;The vase had beautiful etchings of birds on it.
;
(defrule etch1
(declare (salience 4900))
(id-root ?id etch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwkIrNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  etch.clp 	etch1   "  ?id "  uwkIrNa_kara )" crlf))
)

;"etch","V","1.uwkIrNa_karanA"
;Beautiful etch of animals can be seen on the walls of Ajantha cave.
;--"2.nakkASI_karanA"
;The artists must have spend many hours etching  the images on thick && flat glass. 
;
;
