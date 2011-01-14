
(defrule peach0
(declare (salience 5000))
(id-root ?id peach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIca_raMgavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peach.clp 	peach0   "  ?id "  pIca_raMgavAlA )" crlf))
)

;"peach","Adj","1.pIca_raMgavAlA{pIlApana_liye_gulAbI_raMga}"
;She was wearing a peach sari.
;
(defrule peach1
(declare (salience 4900))
(id-root ?id peach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AdZU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peach.clp 	peach1   "  ?id "  AdZU )" crlf))
)

;"peach","N","1.AdZU/SaPZawAlu"
;The ripe peaches have fallen under the tree.
;--"2.pIlApana_lie_gulAbI_raMga"
;Her favourite colours are peach && pink.
;
