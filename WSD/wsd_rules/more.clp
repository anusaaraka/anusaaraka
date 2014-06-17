
;Added by Meena(5.02.10)
;How much more spilled?
(defrule more0
(declare (salience 5001))
(id-root ?id more)
?mng <-(meaning_to_be_decided ?id)
(or (viSeRaNa-viSeRaka ?id ?id1) (kriyA-kriyA_viSeRaNa ?k ?id)) ;How much more should we work on this?
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  more.clp      more0   "  ?id "  Ora )" crlf))
)

(defrule more1
(declare (salience 5000))
(id-root ?id more)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  more.clp 	more1   "  ?id "  aXika )" crlf));;inconsistency in the mng in assert & print statement has been corrected by Sukhada (15.3.10)).
)

(defrule more2
(declare (salience 4900))
(id-root ?id more)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  more.clp 	more2   "  ?id "  aXika )" crlf))
)

;@@@ Added by Nandini(4-12-13)
;However, there is more to a star than just its shine.[from mail]
;लेकिन तारे में चमक के अलावा और भी बहुत कुछ होता है।
(defrule more3
(declare (salience 5005))
(id-root ?id more)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-to_saMbanXI  ?id ?id1)
(id-word ?id1 star)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_BI_bahuwa_kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  more.clp 	more3   "  ?id "  Ora_BI_bahuwa_kuCa )" crlf))
)

;default_sense && category=adjective	aXika	0
;"more","Adj","1.aXika/jyAxA"
;I have more pens than he has.
;
;
