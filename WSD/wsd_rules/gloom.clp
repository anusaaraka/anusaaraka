
(defrule gloom0
(declare (salience 5000))
(id-root ?id gloom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gloom.clp 	gloom0   "  ?id "  aMXakAra )" crlf))
)

(defrule gloom1
(declare (salience 4900))
(id-root ?id gloom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuMXalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gloom.clp 	gloom1   "  ?id "  XuMXalA_kara )" crlf))
)

;"gloom","VT","1.XuMXalA_karanA"
;The rain has gloomed the prospect of any further play.
;
;