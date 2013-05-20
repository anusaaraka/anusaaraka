
(defrule distract0
(declare (salience 5000))
(id-root ?id distract)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id distracted )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna_vicaliwa_kara))
;(assert (id-H_vib_mng ?id ed_en)) ;Suggested by Sukhada(20-05-13)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  distract.clp  	distract0   "  ?id "  XyAna_vicaliwa_kara )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  distract.clp   distract0   "  ?id " ed_en )" crlf))
))

(defrule distract1
(declare (salience 4900))
(id-root ?id distract)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id distracted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XyAna_lagAne_meM_asamraWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  distract.clp  	distract1   "  ?id "  XyAna_lagAne_meM_asamraWa )" crlf))
)

(defrule distract2
(declare (salience 4800))
(id-root ?id distract)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna_vicaliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distract.clp 	distract2   "  ?id "  XyAna_vicaliwa_kara )" crlf))
)

;default_sense && category=verb	XyAna_KIMca	0
;"distract","VT","1.XyAna_KIMcanA"
;
;
