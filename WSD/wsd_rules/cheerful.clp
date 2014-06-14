;$$$  Modified by Preeti(9-5-14)
;He seems a little more cheerful today. [merriam-webster.com]
;vaha Aja WodZA aXika AnaMxiwa  prawIwa howA hE.
(defrule cheerful0
;(declare (salience 5000));salience changed
(id-root ?id cheerful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AnaMxiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheerful.clp 	cheerful0   "  ?id "  AnaMxiwa )" crlf))
)

;$$$  Modified by Preeti(9-5-14)
;He is a cheerful, hard-working employee . [Oxford Advanced Learner's Dictionary]
;vaha eka sPUrwilA, kaTora pariSrama karanevAlA  karmacArI hE.
(defrule cheerful1
(declare (salience 1000));salience changed
(id-root ?id cheerful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sPUrwilA));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheerful.clp 	cheerful1   "  ?id "  sPUrwilA )" crlf))
)


;@@@ Added by Preeti(9-5-14)
;The walls were painted in cheerful colours. [Oxford Advanced Learner's Dictionary]
;xIvAreM ujjvala raMgoM meM razge gaye We.
(defrule cheerful2
(declare (salience 1000))
(id-root ?id cheerful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 colour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ujjvala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheerful.clp 	cheerful2   "  ?id "  ujjvala )" crlf))
)



;"cheerful","Adj","1.Ananxiwa"
;I like her cheerful nature.
;
;
