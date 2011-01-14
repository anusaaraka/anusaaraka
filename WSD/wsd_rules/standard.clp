
(defrule standard0
(declare (salience 5000))
(id-root ?id standard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAmANika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  standard.clp 	standard0   "  ?id "  prAmANika )" crlf))
)

;"standard","Adj","1.prAmANika"
;All languages should be accepted in standard form.
;--"2.mAnya"
;NCERT textbooks are a standard for CBSE students.
;--"3.mUla"
;Please charge the standard cost of this tea set.
;
(defrule standard1
(declare (salience 4900))
(id-root ?id standard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxarSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  standard.clp 	standard1   "  ?id "  AxarSa )" crlf))
)

;"standard","N","1.AxarSa"
;Don't let your standards to be vanished.
;--"2.mAnaka"
;Meter is an internationally accepted standard for measuring length.
;--"3.swara"
;We expect high standards of studies in convent schools.
;--"4.kakRA/xarajA"
;Now I am in the 10th standard.
;
