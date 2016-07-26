;Added by sheetal(4-02-10)
(defrule weightage0
(declare (salience 5000))
(id-root ?id weightage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 activity)
(kriyA-object  ?kri ?id)
(kriyA-to_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weightage.clp      weightage0   "  ?id "  mahawva )" crlf))
)
;Some schools do not give weightage to extracurricular activities .

