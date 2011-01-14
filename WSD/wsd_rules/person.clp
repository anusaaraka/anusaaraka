;Added by Meena(29.4.10)
;To the people of India he is the symbol of mature wisdom . 
(defrule person1
(declare (salience 6000))
(id-root ?id person)
(id-word ?id people)
?mng <-(meaning_to_be_decided ?id)
(or(id-cat_coarse ?id noun)(viSeRya-of_saMbanXI ?id  ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " person.clp    person1  "  ?id "   loga  )" crlf))
)

