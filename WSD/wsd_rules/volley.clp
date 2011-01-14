
(defrule volley0
(declare (salience 5000))
(id-root ?id volley)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id goliyoM_kI_bOCAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volley.clp 	volley0   "  ?id "  goliyoM_kI_bOCAra )" crlf))
)

;"volley","N","1.goliyoM_kI_bOCAra"
;Army fired a volley near the border
;--"2.JadI"
;The boy was subjected to a volley of abuses by eve teasers
;--"3.udawI_geMxa_kI_mAra"
;Steffe Graff hit a volley with her forehand
;
(defrule volley1
(declare (salience 4900))
(id-root ?id volley)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tappA_lagAne_se_pahale_udawI_geMxa_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volley.clp 	volley1   "  ?id "  tappA_lagAne_se_pahale_udawI_geMxa_mAra )" crlf))
)

;"volley","VT","1.tappA_lagAne_se_pahale_udawI_geMxa_mAranA"
;He volleyed the ball on the line
;
