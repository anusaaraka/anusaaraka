
(defrule skip0
(declare (salience 5000))
(id-root ?id skip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skip.clp 	skip0   "  ?id "  kUxa )" crlf))
)

(defrule skip1
(declare (salience 4900))
(id-root ?id skip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala-kUxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skip.clp 	skip1   "  ?id "  uCala-kUxa_kara )" crlf))
)

;"skip","V","1.uCala-kUxa karanA"
;Frogs were skipping in the pond.
;--"2.viRaya baxalawA rahanA"  
;He was skipping from one subject to another.
;--"3.CodZa jAnA/CodZa xenA"
;In a hurry he skip breakfast.
;Skipping on rope is good for healthy person.
;
;