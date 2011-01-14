
(defrule hijack0
(declare (salience 5000))
(id-root ?id hijack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hijacking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id apaharaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hijack.clp  	hijack0   "  ?id "  apaharaNa )" crlf))
)

;"hijacking","N","1.apaharaNa"
;vAyuyAna"hijacking" kI koSiSa meM AwaMkavAxI mArA gayA.
;
(defrule hijack1
(declare (salience 4900))
(id-root ?id hijack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apaharaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hijack.clp 	hijack1   "  ?id "  apaharaNa_kara )" crlf))
)

;"hijack","V","1.apaharaNa karanA"
;Ajakala vAyuyAna"hijack"Ama bAwa ho gaI hE.
;
;