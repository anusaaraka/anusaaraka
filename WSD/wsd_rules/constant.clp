
;@@@Added by Preeti(6-12-13)
;A small baby requires constant care. 
;eka Cote SiSu ko niraMwara xeKaBAla kI jarUrawa howI hE.
(defrule constant2
(declare (salience 5050))
(id-root ?id constant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niraMwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  constant.clp 	constant2   "  ?id "  niraMwara )" crlf))
)


(defrule constant0
(declare (salience 5000))
(id-root ?id constant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id adiga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  constant.clp 	constant0   "  ?id "  adiga )" crlf))
)

(defrule constant1
(declare (salience 4900))
(id-root ?id constant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  constant.clp 	constant1   "  ?id "  sWAyI )" crlf))
)

;"constant","N","1.sWAyI"
;Pressure in the container remains constant.
;--"2.niwya"
;This route is in constant use.
;--"3.vaPAxAra"
;My pet dog has been my constant companion.
;
;
