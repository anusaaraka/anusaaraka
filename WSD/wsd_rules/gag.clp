
(defrule gag0
(declare (salience 5000))
(id-root ?id gag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKa_banXanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gag.clp 	gag0   "  ?id "  muKa_banXanI )" crlf))
)

;"gag","N","1.muKa_banXanI"
;The kidnappers thrust gag in the mouth of the child .
;--"2.bolane_kI_AjAxI_para_prawibaMXa"
;Gag rule is not possible in a democracy.
;--"3.hAsya_kaWA"
;He told a gag to entertain children.
;
(defrule gag1
(declare (salience 4900))
(id-root ?id gag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muzha_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gag.clp 	gag1   "  ?id "  muzha_banxa_kara )" crlf))
)

;"gag","VT","1.muzha_banxa_karanA"
;The kidnappers gagged the mouth of the child.
;--"2.punaH_nigalanA"
;He was gagging on a piece of mutton.
;
