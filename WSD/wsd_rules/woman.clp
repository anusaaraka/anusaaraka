
(defrule woman0
(declare (salience 5000))
(id-root ?id woman)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 young)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuvawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  woman.clp 	woman0   "  ?id "  yuvawI )" crlf))
)


;Meaning changed from nArI to swrI (Meena 22.3.11)
(defrule woman1
(declare (salience 4900))
(id-root ?id woman)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  woman.clp 	woman1   "  ?id "  swrI )" crlf))
)

;"woman","N","1.nArI"
;Today a woman also has the right to vote.
;
;
