
(defrule chief0
(declare (salience 5000))
(id-root ?id chief)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 guest)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chief.clp 	chief0   "  ?id "  muKya )" crlf))
)

(defrule chief1
(declare (salience 4900))
(id-root ?id chief)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chief.clp 	chief1   "  ?id "  muKiyA )" crlf))
)

;default_sense && category=noun	pramuKa	0
;"chief","N","1.pramuKa"
;The chief of the army staff visited the border districts of Jammu.
;
;
