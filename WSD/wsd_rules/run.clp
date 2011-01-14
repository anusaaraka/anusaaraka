
(defrule run0
(declare (salience 5000))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id running )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id lagAwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  run.clp  	run0   "  ?id "  lagAwAra )" crlf))
)

;"running","Adj","1.lagAwAra/eka_ke_bAxa_eka"
;Martina hingis won the world cup championship Three times running.
;
(defrule run1
(declare (salience 4900))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run1  "  ?id "  " ?id1 "  pICA_kara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  run.clp       run1   "  ?id "  kA)" crlf)
)

(defrule run2
(declare (salience 4800))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run2  "  ?id "  " ?id1 "  pICA_kara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  run.clp       run2   "  ?id " kA )" crlf)
)

(defrule run3
(declare (salience 4700))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 against)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 viroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run3  "  ?id "  " ?id1 "  viroXa_kara  )" crlf))
)

(defrule run4
(declare (salience 4600))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 against)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 viroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run4  "  ?id "  " ?id1 "  viroXa_kara  )" crlf))
)

(defrule run5
(declare (salience 4500))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 iXara_uXara_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run5  "  ?id "  " ?id1 "  iXara_uXara_BAga  )" crlf))
)

(defrule run6
(declare (salience 4400))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 iXara_uXara_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run6  "  ?id "  " ?id1 "  iXara_uXara_BAga  )" crlf))
)

(defrule run7
(declare (salience 4300))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run7  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule run8
(declare (salience 4200))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run8  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule run9
(declare (salience 4100))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run9  "  ?id "  " ?id1 "  gira_jA  )" crlf))
)

(defrule run10
(declare (salience 4000))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run10  "  ?id "  " ?id1 "  gira_jA  )" crlf))
)

(defrule run11
(declare (salience 3900))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run11  "  ?id "  " ?id1 "  takarA  )" crlf))
)

(defrule run12
(declare (salience 3800))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run12  "  ?id "  " ?id1 "  takarA  )" crlf))
)

(defrule run13
(declare (salience 3700))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kawma_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run13  "  ?id "  " ?id1 "  Kawma_ho  )" crlf))
)

(defrule run14
(declare (salience 3600))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kawma_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run14  "  ?id "  " ?id1 "  Kawma_ho  )" crlf))
)

(defrule run15
(declare (salience 3500))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ke_Upara_se_nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run15  "  ?id "  " ?id1 "  ke_Upara_se_nikala_jA  )" crlf))
)

(defrule run16
(declare (salience 3400))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ke_Upara_se_nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run16  "  ?id "  " ?id1 "  ke_Upara_se_nikala_jA  )" crlf))
)

(defrule run17
(declare (salience 3300))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SIGrawA_se_paDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run17  "  ?id "  " ?id1 "  SIGrawA_se_paDa  )" crlf))
)

(defrule run18
(declare (salience 3200))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SIGrawA_se_paDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run18  "  ?id "  " ?id1 "  SIGrawA_se_paDa  )" crlf))
)

(defrule run19
(declare (salience 3100))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  run.clp 	run19   "  ?id "  xOda )" crlf))
)

(defrule run20
(declare (salience 3000))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " run.clp	run20  "  ?id "  " ?id1 "  pICA_kara  )" crlf))
)

(defrule run21
(declare (salience 2900))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 water)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  run.clp 	run21   "  ?id "  baha )" crlf))
)

(defrule run22
(declare (salience 2800))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 system)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  run.clp 	run22   "  ?id "  calA )" crlf))
)

(defrule run23
(declare (salience 2700))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  run.clp 	run23   "  ?id "  xOda )" crlf))
)


(defrule run25
(declare (salience 3101))
(id-root ?id run)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUmanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  run.clp       run25   "  ?id "  GUmanA )" crlf))
)
 
;LEVEL 
;
;
;Headword : run
;
;Examples --
;
;"run","N","1.xOdZa" 
;he goes for a run every morning.
;vaha rojZa savere xOdZane jAwA hE<--xOdZanA
;--"2.sEra"
;They have taken out their van for a run around the city for sight seeing.
;ve apanI gAdZI Sahara ke xarSanIya sWaloM kI sEra ke liye le gaye.<--GUmanA<--xeKanA
;--"3.mArga"
;This ferry operates on the Albagh-Bombay run
;yaha PerI alabAga-mumbaI mArga para calawI hE. <--calanA
;--"4.lambA_xOra"
;`Shatranj ke khiladi 'play had a good run in the country.
;SawaraMja ke KilAdZI nAtaka xeSa meM lambe xOra waka calA.<--lambe samaya wakacalA<--calanA
;Last year we had enjoyed an exceptional run of good monsoon.  
;piCale varRa hamane asAXAraNa barasAwa ke lambe xOra kA Ananxa liyA.<--lambe samaya waka bAriSa 
;calI<--calanA
;--"5.sArvajanika mAzga"
;When the new currency measures were announced there was a run on the bank.
;jaba nayI muxrA ko calAne kI GoRaNA kI gayI wo bEMka meM sArvajanika mAzga baDZa gayI.<--baDZanA<--calanA
;--"6.bAdZA"
;She has a very big 'chicken-run' at her back yard.                       
;usake piCavAdZe eka bahuwa badZA murgI kA bAdZA hE<--bAdZA
;--"7.eka viSeRa Kela"
;Generally people go to shimla for a special sport,'ski-run'.
;sAmAnyawa: loga SimalA viSeRa Kela 'skI-rana'ke liye jAwe hEM<--baraPa kI DZalAna para xo pattiyoM para xOdZanA.
;--"8.rana"
;Indian cricket team won the game by 20 runs.
;BArawIya kriketa tIma bIsa rana se jIwa gayI.<--xOdZanA
;--"9.baMtanA/bAMtanA"
;The run of the cards favoured his luck.<--baMtanA
;pawwoM ke baMtane meM BAgya ne usakI waraPaxArI kI.<--pawwoM kA batanA<--baDZanA<--calanA
;
;"run","VI","1.xOdZanA"
;She cannot run fast because her leg pains.
;vaha wejZa nahIM xOdZa sakawI kyoM ki usakA pEra xarxa karawA hE.<--xOdZanA
;He was the first person to run a mile in four minutes.
;vaha praWama vyakwi WA jo cAra minata meM eka mIla xOdZA.<--xOdZanA
;
;--"2.xOdZAnA"
;She ran her eyes over the stage.
;usane apanI AzKe steja para xOdZAIM.<--xOdZI<--xOdZanA
;
;--"3.weja calanA eka jagaha se xUsarI jagaha"
;The ferries don't run on sundays.
;PerIjZa iwavAra ko nahIM calawI.<--calanA 
;In Calcutta trams run on rails
;kalakawwA meM trAmas patarI para calawI hE.<--calanA
;The lease of her house has only a year to run.
;usake Gara ke patte kA kevala eka hI varRa bacA hE.<--calanA hE
;P.C.Sarkar's magic show ran for six months only.
;pIsI sarakAra kA jAxU kA Kela kevala Ca: mahine hI calA.<--calanA
;--"4.le_jAnA  
;Can I run you to the airport?
;kyA mEM wumhe eyara porta waka le jA sakawA hUz.<--le jAnA<--calanA
;--"5.jAnA
;The G T road runs parallel to the Allahabad city.
;jI tI roda ilAhAbAxa se hokara jAwI hE.<--jAnA<--nikalanA<--calanA
;
;He murdered his wife,so the story runs.
;usane apanI pawnI kA kawla kara xiyA isa waraha kahAnI baDZawI hE<--calawI hE
;--"6.cAlU_karanA
;Could you run a hot bath for me?
;kyA wuma mere liye garama pAnI calA xoge.<--calanA 
;--"7.PElanA"
;I'm afraid the colour ran when I washed your new skirt.
;muJe dara hE jaba mEne wumhArI nayI skarta XoI usakA raMga PEla gayA.<--calA gayA
;
;nota:- uparyukwa saBI vAkyoM para xqRti dAlane para yaha niRkarRa nikAlA jA sakawA hE
;    ki 'run'Sabxa ke samaswa saMjFA Ora kriyA ke vAkyoM se nABikIya arWa xOdZane yA
;rana,se prApwa ho rahA hE.
;
;sUwra : xOdZa`^bAdZA  ;[run]
;
;
