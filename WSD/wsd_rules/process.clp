
(defrule process0
(declare (salience 5000))
(id-root ?id process)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  process.clp 	process0   "  ?id "  prakriyA )" crlf))
)

; prakriya is in Sabdasutra, hence prakrama  prakriya : AMBA
;default_sense && category=noun	prakrama	0
;"process","N","1.prakrama"
;Learning a foreign language is a slow process.
;--"2.prakriyA"
;Irregular eating habits interfere with the digestive process.
;--"3.viXi"
;Computer graphics have simplified the process of movie-making.
;
(defrule process1
(declare (salience 4900))
(id-root ?id process)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsAXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  process.clp 	process1   "  ?id "  saMsAXiwa_kara )" crlf))
)

;"process","V","1.saMsAXiwa_karanA"
;They processed many fruits to make jams, jellies etc..
;--"2.agresara_honA"
;They processed through the cathedral was slow.
;
