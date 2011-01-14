
(defrule shore0
(declare (salience 5000))
(id-root ?id shore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shore.clp 	shore0   "  ?id "  kinArA )" crlf))
)

;"shore","N","1.kinArA/wIra"
;I saw a beautiful house on the shore of river Ganga.
;
(defrule shore1
(declare (salience 4900))
(id-root ?id shore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teka_yA_gaxama_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shore.clp 	shore1   "  ?id "  teka_yA_gaxama_lagA )" crlf))
)

;"shore","V","1.teka_yA_gaxama_lagAnA"
;Shore up the side of an old house to stop it falling down.
;
