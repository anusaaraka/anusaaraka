
(defrule video0
(declare (salience 5000))
(id-root ?id video)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vIdiyo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  video.clp 	video0   "  ?id "  vIdiyo )" crlf))
)

;"video","N","1.vIdiyo{xqSya}"
;We recorded the whole program on a video
;
(defrule video1
(declare (salience 4900))
(id-root ?id video)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vIdiyo_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  video.clp 	video1   "  ?id "  vIdiyo_banA )" crlf))
)

;"video","V","1.vIdiyo_banAnA"
;Why don't you video the film.
;
