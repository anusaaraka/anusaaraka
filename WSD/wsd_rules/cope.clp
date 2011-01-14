
(defrule cope0
(declare (salience 5000))
(id-root ?id cope)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id coping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id muNdera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cope.clp  	cope0   "  ?id "  muNdera )" crlf))
)

;"coping","N","1.muNdera/paraCawI"
;They have constructed a strong coping wall on all the sides.
;
(defrule cope1
(declare (salience 4900))
(id-root ?id cope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAxarI_kA_cogA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cope.clp 	cope1   "  ?id "  pAxarI_kA_cogA )" crlf))
)

;"cope","N","1.pAxarI_kA_cogA"
;He always wears synthetic cope.
;
(defrule cope2
(declare (salience 4800))
(id-root ?id cope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cope.clp 	cope2   "  ?id "  sAmanA_kara )" crlf))
)

;"cope","VI","1.sAmanA_karanA"
;I know how to cope with difficult problems.
;
