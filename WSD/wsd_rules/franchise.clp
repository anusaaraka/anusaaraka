
(defrule franchise0
(declare (salience 5000))
(id-root ?id franchise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  franchise.clp 	franchise0   "  ?id "  aXikAra )" crlf))
)

(defrule franchise1
(declare (salience 4900))
(id-root ?id franchise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRa_AjFA_lI_huI_vaswu_beca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  franchise.clp 	franchise1   "  ?id "  viSeRa_AjFA_lI_huI_vaswu_beca )" crlf))
)

;"franchise","V","1.viSeRa_AjFA_lI_huI_vaswu_becanA"
;Sales persons franchised the goods.
;
;