;@@@ Added by Preeti(7-5-14)
;It is good to meet people from different parts of the country. [Oxford Advanced Learner's Dictionary]
;xeSa ke viBinna BAgoM se logoM se milanA acCA howA hE.
(defrule  country0
(id-root ?id  country)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "   country.clp 	 country0  "  ?id "  xeSa )" crlf))
)

;@@@ Added by Preeti(7-5-14)
;I was charmed by the cozy country inn. [merriam-webster.com]
;mEM ArAmaxeha xeSI sarAya se mohiwa ho gayA WA.
(defrule  country1
(declare (salience 1000))
(id-root ?id  country)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
;(samAsa  ? ?id)
(samAsa_viSeRya-samAsa_viSeRaNa ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "   country.clp 	 country1   "  ?id "  xeSI )" crlf))
)
