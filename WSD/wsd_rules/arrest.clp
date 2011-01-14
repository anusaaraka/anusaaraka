
(defrule arrest0
(declare (salience 5000))
(id-root ?id arrest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakada))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrest.clp 	arrest0   "  ?id "  pakada )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  arrest.clp    arrest0   "  ?id "  ko )" crlf)
)
)

(defrule arrest1
(declare (salience 4900))
(id-root ?id arrest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id giraPwArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrest.clp 	arrest1   "  ?id "  giraPwArI )" crlf))
)

;"arrest","N","1.giraPwArI"
;Increase of crime rate led to several arrests.
;--"2.avaroXa"
;He suffered a cardiac arrest.
;
;
