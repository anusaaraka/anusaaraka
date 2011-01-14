
(defrule wreck0
(declare (salience 5000))
(id-root ?id wreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreck.clp 	wreck0   "  ?id "  naRta_honA )" crlf))
)

;"wreck","N","1.naRta_honA{jalapowa_vAyuyAna_Axi}"
;The Titanic was in wreck when it hit the iceberg.
;--"2.rogI_vyakwi"
;He was a total wreck when his business failed.
;
(defrule wreck1
(declare (salience 4900))
(id-root ?id wreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nASa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreck.clp 	wreck1   "  ?id "  nASa_kara )" crlf))
)

;"wreck","VTI","1.nASa_karanA"
;The enemies wrecked the plane.
;
