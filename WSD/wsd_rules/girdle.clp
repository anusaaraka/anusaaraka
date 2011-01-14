
(defrule girdle0
(declare (salience 5000))
(id-root ?id girdle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamarabanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  girdle.clp 	girdle0   "  ?id "  kamarabanxa )" crlf))
)

;"girdle","N","1.kamarabanxa"
;The thin man tied a girdle around the trousers.
;
(defrule girdle1
(declare (salience 4900))
(id-root ?id girdle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id petI_se_kasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  girdle.clp 	girdle1   "  ?id "  petI_se_kasa )" crlf))
)

;"girdle","VT","1.petI_se_kasanA"
;The schoolboy girdled his school bag around the waist as he ran 
;to the school.
;
