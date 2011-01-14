
(defrule patent0
(declare (salience 5000))
(id-root ?id patent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patent.clp 	patent0   "  ?id "  prawyakRa )" crlf))
)

;"patent","Adj","1.prawyakRa"
;He has put forward a patent question.
;
(defrule patent1
(declare (salience 4900))
(id-root ?id patent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_AviRkAra_kA_pUrNa_aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patent.clp 	patent1   "  ?id "  kisI_AviRkAra_kA_pUrNa_aXikAra )" crlf))
)

;"patent","N","1.kisI_AviRkAra_kA_pUrNa_aXikAra/aXikAra_pawra"
;He has obtained a patent for this new model of fridge.
;
(defrule patent2
(declare (salience 4800))
(id-root ?id patent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanaxa_xekara_aXikAra_kI_rakRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patent.clp 	patent2   "  ?id "  sanaxa_xekara_aXikAra_kI_rakRA_kara )" crlf))
)

;"patent","VT","1.sanaxa_xekara_aXikAra_kI_rakRA_karanA"
;The company patented for their exclusively designed dish washer.
;
