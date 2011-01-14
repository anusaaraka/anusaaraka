
(defrule matter0
(declare (salience 5000))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 foreign)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAmalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matter.clp 	matter0   "  ?id "  mAmalA )" crlf))
)

(defrule matter1
(declare (salience 4900))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 scatter)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matter.clp 	matter1   "  ?id "  paxArWa )" crlf))
)

;It scatters the matter
(defrule matter2
(declare (salience 4800))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 amount )
(viSeRya-of_viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matter.clp 	matter2   "  ?id "  paxArWa )" crlf))
)

;Amount of matter disintegrated is ..
(defrule matter3
(declare (salience 4700))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matter.clp 	matter3   "  ?id "  viRaya )" crlf))
)

;default_sense && category=noun	viRaya	0
;"matter","N","1.viRaya"
;I don't discuss private matters with my collegues.
;--"2.xravya"
;
;
