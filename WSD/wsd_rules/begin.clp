
(defrule begin0
(declare (salience 5000))
(id-root ?id begin)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id beginning)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AramBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  begin.clp  	begin0   "  ?id "  AramBa )" crlf))
)

(defrule begin1
(declare (salience 4900))
(id-root ?id begin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AramBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  begin.clp 	begin1   "  ?id "  AramBa_kara )" crlf))
)

;default_sense && category=verb	prAramBa_ho	0
;"begin","VI","1.prAramBa_honA"
;The programme begins in the evening.
;
(defrule begin2
(declare (salience 4800))
(id-root ?id begin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAramBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  begin.clp 	begin2   "  ?id "  prAramBa_kara )" crlf))
)

;"begin","VT","1.prAramBa_karanA"
;They will begin the programme in the evening.
;
