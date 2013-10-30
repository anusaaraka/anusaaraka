
(defrule flush0
(declare (salience 5000))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flushed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id paripUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flush.clp  	flush0   "  ?id "  paripUrNa )" crlf))
)

;"flushed","Adj","1.paripUrNa"
;
;
(defrule flush1
(declare (salience 4900))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flush.clp	flush1  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)

;The police flushed out the bandits from their place of hiding.
;pulisa ne dAkuoM ko unake Cipe hue sWAna se bAhara nikAlA
(defrule flush2
(declare (salience 4800))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flush.clp	flush2  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)

(defrule flush3
(declare (salience 4700))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flush.clp	flush3  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)

(defrule flush4
(declare (salience 4600))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avega))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush4   "  ?id "  Avega )" crlf))
)

(defrule flush5
(declare (salience 4500))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flush.clp	flush5  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)

(defrule flush6
(declare (salience 4400))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flush.clp	flush6  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)

(defrule flush7
(declare (salience 4300))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ceherA_lAla_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush7   "  ?id "  ceherA_lAla_ho )" crlf))
)

;default_sense && category=noun	wASa kA eka Kela	0
;"flush","N","1.wASa kA eka Kela"
;Flush is a game of betting.
;
;LEVEL 
;Headword : flush
;
;Examples --
;
;--"1.lAlI"
;A flush spread over her face.
;usake gAloM para lAlI CA gayI.
;--"2.Avega"
;In a flush of anger he walked out of the room.
;kroXa ke Avega meM vaha kamare se bAhara nikala gayA.
;In the flush of excitement, he forgot to lock the door.
;uwwejanA ke Avega meM vaha xevAjZe para wAlA lagAnA BUla gayA.
;--"3.pAnI bahAnA"
;Please flush the drain after you have taken bath.
;jaba wuma nahA lo waba usake bAxa nAlI se pAnI bahA xenA.
;--"4.bahAra_para{awyaXika}"
;The plants in his garden are in their second flush.
;usake bagIce ke pOXe xUsarI bahAra_para hEM.
;
;"flush","V","1.kapola para lAlI CAnA"
;He flushed whenhe was praised by his boss in the office.
;usake bOYsa ne OYPisa meM jaba usakI wArIPa kI wo usake kapoloM para lAlI CA gayI.
;--"2.pAnI se bahAnA"
;He flushed away all the incriminating documents through the toilet.
;usane saBI aBiyoga lagA xe sakane vAle xaswAvejZoM ko tOYyaleta ke pAnI meM bahA xiyA.
;
;"flush out","PhrV","1.bAhara nikAlanA"
;The police flushed out the bandits from their place of hiding.
;pulisa ne dAkuoM ko unake Cipane ke sWAnoM se bAhara nikAla liyA.
;
;"flush","Adj","1.samawala"
;The edge of the tank was flush with the ground.
;tEMka kA kinArA jZamIna ke samawala WA.
;--"2.BarapUra"
;His father is a rich man && is always flush with money.
;usake piwA ke pAsa BarapUra pEsA WA.
;
;"flush","N","1.wASa kA eka Kela"
;Flush is a game of betting.
;PlaSa SarweM lagAne kA eka Kela hE.
;
;
;Upara xiye saBI uxAharaNoM meM 'flush' ke arWa paraspara asambanXiwa lagawe hEM. awaH isa Sabxa kI vyuwpawwi xeKI jA sakawI hE.
;
;GCIDE ke anusAra -
; 
;Flush (?), v. i. [imp. & p. p. Flushed (?); p. pr. & vb. n. Flushing.]
;   [Cf. OE. fluschen to fly up, penetrate, F. fluz a flowing, E. flux,
;   dial. Sw. flossa to blaze, && E. flash; perh. influenced by blush.
;   \'fb84.] 1. To flow && spread suddenly; to rush; as, blood flushes
;   into the face.
;   [1913 Webster]
;
;'PlaSa' Sabxa 'olda iMgaliSa' Sabxa 'PlUSena' se vyuwpanna hE jisakA arWa 'Upara ko udZanA yA BexanA' WA. jisase PrAMsIsI BARA meM 'PlajZa' Sabxa AyA jisakA arWa 'pravAha' ho gayA. 
;
;isakA arWa kuCa nimnaprakAra se vikasiwa huA lagawA hE --
;
;acAnaka bahanA - gawipUrvaka pravAha - jaba mana meM koI Avega howA hE wo rakwa BI cehare para gawi se AwA hE jisase cehare para lAlI A jAwI hE - cehare para lAlimA CAnA
;
;isa Sabxa kA anwarnihiwa sUwra kuCa isa prakAra xiKawA hE --
;
;anwarnihiwa sUwra ;
;
;                             wIvra_pravAha{acAnaka} 
;                                  |
;                      |-----------|-----------|
;                      |                       |
;                   pravAhiwa_karanA[honA]        pravAha
;                    (pAnI_bahAnA)               |-----out-----bAhara_nikAlanA
;                                             (Avega)
;                                               |_kA_pariNAma 
;                                            |--------|
;                                            |        |
;                                           lAlimA   bahAra
;                                    (rakwa kA pravAha) ( (PUla_KilanA)  
;        
;     
;"flush out" meM 'pravAha bAhara nikAlane' kA arWa A jAwA hE. 
;
;isa Sabxa kA eka anya arWa 'samawala' BI hE. GCIDE ke anusAra yaha purAnA prayoga hE.
;
;	(Arch. & Mech.) Unbroken or even in surface; on a level with the
;   adjacent surface; forming a continuous surface; as, a flush panel; a
;   flush joint.
;   [1913 Webster]
; 
;kyoMki yaha arWa viSiRta prayoga kRewra se hE Ora 'flush' ke anya arWoM se Binna hE awaH ise alaga mAna lenA TIka hogA.
; 
;jahAz waka anwima uxAharaNa meM 'flush' ke arWa kA praSna hE, yaha wASa ke eka Kela kA nAma hE Ora isa Kela meM 'eka se pawwa AnA' mahawvapUrNa howA hE. awaH isako 'bahAra' se jodZA jA sakawA hE. isaprakAra isa Sabxa kA sUwra banegA -
;
;sUwra : pravAha{wIvra_acAnaka}[>lAlimA]/samawala 
