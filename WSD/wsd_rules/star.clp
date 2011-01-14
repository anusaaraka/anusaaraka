
(defrule star0
(declare (salience 5000))
(id-root ?id star)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  star.clp 	star0   "  ?id "  wArA )" crlf))
)

;"star","N","1.wArA"
;There are infinite stars in the universe.
;--"2.nakRawra"
;One born under a lucky star is believed to be lucky.
;--"3.prasixXa_vyakwi"
;Lata Mangeshkar is a well known star.
;--"4.wArA_jEsA"
;Stars are used to decorate trees at the time of festivals.
;--"5.siwArA/wArikA/aBinewrI"
;She was the star in this serial.
;Taj is a 5 star hotel.
;
(defrule star1
(declare (salience 4900))
(id-root ?id star)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wArAMkiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  star.clp 	star1   "  ?id "  wArAMkiwa_kara )" crlf))
)

;"star","V","1.wArAMkiwa_karanA"
;The starred lessons are to be read carefully.
;
;LEVEL 
;
;
;Headword : star
;
;Examples --
;
;"star","N","1.wArA" 
;The stars in the sky guide travellers at night.
;AkASa ke wAre rAwa ko yAwriyoM kA paWapraxarSana karawe hEM.
;
;--"2.haswI{Kela_iwyAxi meM}"-siwArA
;Lata Mangeshkar is a well known star.
;lawA maMgeSakara eka prasixXa haswI hEM 
;
;--"3.siwArA"
;Stars are used to decorate the christmas trees.
;siwAroM kA prayoga krisamasa trI ko sajAne ke liye karawe hEM
;
;Taj is a 5 star hotel.
;wAja pAzca siwArA hotala hE
;
;--"4.uwkqRta"-siwArA
;Mohan is Rama's star pupil.
;mohana ramA kA uwkqRta vixyArWI hE.
;
;--"5. nakRawra"<--wArA<---siwArA
;She was born under a lucky star.
;vaha eka acCe nakRawra meM pExA huI.
;
;"star","V","1.wArAMkiwa karanA"-siwAre dAlanA
;Star the correct words.
;sahI SabxoM ko wArAMkiwa karo.
;
;--"2.muKya BUmikA axA karanA"-stAra kI BUmikA axA kI-siwAre kI BUmikA
;She starred in several films.
;usane kaI PilmoM meM muKya BUmikA axA kI
;
;   nota:--uparyukwa 'star'Sabxa ke samaswa vAkyoM kA yaxi avalokana kareM  
;        wo yaha niRkarRa nikAla sakawe hEM ki saBI arWoM kA mUla arWa
;        'siwArA' Sabxa se nikAlA jA sakawA hE.
;           awaH isakA sUwra nimna prakAra xe sakawe hEM
;
;         sUwra : siwArA
;
