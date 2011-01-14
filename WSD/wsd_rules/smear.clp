
(defrule smear0
(declare (salience 5000))
(id-root ?id smear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smear.clp 	smear0   "  ?id "  XabbA )" crlf))
)

;"smear","N","1.XabbA"
;Smear on the walls during election time by posters leave indelible marks.
;--"2.medikala_parIkRaNa"
;A smear list is a medical list to check the cancer tissues or many other heart ailments.
;
(defrule smear1
(declare (salience 4900))
(id-root ?id smear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mElA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smear.clp 	smear1   "  ?id "  mElA_kara )" crlf))
)

;"smear","V","1.mElA_karanA"
;During holi festival people smear the faces of others with all sorts of greasy && oily substances.
;--"2.baxanAma_karanA"
;During election time the politicians smear the credibility of their opponents.
;--"3.kalaMka_lagAnA"
;The media today is permitting many cock && bull stories to smear the reputation of PM.
;
