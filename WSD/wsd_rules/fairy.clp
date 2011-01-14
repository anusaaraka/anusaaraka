
(defrule fairy0
(declare (salience 5000))
(id-root ?id fairy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apsarA_jEsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fairy.clp 	fairy0   "  ?id "  apsarA_jEsI )" crlf))
)

;"fairy","Adj","1.apsarA_jEsI"
;Lady Diana's life was like a fairy tale.
;
(defrule fairy1
(declare (salience 4900))
(id-root ?id fairy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fairy.clp 	fairy1   "  ?id "  parI )" crlf))
)

;default_sense && category=noun	apsarA	0
;"fairy","N","1.apsarA"
;I saw many fairies in my dream.
;
