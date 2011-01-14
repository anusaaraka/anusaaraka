
(defrule coax0
(declare (salience 5000))
(id-root ?id coax)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id coaxing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id manAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  coax.clp  	coax0   "  ?id "  manAnA )" crlf))
)

;"coaxing","N","1.manAnA"
;It took a lot of coaxing before her mother agreed.
;
(defrule coax1
(declare (salience 4900))
(id-root ?id coax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coax.clp 	coax1   "  ?id "  manA )" crlf))
)

;"coax","V","1.manAnA"
;She coaxed her mother to buy her a new dress.
;
;
