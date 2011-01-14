
(defrule safeguard0
(declare (salience 5000))
(id-root ?id safeguard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRA_upAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  safeguard.clp 	safeguard0   "  ?id "  rakRA_upAya )" crlf))
)

;"safeguard","N","1.rakRA_upAya"
;--"2.rakRA_upAya/rakRaka"
;We make copies of our computer disks as a safeguard against accidents.
;
(defrule safeguard1
(declare (salience 4900))
(id-root ?id safeguard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surakRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  safeguard.clp 	safeguard1   "  ?id "  surakRiwa_kara )" crlf))
)

;"safeguard","V","1.surakRiwa_karanA/bacAnA"
;Every one should safeguard the environment.
;
