
(defrule group0
(declare (salience 5000))
(id-root ?id group)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id grouping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  group.clp  	group0   "  ?id "  xala )" crlf))
)

;"grouping","N","1.xala"
;An anti-management grouping emerged in the organization.
;
(defrule group1
(declare (salience 4900))
(id-root ?id group)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samUha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  group.clp 	group1   "  ?id "  samUha )" crlf))
)

(defrule group2
(declare (salience 4800))
(id-root ?id group)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikatTA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  group.clp 	group2   "  ?id "  ikatTA_ho )" crlf))
)

;"group","V","1.ikatTA_honA"
;The teacher grouped the students.
;
;