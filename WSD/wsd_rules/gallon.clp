

;Added by Meena(28.5.10)
;I went to the store , got a gallon of milk , and returned the eggs .
(defrule gallon_of1
(declare (salience 5000))
(id-root ?id gallon)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
(id-word =(+ ?id 2) milk|petrol|water)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  =(+ ?id 1) gElana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gallon.clp  gallon_of1  "  ?id "  " (+ ?id 1) "  gElana  )" crlf))
)





