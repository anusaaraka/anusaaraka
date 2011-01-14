;Added by Meena(12.11.10)
;There is little doubt that poor medical treatment hastened her death.
(defrule poor0
(declare (salience 5000))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp      poor0   "  ?id "  KarAba )" crlf))
)




;Salience reduced by Meena(12.11.10)
(defrule poor1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp 	poor1   "  ?id "  xIna )" crlf))
)

;"poor","Adj","1.xIna/xarixra"
;According to me, being poor is a curse for a human being.
;--"2.alpa"
;This soil is poor in nutrients.
;--"3.KarAba"
;They sold very poor quality wool.
;--"4.aBAgA/becArA"
;The poor girl has nothing to eat.
;



;Added by Meena(17.3.10)
;And she declared that out of love for the poor she had gotten her family to go against convention . 
(defrule poor2
(declare (salience 4900))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) the)
(not(id-cat_coarse =(+ ?id 1) noun))
(viSeRya-det_viSeRaNa ?id =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xInoM))
(assert (id-wsd_number ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  poor.clp      poor2   "  ?id "  xInoM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  poor.clp      poor2   "  ?id "  p )" crlf))
)




;Salience reduced by Meena(17.3.10)
(defrule poor3
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp 	poor3   "  ?id "  xIna )" crlf))
)

;"poor","N","1.xIna/xarixra"
;According to me, being poor is a curse for a human being.
;--"2.alpa"
;This soil is poor in nutrients.
;--"3.KarAba"
;They sold very poor quality wool.
;--"4.aBAgA/becArA"
;The poor girl has nothing to eat.
;
