
(defrule crack0
(declare (salience 5000))
(id-root ?id crack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_ke_virUxXa_kadZI_kAryavAhI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " crack.clp	crack0  "  ?id "  " ?id1 "  kisI_ke_virUxXa_kadZI_kAryavAhI_kara  )" crlf))
)

;The police was cracking down on gamblers.
;pulisa juAriyoM ke virUxXa kadZI kAryavAhI kara rahI WI
(defrule crack1
(declare (salience 4900))
(id-root ?id crack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_na_baDZa_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " crack.clp	crack1  "  ?id "  " ?id1 "  Age_na_baDZa_pA  )" crlf))
)

;They cracked up when they saw me.
;muJe xeKakara vaha rUka gae
(defrule crack2
(declare (salience 4800))
(id-root ?id crack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crack.clp 	crack2   "  ?id "  xarAra )" crlf))
)

;"crack","N","1.xarAra"
;There was a crack in the window frame.
;--"2.catakane_kI_AvAjZa"
;The crack of a whip, could be heard from my house.
;--"3.sanakI"
;She is a crack.
;--"4.XamAkA"
;There was a loud crack of thunder in the night.
;--"5.karArI_cota"
;She fell down && got a crack on the head. 
;--"6.krEka{eka_prakAra_kI_naSIlI_xavA}"
;Crack is now freely available in India also.
;
(defrule crack3
(declare (salience 4700))
(id-root ?id crack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crack.clp 	crack3   "  ?id "  cataka )" crlf))
)

;"crack","VTI","1.catakanA"
;The glass cracked when it was heated
;--"2.tUtanA"
;The child fell on the ground && cracked her bone.
;--"3.PatanA"
;Her lips were dry && cracked. 
;--"4.jora_se_takarAnA"
;She cracked her head on the wall.
;--"5.XamAkA_karanA"
;The hunter's rifle cracked && the fox fell dead.
;--"6.BarrA_jAnA"
;Her voice cracked while talking about her dead son.
;--"7.manovEjFAnika_xavAba_meM_AjAnA"
;The lawyer questioned her for three hours && she finally cracked. 
;--"8.samAXAna_nikAlanA"
;Our new computer game is a tricky one,but my son finally cracked it.  
;--"9.kahanA"
;She is very good at cracking jokes.
;
;LEVEL 
;
;Headword : crack
;
;
;Examples --
;
;"crack","N","1.xarAra"
;There was a crack in the window frame.
;KidZakI kI cOKata meM eka xarAra WI.
;--"2.catakane_kI_AvAjZa"
;The crack of a whip,could be heard from my house.
;kodZe kA catakanA mere Gara se BI sunAI xe rahA WA.
;--"3.sanakI"
;She is a crack.
;vaha sanakI hE.
;--"4.kadZakanA"
;There was a loud crack of thunder in the night.
;rAwa ko jZora se bijalI kA kadZakanA sunAI xiyA. 
;--"5.catakana"
;She fell down && got a crack on the head.
;vaha gira gayI Ora usake sira meM catakana A gayI.
;--"6.krEka{eka_prakAra_kI_naSIlI_xavA}"
;Crack is now freely available in India also.
;aba BArawa meM BI krEka Kule Ama milane lagA hE.
;
;"crack","VTI","1.catakanA"
;The glass cracked when it was heated.
;jaba SISe ko garama kiyA wo vaha cataka gayA.
;--"2.tUtanA"
;The child fell on the ground && cracked her bone.
;baccI jZamIna para gira gayI Ora usakI haddI tUta gayI.
;The lawyer questioned her for three hours && she finally cracked.
;vakIla ne usase wIna GaMte waka savAla kiye Ora aMwawaH vaha tUta gayI.
;--"3.PatanA"
;Her lips were dry && cracked.
;usake oMTa papadZA gaye We Ora Pata gaye We.
;--"4.takarAnA{xarAra_padZa_jAe}"
;She cracked her head on the wall.
;usane apanA sira xivAla para jZora se takarA liyA.
;--"5.XamAkA_karanA"
;The hunter's rifle cracked && the fox fell dead.
;SikArI kI banxUka ne XamAkA kiyA Ora lomadZI gira gayI. 
;--"6.BarrAnA"
;Her voice cracked while talking about her dead son. 
;apane mqwa bete ke bAre meM bAwa karawe samaya usakA galA BarrA gayA.
;--"7.samAXAna_nikAlanA"
;Our new computer game is a tricky one,but my son finally cracked it.
;hamArA nayA kampyUtara gema muSkila hE para mere bete ne aMwa meM usakA samAXAna nikAla liyA.
;--"9.bawAnA{cutakule_Axi}"
;She is very good at cracking jokes.
;vaha cutakule Axi bawAne meM bahuwa nipudZa hE.
;
;
;Upara xiye uxAharaNoM se aMgrejZI Sabxa 'crack' kA bIja arWa 'xarAra' prawIwa howA hE.
;'xarAra' se hI isake anya arWa sPutiwa hue lagawe hEM. yaxi XyAna se xeKeM wo isakA 
;anwarnihiwa sUwra nimna prawIwa howA hE -
;
;anwarnihiwa sUwra ;
;
;                           xarAra
;                            |
;                  xarAra padZanA yA honA --sIXe socane meM xarAra padZa jAe (sanakI), 
;                            |
;                     |---------------------|--------------------|
;                     |                     |                    |
;            xarAra padZane se PatanA   xarAra padZane kI AvAjZa     xarAra padZane kA prahAra 
;                     |      (catakanA, wadZakanA, XamAkA, BarrAnA)   (takarAnA)
;                     |
;                   tUtanA
;                     |
;                tUta_kara_KulanA
;                     |
;                 samAXAna pAnA
;
;  sUwra : xarAra^catAk[>tUtanA]
