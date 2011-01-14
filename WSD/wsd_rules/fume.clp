
(defrule fume0
(declare (salience 5000))
(id-root ?id fume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja_ganXa_se_yukwa_XuAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fume.clp 	fume0   "  ?id "  weja_ganXa_se_yukwa_XuAz )" crlf))
)

;"fume","N","1.weja_ganXa_se_yukwa_XuAz"
;The air was thick with sulphurous fumes.
;
(defrule fume1
(declare (salience 4900))
(id-root ?id fume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fume.clp 	fume1   "  ?id "  kroXa_kara )" crlf))
)

;"fume","VI","1.kroXa_karanA"
;He fumed at his servants for irregular work.
;--"2.XuAz_lagAyI_huI"
;It is a fumed teak.
;
