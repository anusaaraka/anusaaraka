
(defrule stick0
(declare (salience 5000))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lATI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick0   "  ?id "  lATI )" crlf))
)

;"stick","N","1.lATI"
;Old people generally use stick to walk properly.
;--"2.CadZI"
;My brother is a good player of stick games.
;--"3.drama_CadZI"
;Ram has got a very good speed at the drum stick.
;--"4.lakadZI"
;My servant kept away all the sticks after are furniture work was over.
;--"5.pulIsa_kA_dZaMdZA"
;The thieves are scared of the police stick.
;--"6.asAXAraNa_vyakwi"
;Ram is a funny old stick.
;
(defrule stick1
(declare (salience 4900))
(id-root ?id stick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stick.clp 	stick1   "  ?id "  cipaka )" crlf))
)

;"stick","V","1.cipakanA"
;I tried to STICK All the strickers on the cupboard.
;--"2.GusedZanA"
;Stick the iron nail into the wall.
;--"3.baraxASwa_karanA"
;I can't stick on to the TV for more than two hours.
;--"4.saWApiwa_karanA"
;I want to stick the name of my company in the market scenario.
;
;LEVEL 
;
;
;"stick","N","1.lATI"<--CadZI
;Old people generally use stick to walk properly.
;
;--"2.CadZI" <--CadZI
;My brother is a good player of stick games.
;Ram has got a very good speed at the drum stick.
;The thieves are scared of the police stick.
;My servant kept away all the sticks after are furniture work was over.
;
;Ram is a funny old stick.
;
;"stick","V","1.cipakanA"
;I tried to stick all the stickers on the cupboard.
;
;--"2.GusedZanA"<--xIvAra ke anxara jAkara cipakanA <--cipakanA
;Stick the iron nail into the wall.
;
;--"3.baraxASwa karanA" <--yAni tI.vI.se cipakanA
;I can't stick on to the TV for more than two hours.
;
;--"4.sWApiwa karanA" <--cipakAnA<--cipakanA
;I want to stick the name of my company in the market scenario.
;
;
;nota:--uparyukwa "stick" Sabxa ke saBI kriyA Ora saMjFA ke vAkyoM kA avalokana  
;      karane para isa niRkarRa para pahuzca sakawe hEM ki saBI vAkyoM kA arWa xo SabxoM
;      'CadZI Ora 'cipakanA' se nikAla sakawe hEM.va isake liye sUwra nimna prakAra 
;      liKa sakawe hEM.
;                 
;sUwra : CadZI/GusAnA[<cipakanA]
;  
;
