
(defrule sponsor0
(declare (salience 5000))
(id-root ?id sponsor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAyojiwa_karanevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sponsor.clp 	sponsor0   "  ?id "  prAyojiwa_karanevAlA )" crlf))
)

;"sponsor","N","1.prAyojiwa_karanevAlA"
(defrule sponsor1
(declare (salience 4900))
(id-root ?id sponsor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAyojiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sponsor.clp 	sponsor1   "  ?id "  prAyojiwa_kara )" crlf))
)

;"sponsor","V","1.prAyojiwa_karanA"
;A company sponsors their new product named fairness.
;
