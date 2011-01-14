
(defrule cold0
(declare (salience 5000))
(id-root ?id cold)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaMdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cold.clp 	cold0   "  ?id "  TaMdA )" crlf))
)

(defrule cold1
(declare (salience 4900))
(id-root ?id cold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cold.clp 	cold1   "  ?id "  TaMda )" crlf))
)

;default_sense && category=noun	TaMdZa	0
;"cold","N","1.TaMdZa"
;I was shivering with cold at night.
;--"2.jZukAma"
;I'm suffering from cold && cough.
;
;
