
(defrule ricochet0
(declare (salience 5000))
(id-root ?id ricochet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golI_kA_takarAkara_lOtanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ricochet.clp 	ricochet0   "  ?id "  golI_kA_takarAkara_lOtanA )" crlf))
)

;"ricochet","N","1.golI_kA_takarAkara_lOtanA"
;He got hurt by the ricochet bullet. 
;
(defrule ricochet1
(declare (salience 4900))
(id-root ?id ricochet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu_kA_takarAkara_vApasa_lOta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ricochet.clp 	ricochet1   "  ?id "  vaswu_kA_takarAkara_vApasa_lOta )" crlf))
)

;"ricochet","V","1.vaswu_kA_takarAkara_vApasa_lOtanA"
;The stone ricocheted off the wall && hit her son.   
;
