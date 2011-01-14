;Added by sheetal(21-03-10)
;He is apparently an expert on dogs .
(defrule apparently0
(declare (salience 5000))
(id-root ?id apparently)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kriyA ?id)
(kriyA-subject  ?kriyA ?sub)
(subject-subject_samAnAXikaraNa  ?sub ?sub_sam)
(id-root ?sub_sam expert)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMBavawaH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  apparently.clp       apparently0   "  ?id "  saMBavawaH )" crlf))
)
