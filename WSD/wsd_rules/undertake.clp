
(defrule undertake0
(declare (salience 5000))
(id-root ?id undertake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id undertaking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  undertake.clp  	undertake0   "  ?id "  kAma )" crlf))
)

;"undertaking","N","1.kAma/vyavasAya"
;He is running a business undertaking.
;
(defrule undertake1
(declare (salience 4900))
(id-root ?id undertake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwaraxAyiwva_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  undertake.clp 	undertake1   "  ?id "  uwwaraxAyiwva_le )" crlf))
)

;"undertake","V","1.uwwaraxAyiwva_le"
(defrule undertake2
(declare (salience 4900))
(id-root ?id undertake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwaraxAyiwva_le))
(assert (kriyA_id-object_viBakwi ?id kA)) ;Modified (salience and subject-viBakwi to object-viBakwi ) by sheetal(2-01-10).
                                            ;We have undertaken a project to make the city clean . 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  undertake.clp 	undertake2   "  ?id "  uwwaraxAyiwva_le )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  undertake.clp         undertake2   "  ?id " kA )" crlf))
)

;"undertake","VTI","1.[kA]_uwwaraxAyiwva_lenA"
;We have undertaken a project to make the city clean.
;
