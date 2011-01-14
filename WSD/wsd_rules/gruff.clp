
(defrule gruff0
(declare (salience 5000))
(id-root ?id gruff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZI_AvAjZa_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gruff.clp 	gruff0   "  ?id "  kadZI_AvAjZa_vAlA )" crlf))
)

(defrule gruff1
(declare (salience 4900))
(id-root ?id gruff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gruff.clp 	gruff1   "  ?id "  kadZA )" crlf))
)

;"gruff","Adj","1.kadZA/rUKe_AcaraNa_vAlA"
;His gruff manners gives a very bad impression. 
;--"2.karkaSa"
;Her gruff voice is not pleasant.
;
;
