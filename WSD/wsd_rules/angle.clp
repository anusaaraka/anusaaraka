
(defrule angle0
(declare (salience 5000))
(id-root ?id angle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id angling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kAztA_lagAkara_maCalI_pakadZanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  angle.clp  	angle0   "  ?id "  kAztA_lagAkara_maCalI_pakadZanA )" crlf))
)

;"angling","N","1.kAztA_lagAkara maCalI pakadZanA"
;Angling is his hobby.
;
(defrule angle1
(declare (salience 4900))
(id-root ?id angle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  angle.clp 	angle1   "  ?id "  koNa )" crlf))
)

(defrule angle2
(declare (salience 4800))
(id-root ?id angle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAte_se_maCalI_pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  angle.clp 	angle2   "  ?id "  kAte_se_maCalI_pakadZa )" crlf))
)

;"angle","V","1.kAte se maCalI pakadZanA"
;Angling is very time consuming.
;--"2.iSAre_se_mAzganA"
;He angled at the guard for a free entry.
;.
;"angler","N","1.maCuArA/kAztA_dAlane_vAlA"
;He is not an angler but it's his hobby.
;
;
