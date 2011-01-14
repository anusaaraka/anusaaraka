
(defrule fault0
(declare (salience 5000))
(id-root ?id fault)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) my)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fault.clp 	fault0   "  ?id "  BUla )" crlf))
)

(defrule fault1
(declare (salience 4900))
(id-root ?id fault)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) our)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fault.clp 	fault1   "  ?id "  BUla )" crlf))
)

(defrule fault2
(declare (salience 4800))
(id-root ?id fault)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) her)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fault.clp 	fault2   "  ?id "  BUla )" crlf))
)

(defrule fault3
(declare (salience 4700))
(id-root ?id fault)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) his)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fault.clp 	fault3   "  ?id "  BUla )" crlf))
)

(defrule fault4
(declare (salience 4600))
(id-root ?id fault)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) your)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fault.clp 	fault4   "  ?id "  BUla )" crlf))
)

(defrule fault5
(declare (salience 4500))
(id-root ?id fault)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) their)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fault.clp 	fault5   "  ?id "  BUla )" crlf))
)

(defrule fault6
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
