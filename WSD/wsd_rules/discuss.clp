;Added by Pramila(Banasthali University) on 21-11-2013
;The police want to discuss these recent racist attacks with local people.       ;cald
;पुलिस हाल में हुए स्थानीय लोगों के साथ हुए प्रजाति हमलों के बारे में विचार –विमर्श करना चाहती है 
(defrule discuss0
(declare (salience 5000))
(id-root ?id discuss)
(id-cat_coarse ?id verb)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra-vimarSa_kara))
(assert (kriyA_id-object_viBakwi ?id ke_bAre_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discuss.clp    discuss0   "  ?id "  vicAra-vimarSa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  discuss.clp    discuss0   "  ?id " ke_bAre_meM )" crlf)
)
)




;Added by manju
;They were discussing their hopes and dreams
;वे उनकी आशाओं और स्वप्नों के विषय में चर्चा कर रहे थे . 
;Modified by Sonam Gupta MTech IT Banasthali 2013
;We were discussing our examinations.
;हम हमारी परीक्षाओं के विषय में चर्चा कर रहे थे . 
;I called David and we discussed job opening.
;मैंने बुलाया दवीड और हमने रोजगार के अवसर के विषय में चर्चा की . 
(defrule discuss1
(id-root ?id discuss)
(id-cat_coarse ?id verb)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carcA_kara))
(assert (kriyA_id-object_viBakwi ?id ke_viRaya_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discuss.clp    discuss1   "  ?id "  carcA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  discuss.clp    discuss1   "  ?id " ke_viRaya_meM )" crlf)
)
)
