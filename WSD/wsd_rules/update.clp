
(defrule update0
(declare (salience 5000))
(id-root ?id update)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBI_waka_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  update.clp 	update0   "  ?id "  aBI_waka_kA )" crlf))
)

;"update","N","1.aBI_waka_kA"
;The BBC brings the news updates.
;
(defrule update1
(declare (salience 4900))
(id-root ?id update)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 ?)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
;(assert (id-wsd_root_mng ?id AXunika_banA))
(assert (id-wsd_root_mng ?id baxala_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  update.clp 	update1   "  ?id "  AXunika_banA )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  update.clp    update1   "  ?id "  baxala_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-kriyA_id-object_viBakwi    " ?*wsd_dir* "  update.clp    update1   "  ?id "   ko )" crlf)
)
)

;"update","VT","1.AXunika_banAnA"
;It's high time we updated our thinking on women's issues.

(defrule update2
(declare (salience 4900))
(id-root ?id update)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
(id-root ?id1 cache|software|system|computer|law|file|dictionary)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id navInIkaraNa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  update.clp    update2   "  ?id "   navInIkaraNa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-kriyA_id-object_viBakwi   " ?*wsd_dir* "  update.clp    update2   "  ?id " kA )" crlf)
)
)












;
