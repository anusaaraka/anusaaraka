
(defrule stalk0
(declare (salience 5000))
(id-root ?id stalk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stalk.clp 	stalk0   "  ?id "  dAlI )" crlf))
)

(defrule stalk1
(declare (salience 4900))
(id-root ?id stalk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cipakara_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stalk.clp 	stalk1   "  ?id "  Cipakara_cala )" crlf))
)

;"stalk","V","1.Cipakara calanA"
;Tiger stalks in order to get his food.
;--"2.akadZakara calanA"        
;After getting the post of the head girl she stalked in the corridor.
;--"3.prakopiwa_honA"  
;That old hut is believed to be stalked by ghosts.
;
;