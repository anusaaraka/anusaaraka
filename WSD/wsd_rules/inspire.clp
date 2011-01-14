
(defrule inspire0
(declare (salience 5000))
(id-root ?id inspire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id inspiring )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id preraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  inspire.clp  	inspire0   "  ?id "  preraka )" crlf))
)

;"inspiring","Adj","1.preraka"
;The paintings of Piccaso is inspiring to artists.
;
(defrule inspire1
(declare (salience 4900))
(id-root ?id inspire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id inspired )
;(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id preriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  inspire.clp  	inspire1   "  ?id "  preriwa )" crlf))
)

;"inspired","Adj","1.preriwa"
;Shakespeare was an inspired dramatist.


;Added by meena 25.4.09)
;The choice of decor was inspired by a trip to India.  
;His paintings were clearly inspired by Monet’s work
(defrule inspire3
(declare (salience 4900))
(id-root ?id inspire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id inspired )
;(id-cat_coarse ?id adjective)
(id-root ?id1 ?)
(kriyA-by_saMbanXa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id preriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  inspire.clp     inspire3   "  ?id "  preriwa )" crlf))
)


(defrule inspire2
(declare (salience 4800))
(id-root ?id inspire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preraNA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inspire.clp 	inspire2   "  ?id "  preraNA_xe )" crlf))
)

;"inspire","VT","1.preraNA_xenA"
;I am inspired by the compositions of sri Thyagaraja.
;
;
