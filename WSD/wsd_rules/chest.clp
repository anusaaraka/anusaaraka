
(defrule chest0
(declare (salience 5000))
(id-root ?id chest)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 busy )
(viSeRya-with_saMbanXI ?id1 ?id) ;Replaced viSeRya-with_viSeRaNa as viSeRya-with_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chest.clp 	chest0   "  ?id "  saMxUka )" crlf))
)

(defrule chest1
(declare (salience 4900))
(id-root ?id chest)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 drag)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chest.clp 	chest1   "  ?id "  saMxUka )" crlf))
)

(defrule chest2
(declare (salience 4800))
(id-root ?id chest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chest.clp 	chest2   "  ?id "  CAwI )" crlf))
)

;default_sense && category=noun	CAwI	0
;"chest","N","1.CAwI"
;He suffered from a pain in his chest.
;--"2.sanxUka"
;A medicine chest stuffed with drugs was kept in the compounder's room.
;
;
