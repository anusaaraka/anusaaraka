
(defrule storey0
(declare (salience 5000))
(id-root ?id storey)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id story )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kahAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  storey.clp  	storey0   "  ?id "  kahAnI )" crlf))
)

(defrule storey1
(declare (salience 4900))
(id-root ?id storey)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 make )
(viSeRya-up_saMbanXI ?id1 ?id) ;Replaced viSeRya-up_viSeRaNa as viSeRya-up_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  storey.clp 	storey1   "  ?id "  kahAnI )" crlf))
)

(defrule storey2
(declare (salience 4800))
(id-root ?id storey)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tell)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  storey.clp 	storey2   "  ?id "  kahAnI )" crlf))
)

;"story","N","1.kahAnI"
;My father used to tell me bed-time stories.
;--"2.maMjZila"
;The building has ten stories.
;
;
;given_word=story && word_category=noun	$maMjZila)

;"storey","N","1.maMjZila"
;R.B. complex consists of seven storeys.
;
;
(defrule storey3
(declare (salience 4700))
(id-root ?id storey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMjZila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  storey.clp 	storey3   "  ?id "  maMjZila )" crlf))
)

;"storey","N","1.maMjZila"
;R.B. complex consists of seven storeys.
;
;