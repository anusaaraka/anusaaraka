
(defrule back0
(declare (salience 5000))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 -)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " back.clp	back0  "  ?id "  " ?id1 "  -  )" crlf))
)

(defrule back1
(declare (salience 4900))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xAvA_CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " back.clp	back1  "  ?id "  " ?id1 "  xAvA_CodZa_xe  )" crlf))
)

;The landlord had to back down.
;jamIMxAra ko xAvA CodZa xenA padZA
(defrule back2
(declare (salience 4800))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vAyaxe_se_mukara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " back.clp	back2  "  ?id "  " ?id1 "  vAyaxe_se_mukara_jA  )" crlf))
)

;He backed out of his earlier promise.
;vaha apane vAyaxe se mukara gayA
(defrule back3
(declare (salience 4700))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " back.clp	back3  "  ?id "  " ?id1 "  hata_jA  )" crlf))
)

;He backed out of the driveway.
;vaha drAiva-ve se hata gayA
(defrule back5
(declare (salience 4500))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " back.clp	back5  "  ?id "  " ?id1 "  pICe_hata  )" crlf))
)

(defrule back6
(declare (salience 4400))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) far)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  back.clp 	back6   "  ?id "  pICe )" crlf))
)

(defrule back7
(declare (salience 4300))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 his)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pITa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  back.clp 	back7   "  ?id "  pITa )" crlf))
)

(defrule back8
(declare (salience 4200))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApisa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  back.clp 	back8   "  ?id "  vApisa )" crlf))
)

(defrule back9
(declare (salience 4100))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 street)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  back.clp 	back9   "  ?id "  pICalA )" crlf))
)

;He stays in the back street.
(defrule back10
(declare (salience 4000))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id backed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id teka_xiyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  back.clp  	back10   "  ?id "  teka_xiyA_huA )" crlf))
)


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-Feb-2014
;replaced (- ?id 1) with variable name id2 in assert and printout statement of action part.
;Added by Meena(1.4.11)
;We were bunched up at the back of the room. (link)
(defrule back15
(declare (salience 4100))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
;(or(viSeRya-of_saMbanXI  ?id ?id1)(kriyA-at_the_back_of_saMbanXI ?id3 ?id1)
(kriyA-at_saMbanXI  ?id1 ?id)
(id-word ?id2 on|at)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id   ?id2  pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  back.clp      back15   "  ?id "   "?id2"   pICe )" crlf))
)



;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-Feb-2014
;Removed variables " =(- ?id 1)  =(+ ?id 1) " from assert and print statement.
;Modified by Meena(1.4.11)
;We were bunched up at the back of the room.(OL)
;Added by Meena(26.9.09)
;He wrote the date on the back of the photograph .
;He stood at the back of the stage .
(defrule at_the_back_of
(declare (salience 4000))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-on_saMbanXI  ?kri ?id)(kriyA-at_saMbanXI  ?kri ?id));added by Garima Singh
(viSeRya-of_saMbanXI  ?id ?);added by Garima Singh
;(or(viSeRya-of_saMbanXI  ?id ?id1)(kriyA-at_the_back_of_saMbanXI ?id3 ?id1)(kriyA-at_saMbanXI  ?id3 ?id));commented by Garima Singh
(id-word ?id2 on|at)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id2  pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  back.clp      at_the_back_of   "  ?id " " ?id2"  pICe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 09-jan-2014
;He leaned back on the chair.
;वह कुर्सी पर पीछे झुका
(defrule back14
(declare (salience 5000))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(id-root ?kri lean);added by Garima Singh(25-jan-2014)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  back.clp 	back14   "  ?id "  pICe )" crlf))
)


;**************DEFAULT RULES*************************


(defrule back11
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pITa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  back.clp 	back11   "  ?id "  pITa )" crlf))
)

(defrule back12
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICe_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  back.clp 	back12   "  ?id "  pICe_ho )" crlf))
)

;"back","VT","1.pICe_honA`"
;We must not turn back to our duties.
;hameM apane karwavyoM se pICe nahIM hatanA cAhie.
;--"2.samarWana_xenA[pAnA]
;She is backed by the ruling party in her state.
;--"3.sahArA_xenA"
;Some government agency has to back the research project.
;
;
;LEVEL 
;
;
;                  `back' sUwra (nibanXa)
;                  ------
;
;`back' ke viviXa prayoga--
;
;"back","N","1.pITa" 
;                  ---- < pICe
;He hurt his back in an accident.
;eka xurGatanA meM usakI pITa meM cota laga gayI.
;
;--"2.piCalA_hissA" 
;                  ---- < pICe
;Usually girls tie knot on the back of their head.
;prAya: ladZakiyAz cotI apane sara ke piCale_hisse meM bAzXawI hE.
;
;"back","Adj","1.pICe_kA"
;                  ---- < pICe
;The house has a beautiful back view.
;Gara ke pICe kA xqSya bahuwa sunxara hE.
;
;"back","Adv","1.vApasa"
;                  ---- < pICe (kI ora) 
;On hearing the news of his father's death Sachin returned back to India.
;apane piwA kI mqwyu kI Kabara sunakara sacina BArawa vApasa A gae.
;
;--"2.pICe_kI_ora" 
;                  ---- < pICe
;She kept looking back for her friend.
;vaha apane 
;
;--"3.niyaMwraNa_meM  
;                  ---- < pUrva sWiwi < pICe
;She could no longer hold back her laughter.
;
;--"4.pahale"  
;                  ---- < pICe (kAla kI xqRti se)
;I saw the film a few years back.
;
;"back","VT","1.pICe_honA`"  
;                  ---- < pICe 
;We must not turn our back to our duties.
;hameM apane karwavyoM se pICe nahIM hatanA cAhie.
;
;--"2.samarWana_xenA[pAnA] 
;                  ---- < pICe kI ora se sWirawA xenA yA pAnA(apane samawulya
;                                       ko yA apane se SakwiSAlI ko < pICe 
;She is backed by the ruling party in her state.
;--"3.sahArA_xenA"  
;                  ---- < pICe kI ora se sWirawA xenA(apane se kamajora ko) < pICe
;Some government agency has to back the research project.
;
;--------------------------------------------------------------------
;
;sUwra : pITa[<pICe`]
;---------
;
;    `back' Sabxa ke xiye gaye viviXa prayogoM se hinxI BARA meM viviXa arWa 
;xIKawe hEM . yaxi hama WodA XyAna xeM wo saBI meM eka mUlArWa nihiwa xeKawe hEM, jo saBI
;arWoM meM vixyamAna hE . vaha hE- pICe kA BAva . nIce ke SabxoM ke sAWa xI huI 
;tippaNiyoM se yaha WodA spaRta howA hE . jahAz WodI aspaRtawA hE, unakA vivaraNa yahAz
;xeKawe hEM .      
;                  
;-- `vApasa'- koI apane sWAna se Age jAwA yA baDawA hE Ora pahuzce hue sWAna se
;yaxi vaha punaH apane pUrva sWAna kI ora AwA hE wo vaha pICe kI ora AwA hE . yaha
;pICe kI ora AnA hI vApasa kahalAwA hE . 
;
;-- `niyanwraNa meM'- svaBAva saxA niyanwraNa meM rahawA hE . svaBAva se baxalAva kI 
;sWiwi aniyanwraNa kI sWiwi hE . aniyanwraNa kI sWiwi se punaH niyanwraNa meM 
;pahuzcanA pICe kI ora jAnA samaJA jAwA hE . 
;
;-- `pahale'- kAla Age baDawA jAwA hE(bIwawA jAwA hE) manuRya kI xqRti meM . jaba 
;isa xqRti se pICe kI(bIwe hue) ora kA ulleKa karanA howA hE wo vaha `pahale' Sabxa
;se uxXqwa howA hE . 
;
;-- `sahArA xenA'- sahArA xene meM kisI ko sWirawA xI jAwI hE . sWirawA pICe kI 
;ora se xiyA jAwA hE . (sahArA xenevAlA sahArA lenevAle ko apane samakRa raKakara
;kisa rUpa meM sahArA xiyA jAye, nirNaya kara, xewA hE . isa xqRti se sahArA xenevAlA 
;sahArA lenevAle ke pICe huA . yA EsA socA jA sakawA hE ki sahArA sWirawA xewI hE .
;sWirawA xene kI sWiwi pICe kI ora se mAnA jAwA hE .)  
;
;-- `samarWana xenA'- samarWana prAyaH apane se aXika sAmarWyaSAlI ko xiyA jAwA hE (yA vaha
;samarWana xiye jAnevAle kA samarWana pAkara aXika sAmarWyaSAlI howA hE) . samarWana 
;pAnevAlA sAmane xIKawA hE . samarWana xenevAlA pICe rahawA hE . isa xqRti se yaha pICe 
;kI ora se sWirawA xenA yA pAnA huA .  
; 
;
(defrule back13
(declare (salience 3700))
(id-root ?id back)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id backing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samarWana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  back.clp  	back13   "  ?id "  samarWana )" crlf))
)

;"backing","N","1.samarWana"
;Sachin has a large backing in India.
;--"2.saMgawa"
;Zakir Hussain provided the tabla backing to his vocal recital.
;
