
(defrule sparkle0
(declare (salience 5000))
(id-root ?id sparkle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sparkling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id camakaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sparkle.clp  	sparkle0   "  ?id "  camakaxAra )" crlf))
)

;"sparkling","Adj","1.camakaxAra"
;She has a sparkling diamond in her ring.
;--"2.jinxAxila"
;I like jovial && sparkling people.
;
(defrule sparkle1
(declare (salience 4900))
(id-root ?id sparkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sparkle.clp 	sparkle1   "  ?id "  camaka )" crlf))
)

;"sparkle","V","1.camakanA"
;The crystal glass was sparkling in the light.
;--"2.uwsAha se BarA honA"
;He is sparkling with enthusiasm all day && night.
;
;