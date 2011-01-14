
(defrule recruit0
(declare (salience 5000))
(id-root ?id recruit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raMgarUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recruit.clp 	recruit0   "  ?id "  raMgarUta )" crlf))
)

(defrule recruit1
(declare (salience 4900))
(id-root ?id recruit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nayI_BarwI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recruit.clp 	recruit1   "  ?id "  nayI_BarwI_kara )" crlf))
)

;"recruit","VT","1.nayI_BarwI_karanA"
;He has recruited some unemployed youths in his company. 
;
;