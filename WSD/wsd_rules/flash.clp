
(defrule flash0
(declare (salience 5000))
(id-root ?id flash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flashing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id avaroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flash.clp  	flash0   "  ?id "  avaroXa )" crlf))
)

;"flashing","N","1.avaroXa"
;Flashings are put up on buildings to prevent ingress of water through leaks.
;
(defrule flash1
(declare (salience 4900))
(id-root ?id flash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkarRaka_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flash.clp 	flash1   "  ?id "  AkarRaka_vaswu )" crlf))
)

;"flash","Adj","1.AkarRaka_vsawu"
;He has a big flash house.
;
(defrule flash2
(declare (salience 4800))
(id-root ?id flash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flash.clp 	flash2   "  ?id "  camaka )" crlf))
)

;"flash","N","1.camaka"
;There was a sudden flash of lightening in the sky.
;--"2.PlESa_yaMwra"
;In low light a flash is necessary for taking good photographs.
;--"3.paxa_kA_saMkewa"
;He wears the flash of his rank at all functions.
;
(defrule flash3
(declare (salience 4700))
(id-root ?id flash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flash.clp 	flash3   "  ?id "  camaka )" crlf))
)

;"flash","V","1.camakanA"
;When she is annoyed her eyes flash angrily.
;He was flashing the torch to stop the car.
;--"2.wIvra_gawi_se_jAnA"
;The cars were flashing by at high speed on the highway.
;--"3.samAcAra_xenA"
;There was a flash in the news about the devastating floods.
;--"4.xiKAnA"
;Please flash your identification before you can be allowed into the restricted area.
;
