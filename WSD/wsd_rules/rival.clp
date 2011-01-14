
(defrule rival0
(declare (salience 5000))
(id-root ?id rival)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawixvanxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rival.clp 	rival0   "  ?id "  prawixvanxI )" crlf))
)

;"rival","N","1.prawixvanxI"
;They are business rivals.
;
(defrule rival1
(declare (salience 4900))
(id-root ?id rival)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbarI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rival.clp 	rival1   "  ?id "  barAbarI_kara )" crlf))
)

;"rival","VT","1.barAbarI_karanA"
;She is a genius, no one can rival her.
;
