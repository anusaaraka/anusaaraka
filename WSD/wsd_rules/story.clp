
(defrule story0
(declare (salience 5000))
(id-root ?id story)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  story.clp 	story0   "  ?id "  kahAnI )" crlf))
)

(defrule story1
(declare (salience 4900))
(id-root ?id story)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 make )
(viSeRya-up_saMbanXI ?id1 ?id) ;Replaced viSeRya-up_viSeRaNa as viSeRya-up_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  story.clp 	story1   "  ?id "  kahAnI )" crlf))
)

;"story","N","1.kahAnI"
;My father used to tell me bed-time stories.
;--"2.maMjZila"
;The building has ten stories.
;
;
