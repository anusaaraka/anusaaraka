
(defrule introduce0
(declare (salience 5000))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricaya_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce0   "  ?id "  paricaya_karA )" crlf))
)

(defrule introduce1
(declare (salience 4900))
(id-root ?id introduce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  introduce.clp 	introduce1   "  ?id "  paricaya_kara )" crlf))
)

;"introduce","VT","1.paricaya_karAnA[karanA]"
;Graham was introduced to me  in the function.
;--"2.praswuwa_karanA"
;A new word processor was introduced.
;--"3.upalabXa_karAnA"
;The domestic appliances were introduced in the market .
;
