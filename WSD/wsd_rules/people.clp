;The rule commented by Meena(16.9.10)
;Added by Meena(29.4.10);The root of people was taken as person because morph (morph.dat of apertium) takes it like that for the category noun.
;To the people of India he is the symbol of mature wisdom . 
;(defrule person1
;(declare (salience 6000))
;(id-root ?id person)
;(id-word ?id people)
;?mng <-(meaning_to_be_decided ?id)
;(or(id-cat_coarse ?id noun)(viSeRya-of_saMbanXI ?id  ?id1))
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id loga))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " person.clp    person1  "  ?id "   loga  )" crlf))
;)


;Added by Meena(16.9.10)
;To the people of India he is the symbol of mature wisdom . 
(defrule people1
(declare (salience 5000))
(id-word ?id people)
?mng <-(meaning_to_be_decided ?id)
(or(id-cat_coarse ?id noun)(viSeRya-of_saMbanXI ?id  ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loga))
;(assert (id-wsd_number ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " people.clp    people1  "  ?id "   loga  )" crlf))
)

