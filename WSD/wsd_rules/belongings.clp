;Added by Meena(12.5.11)
;Their belongings were flung about the room. 
(defrule belongings0
(declare (salience 5000))
(id-root ?id belongings)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id belongings)
=>
(retract ?mng)
(assert (id-wsd_root_mng  ?id sAmAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  belongings.clp      belongings0    "?id" sAmAna )" crlf)
)
)

