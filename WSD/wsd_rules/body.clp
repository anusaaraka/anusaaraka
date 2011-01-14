;Added by Meena(24.02.10)
;The camel can adjust its body temperature according to the external temperature.
(defrule body0
(declare (salience 4900))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(samAsa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarIrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp      body1   "  ?id "  SarIrika )" crlf))
)





(defrule body1
(declare (salience 5000))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bodied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id viSeRa_prakAra_kA_SarIra_raKane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  body.clp  	body1   "  ?id "  viSeRa_prakAra_kA_SarIra_raKane_vAlA )" crlf))
)

;"bodied","Adj","1.viSeRa_prakAra_kA_SarIra_raKane_vAlA"
;All soldiers are able-bodied people.
;



;Salience reduced by Meena(24.02.10)
(defrule body2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id body)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  body.clp 	body2   "  ?id "  SarIra )" crlf))
)

;default_sense && category=noun	SarIra	0
;"body","N","1.SarIra"
;Human body is a unique creation of God.
;--"2.samiwi"
;The whole body of doctors were working on the new medicine.
;--"3.DAzcA"
;The body of the truck got completely damaged in the accident.
;
;LEVEL 
;Headword : body
;
;Examples --
;
;"body","N","1.SarIra"
;Human body is a unique creation of God.
;mAnava SarIra BagavAna kI eka ananya racanA hE.
;--"2.XadZa"
;He has a strong body but week limbs.
;usakA XadZa majZabUwa hE para hAWa-pAzva kamajZora
;--"3.samuxAya"
;The whole body of doctors were working on the new medicine.
;dAktaroM kA pUrA samuxAya nayI ORaXI para kAma kara rahA WA.
;--"3.muKya_BAga"
;The body of the truck got completely damaged in the accident.
;xurGatanA meM traka kA pUrA DAzcA burI waraha se tUta gayA.
;--"4.KapiNda"
;Heavenly bodies
;svargIya KapiNda
;
; sUwra : piNda[>SarIra]
