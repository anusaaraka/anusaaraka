
;"chink","N","1.xarAra/Kanaka"

;$$$  Modified by Preeti(14-5-14)
;There is a chink in the fence. [merriam-webster.com]
;bADa meM eka xarAra hE.
(defrule chink0
;(declare (salience 5000));salience changed
(id-root ?id chink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chink.clp 	chink0   "  ?id "  xarAra )" crlf))
)


;$$$  Modified by Preeti(14-5-14)
;We chinked glasses and drank to each other's health. [Oxford Advanced Learner's Dictionary]
;hamane gilAsa KanakAIM Ora hara eka ke svAsWya ke liye piyA.
(defrule chink1
;(declare (salience 4900));salience changed
(id-root ?id chink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KanakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chink.clp 	chink1   "  ?id "  KanakA )" crlf))
)

;parser problem
;@@@ Added by Preeti(-1-14)
;His lawyers found a chink in the law. [merriam-webster.com]
;usake vakIloM ko kAnUna meM kamajora muxxA milA hE.
(defrule chink2
(declare (salience 1000))
(id-root ?id chink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-root ?id1 law)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora_muxxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chink.clp 	chink2   "  ?id "  kamajora_muxxA )" crlf))
)

;"chink","V","1.KanakanA-KanakAnA"
