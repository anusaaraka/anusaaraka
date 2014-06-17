
;@@@ Added by jagriti(29.1.2014)
;The need of great strain for success.
;सफलता के लिये अथक प्रयास की जरूरत . 
(defrule strain2
(declare (salience 5000))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root =(- ?id 1) great)
(viSeRya-of_saMbanXI  ?id1 ?id)
(viSeRya-for_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) aWaka_prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " strain.clp strain2  "  ?id "   "(- ?id  1) " aWaka_prayAsa )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;There is strain in his hand.
;उसके हाथ में मोच है . 
(defrule strain3
(declare (salience 4900))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain3   "  ?id "  moca )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;This delay is a great strain on our patience.
;यह विलम्ब हमारे धीरज पर एक भारी दबाव है . 
(defrule strain4
(declare (salience 4800))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain4   "  ?id "  xabAva )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;Strain of writing a letter.
;पत्र लिखने की शैली . 
(defrule strain5
(declare (salience 4700))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 write)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SElI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain5   "  ?id "  SElI )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;Strain of an animal.
;एक पशु का प्रवॄति . 
(defrule strain6
(declare (salience 4600))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 animal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravQwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain6   "  ?id "  pravQwi )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;Strain of a tribe.
;जनजाति का कुल .
(defrule strain7
(declare (salience 4500))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 tribe)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain7   "  ?id "  kula )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;He strained the rubber.
;उसने रबड कसकर तानी . 
(defrule strain8
(declare (salience 4400))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 wire|rubber)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasakara_wAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain8   "  ?id "  kasakara_wAna )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;The wire was strained between poles.
;तार खम्भों के बीच कसकर ताना गया था . 
(defrule strain17
(declare (salience 4400))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-between_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasakara_wAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain17   "  ?id "  kasakara_wAna )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;He strained his rights many times.
;उसने अपने अधिकारों का कई बार उल्लंघन किया . 
(defrule strain9
(declare (salience 4300))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 right|authority)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ullaMGana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain9   "  ?id "  ullaMGana_kara )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;He strained to pass the examination.
;उसने परीक्षा उत्तीर्ण करने के लिए भरसक प्रयत्न किया .
(defrule strain10
(declare (salience 4200))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Barasaka_prayawna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain10   "  ?id "  Barasaka_prayawna_kara )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;He has strained his muscle.
;उसने अपनी पेशी को क्षति पहुँचाया है . 
(defrule strain11
(declare (salience 4100))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 muscle|heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRawi_pahuMzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain11   "  ?id "  kRawi_pahuMzcA )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;He strained his friends.
;उसने अपने मित्रों को कसकर गले लगाया . 
(defrule strain12
(declare (salience 4000))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 friend|parent)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasakara_gale_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain12   "  ?id "  kasakara_gale_lagA )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;She strained tea.
;उसने चाय छानी 
(defrule strain13
(declare (salience 3900))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 tea|oil)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain13   "  ?id "  CAna )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;The dispute has severely strained the relations between the two countries.
;विवाद ने दो देशों के बीच सम्बन्धों में गम्भीर रूप से तनाव पैदा किए हैं . 
(defrule strain14
(declare (salience 3800))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 relation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wanAva_pExA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain14   "  ?id "  wanAva_pExA_kara )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;Their constant complaints are straining my patience.
;उनकी निरंतर शिकायतें मेरे धीरज की परीक्षा ले रहीं हैं .  
(defrule strain15
(declare (salience 3700))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 patience)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parIkRA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain15   "  ?id "  parIkRA_le )" crlf))
)

;@@@ Added by jagriti(29.1.2014)
;Those cases look very heavy,don't strain yourself.
;वे मामले अत्यन्त भारी दिख रहे हैं, खुद पर अधिक भार नहीं डालो . 
(defrule strain16
(declare (salience 3600))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 yourself|myself|themself|himself|herself)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_BAra_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain16   "  ?id "  aXika_BAra_dAla )" crlf))
)

;------------------- Default rules ------------------
(defrule strain0
(declare (salience 100))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wanAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain0   "  ?id "  wanAva )" crlf))
)

;"strain","N","1.wanAva{KiMcAva}"
;It is rather hard to live with the strains of modern life.
;Mohan is under great strain in his new job.
;--"2.nasa_KiMca_jAnA"
;He has a neck strain.
;--"3.KiMcAva"
;The wire gave way under the strain.
;--"4.laya{aMSa}"
;I could hear the strains of the festive drums.
;--"5.pravqwwi{aMSa}"
;A strain of madness runs in the family.
;--"6.vaMSa"
;He is from a noble strain.
;--"7.nasala"
;Now there are strains of mosquiotes which are resistant to normal pesticides.
;
(defrule strain1
(declare (salience 100))
(id-root ?id strain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrI_Sakwi_lagAkara_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strain.clp 	strain1   "  ?id "  pUrI_Sakwi_lagAkara_xeKa )" crlf))
)

;"strain","V","1.pUrI_Sakwi_lagAkara_xeKanA/sunanA"
;I had to strain myself to listen to her as she spoke in a very low voice.
;--"2.nasa_KiMca_jAnA"
;During the last match he strained a foot muscle.
;--"3.wanAva_AnA"
;The dispute has strained the relationship between the two families.
;--"4.CAnanA"
;Strain water from the boiled noodles before adding the vegetables.
;
;LEVEL 
;Headword : strain
;
;Examples --
;
;"strain","V","1.bahuwa_XyAna_xenA"
;I had to strain myself to listen to her as she spoke in a very low voice.
;vaha iwanA XImI AvAjZa meM bola rahI WI ki sunane ke liye muJe pUrA XyAna xenA padZa rahA WA. <-- Sakwi ko carama sImA waka KIMcanA
;--"2.nasa_KiMca_jAnA"
;During the last match he strained a foot muscle.
;piCale mEca ke xOrAna usake pAzva kI nasa KiMca gayI.
;--"3.wanAva_AnA"
;The dispute has strained the relationship between the two families.
;mawaBexa ke kAraNa xono parivAroM ke sambanXoM meM wanAva A gayA hE. <--mAnasika KiMcAva uwpanna honA
;--"4.CAnanA" 
;Strain water from the boiled noodles before adding the vegetables.
;sabjZiyAz milAne ke pahale ubale hue nUdaloM ko CAna lo. <---CAnanA <--pAnI bAhara KIcanA
;
;"strain","N","1.wanAva{KiMcAva}"
;It is rather hard to live with the strains of modern life.
;AXunika jIvana ke wanAvoM ke sAwa jI pAnA jZarA muSkila hE.
;Mohan is under great strain in his new job.
;mohana kI nayI nOkarI kAPI wanAvapUrNa hE.
;--"2.nasa_KiMca_jAnA"
;He has a neck strain.
;usakI garxana meM nasa KiMca gayI hE.
;--"3.KiMcAva"
;The wire gave way under the strain.
;KiMcAva ke kAraNa {KiMcane ke jZora se} wAra tUta gayA.
;--"4.laya{aMSa}"
;I could hear the strains of the festive drums.
;muJe jaSna ke DoloM kI laya ke aMSa sunAI xe rahe We. <--laya ke vahI aMSa jo xUra waka KiMcawe cale jAez. 
;--"5.pravqwwi{aMSa}"
;A strain of madness runs in the family.
;usa parivAra meM pAgalapana kI pravqwwi hE. <--eka pravqwwi jo pIDZI xara pIDI KiMcawI calI jA rahI hE. 
;--"6.vaMSa"
;He is from a noble strain.
;vaha eka rAjya parivAra se hE. 
;--"7.nasala"
;Now there are strains of mosquiotes which are resistant to normal pesticides.
;aba macCaroM kI EsI nasaleM BI hEM jo sAmAnya kItanASaka ko baraxASwa kara jAwI hE. 
;<--jo Ama nasaloM se KiMca kara alaga calI gayI hE
;
;Upara xiye uxAharaNoM se aMgrejZI Sabxa 'strain' kA eka arWa jo uBara kara AwA
;hE vaha 'KiMcAva' kA hE ( kriyA Ora saMjFA ke pahale wIna-wIna uxAharaNa- KiMcAva,
;wanAva Ora snAyu meM KiMcAva). kriyA prayoga 'CAnanA' Ora saMjFA prayoga 'laya,
;pravqwwi, vaMSa Ora nasala' isase asambanXa lagawe hEM. paranwu XyAna se xeKane para
;saBI paraspara sambanXiwa lagane lagawe hEM.
;
;anwarnihiwa sUwra ;
;
;KiMcAva -- KiMcane{nasa_Axi} se cota laganA -KiMca kara Age jAnA{kuCa aMSa kA} 
;-kuCa aMSa KIMca kara alaga kara xenA{CAnanA}
;
;
;sUwra : KiMcAva`{alpawA_liye} 
