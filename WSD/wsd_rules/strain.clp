
(defrule strain0
(declare (salience 5000))
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
(declare (salience 4900))
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
