
(defrule harbour0
(declare (salience 5000))
(id-root ?id harbour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxaragAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harbour.clp 	harbour0   "  ?id "  banxaragAha )" crlf))
)

;"harbour","N","1.banxaragAha"
;A harbour is a safe place for ships .
;banxaragAha jahAjoM ke liye eka surakRiwa sWAna hE.
;
(defrule harbour1
(declare (salience 4900))
(id-root ?id harbour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SaraNa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harbour.clp 	harbour1   "  ?id "  SaraNa_xe )" crlf))
)

;"harbour","V","1.SaraNa_xe`"
