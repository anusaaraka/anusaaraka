
(defrule upset0
(declare (salience 5000))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) get)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nArAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset0   "  ?id "  nArAja )" crlf))
)

(defrule upset1
(declare (salience 4900))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZabadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset1   "  ?id "  gadZabadZa )" crlf))
)

;default_sense && category=noun	aswavyaswawA/viparyaya/palata	0
;"upset","N","1.aswavyaswawA/viparyaya/palata"
;His carelessness could have caused an ecological upset
;--"2.GabadZAhata/pareSAnI"
;He was badly bruised by the upset of his sled at a high speed
;
;
