;Modified by sheetal
(defrule acclimatize0
(declare (salience 5000))
(id-root ?id acclimatize)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(kriyA-to_saMbanXI  ?id ?envi)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAla))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  acclimatize.clp       acclimatize0   "  ?id "  ko )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acclimatize.clp      acclimatize0   "  ?id "  DAla )" crlf))
)
;Some people take a lot of time to acclimatize themselves to the new environment .

;(defrule acclimatize0
;(declare (salience 5000))
;(id-root ?id acclimatize)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-object ?id ?)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id xaSAnukUliwa_kara))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acclimatize.clp 	acclimatize0   "  ?id "  xaSAnukUliwa_kara )" crlf))
;)

(defrule acclimatize1
(declare (salience 4900))
(id-root ?id acclimatize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaSAnukUliwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acclimatize.clp 	acclimatize1   "  ?id "  xaSAnukUliwa_ho )" crlf))
)

;"acclimatize","V","1.xaSAnukUliwa_honA[karanA]"
;Some people take a lot of time to acclimatize themselves to the new environ-ment.
;
