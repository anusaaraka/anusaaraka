
(defrule esteem0
(declare (salience 5000))
(id-root ?id esteem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  esteem.clp 	esteem0   "  ?id "  Axara )" crlf))
)

;"esteem","N","1.Axara/sammAna"
;It is held in esteem
;
(defrule esteem1
(declare (salience 4900))
(id-root ?id esteem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  esteem.clp 	esteem1   "  ?id "  sammAna_kara )" crlf))
)

;"esteem","VT","1.sammAna_karanA"
;--"2.mAnanA"
;
