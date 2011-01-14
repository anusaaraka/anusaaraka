
(defrule dispense0
(declare (salience 5000))
(id-root ?id dispense)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dispense.clp	dispense0  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;As our fridge is not working properly,we'll despense with it.
;hamArA Prija sahI warIke se kAma nahIM kara rahA para hama isake binA kAma calA leMge
(defrule dispense1
(declare (salience 4900))
(id-root ?id dispense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viwaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dispense.clp 	dispense1   "  ?id "  viwaraNa_kara )" crlf))
)

;default_sense && category=verb	bAzta	0
;"dispense","VT","1.bAztanA"
;My father dispensed money to us on the NewYear day.
;
;
