
(defrule link0
(declare (salience 5000))
(id-root ?id link)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  link.clp 	link0   "  ?id "  kadI )" crlf))
)

;"link","N","1.kadI"
;Links of a chain. 
;She provides a link between the two groups.
;
(defrule link1
(declare (salience 4900))
(id-root ?id link)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadI_joda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  link.clp 	link1   "  ?id "  kadI_joda )" crlf))
)

;"link","V","1.kadI_jodanA"
;Link the two pieces of the chains.
;Linking the evidence is a difficult job.
;
