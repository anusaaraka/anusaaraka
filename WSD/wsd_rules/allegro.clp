
(defrule allegro0
(declare (salience 5000))
(id-root ?id allegro)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wvariwa_gawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allegro.clp 	allegro0   "  ?id "  wvariwa_gawi )" crlf))
)

;"allegro","Adj","1.wvariwa_gawi{saMgIwa_se_saMbaMXiwa}"
;All the songs composed for the concert were allegro in nature.
;
(defrule allegro1
(declare (salience 4900))
(id-root ?id allegro)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xruwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allegro.clp 	allegro1   "  ?id "  xruwa )" crlf))
)

;"allegro","N","1.xruwa"
;He composed allegros for the latest Hindi movie.
;
