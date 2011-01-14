
(defrule throng0
(declare (salience 5000))
(id-root ?id throng)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throng.clp 	throng0   "  ?id "  BIdZa )" crlf))
)

;"throng","N","1.BIdZa"
;We could witness the show in spite of the throng.
;
(defrule throng1
(declare (salience 4900))
(id-root ?id throng)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIdZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throng.clp 	throng1   "  ?id "  BIdZa_kara )" crlf))
)

;"throng","VTI","1.BIdZa_karanA"
;People thronged to get a view of their favourite star.
;
