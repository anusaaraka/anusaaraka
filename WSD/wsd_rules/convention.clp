
;@@@ Added by Preeti(13-12-13)
;The Democratic National Convention will meet next week to announce their party's candidate for president. [Merriam-webster.com]
;prajAwAnwrika rARtrajana sammelana aXyakRa ke liye unakI pArtI ke ummIxavAra kI GoRaNA karane ke liye agale sapwAha milegA.
(defrule convention1
(declare (salience 1050))
(id-root ?id convention)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa  ?id ?) (viSeRya-RaRTI_viSeRaNa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammelana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convention.clp 	convention1   "  ?id "  sammelana )" crlf))
)

;@@@ Added by Preeti(13-12-13)
;The United Nations convention on the rights of the child was a big success.[ Oxford Advanced Learner's Dictionary]
;bacce ke aXikAroM para saMyukwa rARtra kA samaJOwA badA saPala WA.
(defrule convention2
(declare (salience 2000))
(id-root ?id convention)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJOwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convention.clp 	convention2   "  ?id "  samaJOwA )" crlf))
)


;#############################Defaults rule#######################################


;@@@ Added by Preeti(13-12-13)
;Convention demands that a club member should resign in such a situation. [ Oxford Advanced Learner's Dictionary]
;paramparA mAzga karawI hE ki eka klaba saxasya ko EsI hAlawa meM wyAga_pawra xenA cAhie.
(defrule convention0
(declare (salience 1000))
(id-root ?id convention)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paramparA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convention.clp 	convention0   "  ?id "  paramparA )" crlf))
)