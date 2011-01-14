;Added by Meena(23.3.10)
;The upper middle-class tend to go into business or become the professionals . 
(defrule tend0
(declare (salience 4900))
(id-root ?id tend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kqxanwa_karma  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JukAva_ho))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tend.clp      tend0   "  ?id "  JukAva_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  tend.clp      tend0   "  ?id " kA )" crlf)
)
)


;Added by Meena(25.3.10)
;Prices have tended downwards over recent years . 
(defrule tend1
(declare (salience 4900))
(id-root ?id tend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tend.clp      tend1   "  ?id "  ho )" crlf)
)
)




;Modified by Meena(25.3.10)
;Salience reduced by Meena(23.3.10)
(defrule tend2
(declare (salience 4800))
;(declare (salience 5000))
;(declare (salience 0))
(id-root ?id tend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (kriyA_id-object_viBakwi ?id kA))
(assert (id-wsd_root_mng ?id xeKaBAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tend.clp 	tend2   "  ?id "  xeKaBAla_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  tend.clp      tend2   "  ?id " kA )" crlf)
)
)

;"tend","V","1.xeKaBAla_karanA"
;The doctor is tending the injured.




;;Salience reduced by Meena(23.3.10)
;His views tend towards the extreme . 
(defrule tend3
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id tend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravqwwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tend.clp 	tend3   "  ?id "  pravqwwa_ho )" crlf))
)

;"tend","VTI","1.pravqwwa_honA"
;The cyclone tends to advance in the eastern direction.
;
