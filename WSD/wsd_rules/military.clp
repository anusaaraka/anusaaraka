
(defrule military0
(declare (salience 5000))
(id-root ?id military)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEnika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  military.clp 	military0   "  ?id "  sEnika )" crlf))
)

(defrule military1
(declare (salience 4900))
(id-root ?id military)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEnika-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  military.clp 	military1   "  ?id "  sEnika- )" crlf))
)

;default_sense && category=noun	senA	0
;"military","N","1.senA"
;The military helped restore peace in the region.
;
;
