
(defrule heart0
(declare (salience 5000))
(id-root ?id heart)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hearted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BAvanAoM_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  heart.clp  	heart0   "  ?id "  BAvanAoM_vAlA )" crlf))
)

;"hearted","Adj","1.BAvanAoM_vAlA"
;Harishchandra was a kindhearted person.
;hariScanxra xayAlu BAvanAoM vAle We.
;
(defrule heart1
(declare (salience 4900))
(id-root ?id heart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hqxaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heart.clp 	heart1   "  ?id "  hqxaya )" crlf))
)

;"heart","N","1.hraxaya"
;usakA"heart" kamajora hE isalie use aspawAla meM BarwI kiyAgayA.
;
;

;@@@ Added by Prachi Rathore[12-2-14]
;I heart New York.[cambridge]
;मैं न्यूयार्क पसंद करता हूँ . 
(defrule heart2
(declare (salience 4900))
(id-root ?id heart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasaMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heart.clp 	heart2   "  ?id "  pasaMxa_kara )" crlf))
)
;@@@ Added by Prachi Rathore[12-2-14]
;The distinction between right and wrong lies at the heart of all questions of morality.[oald]
(defrule heart3
(declare (salience 5000))
(id-root ?id heart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heart.clp 	heart3   "  ?id "  muKya_BAga )" crlf))
)

;@@@ Added by Prachi Rathore[12-2-14]
;The demonstrators will march through the heart of the capital.[cambridge]
;प्रदर्शक राजधानी के मध्य भाग  से कूच करेंगे . 
(defrule heart4
(declare (salience 5050))
(id-root ?id heart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXya_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heart.clp 	heart4   "  ?id "  maXya_BAga )" crlf))
)
;@@@ Added by Prachi Rathore[12-2-14]
;ace of hearts.[cambridge]
;पान का इक्का . 
(defrule heart5
(declare (salience 5000))
(id-root ?id heart)
(id-word ?id hearts)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 ace|jack|king|queen|ten|nine|eight|seven|six|five|four|three|two)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heart.clp 	heart5   "  ?id " pAna)" crlf))
)

;@@@ Added by Prachi Rathore[12-2-14]
;In this game, a heart beats a club[cambridge]
;इस खेल में, पान क्लब को हराता है . 
(defrule heart6
(declare (salience 5000))
(id-root ?id heart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id2)
(kriyA-subject  ?id1 ?id)
(id-root ?id2 club|spade|diamond)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heart.clp 	heart6   "  ?id " pAna)" crlf))
)


