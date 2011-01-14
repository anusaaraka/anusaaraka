
(defrule kidnap0
(declare (salience 5000))
(id-root ?id kidnap)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id kidnapping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id apaharaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  kidnap.clp  	kidnap0   "  ?id "  apaharaNa )" crlf))
)

;"kidnapping","N","1.apaharaNa"
;It is a state where kidnapping && looting is the commonplace.
;
(defrule kidnap1
(declare (salience 4900))
(id-root ?id kidnap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apaharaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kidnap.clp 	kidnap1   "  ?id "  apaharaNa )" crlf))
)

;"kidnap","N","1.apaharaNa_karanA[honA]"
;Kidnap drama is continued for 36 hours.
;
(defrule kidnap2
(declare (salience 4800))
(id-root ?id kidnap)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apaharaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kidnap.clp 	kidnap2   "  ?id "  apaharaNa_kara )" crlf))
)

(defrule kidnap3
(declare (salience 4700))
(id-root ?id kidnap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apaharaNa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kidnap.clp 	kidnap3   "  ?id "  apaharaNa_ho )" crlf))
)

;"kidnap","V","1.apaharaNa_karanA[honA]"
;Many children have been kidnapped in this locality.
;
