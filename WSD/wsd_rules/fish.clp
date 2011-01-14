
(defrule fish0
(declare (salience 5000))
(id-root ?id fish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fishing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id maCalI_pakadZanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fish.clp  	fish0   "  ?id "  maCalI_pakadZanA )" crlf))
)

;"fishing","N","1.maCalI_pakadZanA"
;Fishermen go for fishing in the sea every morning to get a good catch.
;
;
(defrule fish1
(declare (salience 4900))
(id-root ?id fish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DZUMDZa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fish.clp	fish1  "  ?id "  " ?id1 "  DZUMDZa_nikAla  )" crlf))
)

;He put his hand in his pocket && fished out a key.
;usane apanI jeba meM hAWa dAlA Ora cAbI ko DUzDZa nikAlA
(defrule fish2
(declare (salience 4800))
(id-root ?id fish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maCalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fish.clp 	fish2   "  ?id "  maCalI )" crlf))
)

(defrule fish3
(declare (salience 4700))
(id-root ?id fish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maCalI_pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fish.clp 	fish3   "  ?id "  maCalI_pakadZa )" crlf))
)

;"fish","V","1.maCalI_pakadZanA"
;I go for fishing every week along with my friends.
;
;LEVEL 
;
;
;'fish' Sabxa kA sUwra banAne kA prayAsa:-
; 
;"fish"
;
;
;"1.saMvexanahIna"
;  He is a cold fish.
;  vaha saMvexanahIna hE.
;
;"2.tatolanA"
;  She fished in her bag for the keys.
;  usane apane WEle meM cAbiyo ke lie tatolA.
;
;"3.maCalI_pakadZanA"
;  Ram goes for fishing during holidays.
;  CutTiyoM meM rAma maCaliyAz pakZadZane jAwA hE.
;
;"4.maCalI"
;  My mother cooked fish curry today.
;  Aja merI mAz ne maCalI kI sabjI pakAI hEM.
;
;yahAz ina cAro vAkyoM meM" "fish" ke alaga arWa hEM.
;
;"1.maCalI"
;  My mother cooked fish curry today.
;  Aja merI mAz ne maCalI kI sabjI pakAI hEM.
;
;"2.maCalI_pakadZanA"  ----pAnI meM hAWa dAla kara tatolanA
;  Ram goes for fishing during holidays.
;  CutTiyoM meM rAma maCaliyAz pakZadZane jAwA hE.
;
;"3.tatolanA"  <--maCalI pakadZane jEsI kriyA karanA
;  She fished in her bag for the keys.
;  usane apane WEle meM cAbiyo ke lie tatolA.
;
;  He is a cold fish.
;  vaha saMvexanahIna hE.    "cold fish" ko grupa kiyA jAnA cAhiye
;
;
;yahAz xiye uxAharaNoM meM "fish" ke alaga arWa eka sUwra se judZa rahe hEM.
;
;isakA sUwra kuCa EsA banegA.
;
;anwarnihiwa sUwra ;
;maCalI-maCaliyAnA--maCalI pakadZanA >(pakadZanA)>----tatolanA.
;
;sUwra : maCalI[>tatolanA]
;
