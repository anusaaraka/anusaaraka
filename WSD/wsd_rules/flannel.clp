
(defrule flannel0
(declare (salience 5000))
(id-root ?id flannel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PalAlEna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flannel.clp 	flannel0   "  ?id "  PalAlEna )" crlf))
)

;"flannel","N","1.PalAlEna"
;Flannel is used for making clothes for children as it is soft, light && warm.
;
(defrule flannel1
(declare (salience 4900))
(id-root ?id flannel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DIla_DAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flannel.clp 	flannel1   "  ?id "  DIla_DAla_kara )" crlf))
)

;"flannel","V","1.DIla_DAla_karanA"
;Why are you flanneling the issue? Do decide promptly.
;
