
(defrule drop0
(declare (salience 5000))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CUta_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop0  "  ?id "  " ?id1 "  CUta_jA  )" crlf))
)

;I dropped back from the crowd due to pain in my leg.
;mEM apanI tAzga ke xarxa kI vajaha se BIdZa se pICe raha gayA
(defrule drop1
(declare (salience 4900))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yUz_hI_bina_bulAe_kisI_se_milane_cale_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop1  "  ?id "  " ?id1 "  yUz_hI_bina_bulAe_kisI_se_milane_cale_jA  )" crlf))
)

;His office is near to my house && he often drops by.
;usakA APisa mere Gara ke pAsa hE Ora vaha prAya: hI yahAz(Gara) bina bulAe calA AwA hE
(defrule drop2
(declare (salience 4800))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 akasmAwa_A_tapaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop2  "  ?id "  " ?id1 "  akasmAwa_A_tapaka  )" crlf))
)

;He often drops in if he happens to be passing.
;vaha jaba BI yahAz se gujZarawA hE,akasmAwa A tapakawA hE
(defrule drop3
(declare (salience 4700))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop3  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;Just drop the cd's in at my house if you get time.
;yaxi wumhe samaya mile wo sI dI mere Gara pe CodZa xenA
(defrule drop4
(declare (salience 4600))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GatanA_yA_Gata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop4  "  ?id "  " ?id1 "  GatanA_yA_Gata_jA  )" crlf))
)

;Your work progress has dropped off during the last two months.
;wumhArI kArya kRamawA piCale xo mahInoM se Gata rahI hE
(defrule drop5
(declare (salience 4500))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 so_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop5  "  ?id "  " ?id1 "  so_jA  )" crlf))
)

;She was so tired that she dropped off in the class.
;vaha iwanI WakI huI WI ki kakRA meM hI so gaI
(defrule drop6
(declare (salience 4400))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_ko_se_kahIM_CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop6  "  ?id "  " ?id1 "  kisI_ko_se_kahIM_CodZa  )" crlf))
)

;Can you please drop me off to the office as i'm getting late.
;kyA wuma muJe APisa CodZa sakawe ho kyoMki muJe xera ho rahI hE
(defrule drop7
(declare (salience 4300))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drop.clp	drop7  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;She dropped out of the job as she was not getting enough salary there.
;usane vaha nOkarI CodZa xI kyoMki use vahAz paryApwa vewana nahIM mila rahA WA

;The student dropped the course, deciding to take it next year instead of this year.
(defrule drop8
(declare (salience 4300))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 course|subject)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp      drop8   "  ?id "  CodZa_xe )" crlf))
)




(defrule drop9
(declare (salience 4200))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop9   "  ?id "  girA )" crlf))
)

(defrule drop10
(declare (salience 4100))
(id-root ?id drop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drop.clp 	drop10   "  ?id "  gira )" crlf))
)

;default_sense && category=verb	girA	0
;"drop","VT","1.girAnA"
;Don't drop the dishes
;--"2.nikAla_xenA"
;Drop him from the Republican ticket
;--"3.bawAnA"
;Drop a hint
;--"4.CodZanA"
;Drop a lawsuit
;The Giants dropped 1.of their first 13
;They dropped her after she had a child out of wedlock
;--"5.janma_xenA"
;The cow dropped her calf this morning
;
;
;LEVEL 
;Headword : drop
;
;Examples --
;
;"drop","N","1.bUzxa"
;He poured a few drops of medicine into the glass of water.
;usane xavA kI kuCa bUzxeM pAnI ke glAsa meM dAlIM.
;--"2.girAvata"
;A drop of 57 points on the Dow Jones index
;dO jonsa kI iMdEksa meM 57 pAInta kI girAvata
;They expected the drop would be successful
;unako ASA WI ki yaha girAvata saPala hogI.
;--"3.giranA"
;It was a miracle that he survived the drop from that height
;yaha eka acamBA hI hE ki vaha iwanI UzcAI kA giranA Jela gayA
;
;"drop","VI","1.giranA"
;The bombs are dropping on enemy targets
;bama xuSmanoM ke addoM para gira rahe hEM.
;Stock prices dropped
;stOYka xAma gira gaye
;--"2.bolane_laganA" <--eka BARA bolawe-bolawe xUsarI BARA meM cale jAnA <--xUsarI BARA meM ludZaka jAnA <--xUsarI BARA meM gira jAnA
;She dropped into army jargon.
;vaha senA kI jZubAna bolane lagI
;
;"drop","VT","1.girAnA"
;Don't drop the dishes
;barwana mawa girA xenA.
;--"2.nikAla_xenA"
;Drop him from the Republican ticket
;usako ripablikana tikata-sUcI se nikAla xo. <--nikAla xenA yAni unako sWAna se girA xenA
;The Giants dropped 11 of their first 13
;jAyantsa ne apane 13 meM se 11 ko nikAla xiyA. 
;--"3.bawAnA"
;Drop a hint
;eka hinta bawAo <--sUcanA kI eka bUzxa girAnA
;--"4.CodZanA"
;Drop a lawsuit
;mukaxamA CodZa xo <--pICe CodZa xenA 
;
;
;Upara xiye uxAharaNoM meM 'drop' Sabxa ke saMjFA meM 'bUzxa' Ora kriyA meM 'giranA' xo pramuKa arWa xiKa rahe. ye xono arWa BI paraspara sambanXiwa hEM. kisI xrava kA eka CotA aMSa jaba 'girawA' hE wo vaha 'bUzxa' kahalAwA hE. aMgrejZI kI prakqwi ke anurUpa 'bUzxa'
;saMjFA Sabxa kA 'kriyA' prayoga BI samBava hE. hinxI meM 'giranA' sAmAnya Sabxa hE waWA bUzxa ke girane ko 'tapakanA' kahawe hEM. awaH isakA anwarnihiwa sUwra hogA ;
;
;anwarnihiwa sUwra ;
;
;bUzxa -bUzxa kA tapakanA -giranA[girAnA] -girAvata --gira ke CUta jAnA --nikAlA jAnA 
;
;
;sUwra : bUzxa`[>giranA`{kriyA}]
