
(defrule thud0
(declare (salience 5000))
(id-root ?id thud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XamAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thud.clp 	thud0   "  ?id "  XamAkA )" crlf))
)

;"thud","N","1.XamAkA"
;The boulder fell with a thud.
;
(defrule thud1
(declare (salience 4900))
(id-root ?id thud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XamAkA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thud.clp 	thud1   "  ?id "  XamAkA_kara )" crlf))
)

;"thud","VI","1.XamAkA_karanA"
;Bomb-shells are thudding the front.
;Bullets were thudding against the wall.
;
