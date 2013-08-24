(defrule fault0
(declare (salience 5000))
(id-root ?id fault)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) my|our|her|his|your|their);Removed below rules and merged into one rule by giving or condition in word fact ;Modified by Roja(19-08-11)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fault.clp 	fault0   "  ?id "  BUla )" crlf))
)


(defrule fault1
(declare (salience 4400))
(id-root ?id fault)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fault.clp 	fault6   "  ?id "  kamI )" crlf))
)

;default_sense && category=noun	BUla	0
;"fault","N","1.BUla"
;It was my fault that I didn't inform you.
;
;
