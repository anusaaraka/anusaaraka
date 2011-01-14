
(defrule cruise0
(declare (salience 5000))
(id-root ?id cruise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samuxrI_yAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cruise.clp 	cruise0   "  ?id "  samuxrI_yAwrA )" crlf))
)

;"cruise","N","1.samuxrI_yAwrA"
;The couple went on a round the world cruise
;
(defrule cruise1
(declare (salience 4900))
(id-root ?id cruise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samuxra_vihAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cruise.clp 	cruise1   "  ?id "  samuxra_vihAra_kara )" crlf))
)

;"cruise","VI","1.samuxra_vihAra_karanA"
;They went on a long voyage cruising the Indian Ocean
;--"2.lakRya_prApwa_karanA"
;The sprinter cruised past the winning post
;
