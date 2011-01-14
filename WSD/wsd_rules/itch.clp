
(defrule itch0
(declare (salience 5000))
(id-root ?id itch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwkata_lAlasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  itch.clp 	itch0   "  ?id "  uwkata_lAlasA )" crlf))
)

(defrule itch1
(declare (salience 4900))
(id-root ?id itch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIvra_icCA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  itch.clp 	itch1   "  ?id "  wIvra_icCA_ho )" crlf))
)

;default_sense && category=verb	KujalI_ho	0
;"itch","VI","1.KujalI_honA"
;My nose is itching.
;--"2.icCA_honA"
;Student's itching for the lesson to finish.
;
;