
(defrule adhere0
(declare (salience 5000))
(id-root ?id adhere)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xqDZa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " adhere.clp	adhere0  "  ?id "  " ?id1 "  xqDZa_raha  )" crlf))
)

;She adheres to her commitments.
;vaha apanI vacana baxXawA para xqDZa rahawI hE
(defrule adhere1
(declare (salience 4900))
(id-root ?id adhere)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anusaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adhere.clp 	adhere1   "  ?id "  anusaraNa_kara )" crlf))
)

;default_sense && category=verb	pAlana_kara	0
;"adhere","V","1.pAlana_karanA"
;You must adhere to the rules specified.
;--"2.cipakanA"
;An electrically charged balloon will adhere to the walls of a room.
;
;