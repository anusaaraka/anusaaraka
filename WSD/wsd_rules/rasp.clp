
(defrule rasp0
(declare (salience 5000))
(id-root ?id rasp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirakirAne_kI_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rasp.clp 	rasp0   "  ?id "  kirakirAne_kI_AvAja )" crlf))
)

;"rasp","N","1.kirakirAne_kI_AvAja"
;A rasp of the saw on the log can be heard from the distance.  
;--"2.kAta_CAzta_kara_rewI_se_cikanA_karanA"
;Rasp off the rough edges of the table top.  
;
(defrule rasp1
(declare (salience 4900))
(id-root ?id rasp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karkaSa_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rasp.clp 	rasp1   "  ?id "  karkaSa_AvAja )" crlf))
)

;"rasp","V","1.karkaSa_AvAja"
;Don't make a noise.the teacher rasped.  
;--"2.ragadZanA"
;The glacier rasps the valley floor.  
;
