
(defrule adjudge0
(declare (salience 5000))
(id-root ?id adjudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adjudge.clp 	adjudge0   "  ?id "  nirNaya_kara )" crlf))
)

(defrule adjudge1
(declare (salience 4900))
(id-root ?id adjudge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNaya_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adjudge.clp 	adjudge1   "  ?id "  nirNaya_xe )" crlf))
)

;"adjudge","V","1.nirNaya_karanA[xenA]"
;The court adjudged her guilty.
;
