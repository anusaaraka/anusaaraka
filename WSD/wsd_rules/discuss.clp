;Added by manju
;They were discussing their hopes and dreams
;वे उनकी आशाओं और स्वप्नों के विषय में चर्चा कर रहे थे . 
;Modified by Sonam Gupta MTech IT Banasthali 2013
;We were discussing our examinations.
;हम हमारी परीक्षाओं के विषय में चर्चा कर रहे थे . 
;I called David and we discussed job opening.
;मैंने बुलाया दवीड और हमने रोजगार के अवसर के विषय में चर्चा की . 
(defrule discuss0
(id-root ?id discuss)
(id-cat_coarse ?id verb)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carcA_kara))
(assert (kriyA_id-object_viBakwi ?id ke_viRaya_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discuss.clp    discuss0   "  ?id "  carcA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  discuss.clp    discuss0   "  ?id " ke_viRaya_meM )" crlf)
)
)
