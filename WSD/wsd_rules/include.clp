
(defrule include0
(declare (salience 5000))
(id-root ?id include)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id including )
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sammiliwa_karawe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  include.clp  	include0   "  ?id "  sammiliwa_karawe_hue )" crlf))
)

;"including","Prep","1.sammiliwa_karawe_hue"
;The band played a number of songs, including some of my favorites.
;
(defrule include1
(declare (salience 4900))
(id-root ?id include)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammiliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  include.clp 	include1   "  ?id "  sammiliwa_kara )" crlf))
)

;"include","V","1.sammiliwa karanA"
;They included me in the hockey team.
;
;