
(defrule combat0
(declare (salience 5000))
(id-root ?id combat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  combat.clp 	combat0   "  ?id "  yuxXa )" crlf))
)

;"combat","N","1.yuxXa"
;They last the combat.
;
(defrule combat1
(declare (salience 4900))
(id-root ?id combat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id  ?id1) ;The Kurds are combating Iraqi troops in Nothern Iraq. Modified by Roja, Suggested by Sukhada(12-10-11)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXa_kara))
(assert (kriyA_id-object_viBakwi ?id kA)) ;The Kurds are combating Iraqi troops in Nothern Iraq. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  combat.clp 	combat1   "  ?id "  viroXa_kara )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  combat.clp     combat1   "  ?id "  kA )" crlf)
)

;"combat","VTI","1.viroXa_karanA"
;The Kurds are combating Iraqi troops in Nothern Iraq
;
