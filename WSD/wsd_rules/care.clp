;$$$ Modified by Preeti (4-11-13)
;She cared for me a lot in my illness though she was not a very good friend of mine.[Old CLP](wrong-Parse) 
;usane bImArI meM merI bahuwa xeKaBAla kI hAlAMki vaha merI bahuwa acCI xoswa nahIM WI.
;She moved back home to care for her elderly parents. [ Oxford Advanced Learner's Dictionary]
;vaha usake bujurga  mAz bApa kI xeKaBAla karane ke lie vApisa Gara calI gayI.
(defrule care0
(declare (salience 650))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) for)
(or (kriyA-for_saMbanXI  ?id ?id2) (kriyA-in_saMbanXI ?id ?id3))
(viSeRya-viSeRaNa  ?id2 ?id3)
(id-word ?id3 elderly|old|sick|disabled|illness)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) xeKaBAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " care.clp	care0  "  ?id "  " (+ ?id 1) "  xeKaBAla_kara  )" crlf))
)

;@@@ Added by Preeti (4-11-13)
;Would you care for a drink? [Cambridge Learner’s Dictionary]
;kyA Apa peya_yA Sarabawa lenA cAhezge?
(defrule care5
(declare (salience 700))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word  =(- ?id  2) would)
(kriyA-subject  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  care.clp	care5   "  ?id "  cAha )" crlf))
)

;@@@ Added by Preeti (4-11-13)
;Sam looked as if he did not have a care in the world. [ Oxford Advanced Learner's Dictionary]
;sEma ko xeKakara EsA lagA mAno usako koI cinwA nahIM hE.
;I felt free from the cares of the day as soon as I left the building.
;jEse hi Bavan se bAhara nikalA muJe xina ki cinwAoM se svawanwra mahasUsa huI.
(defrule care2
(declare (salience 600))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-in_saMbanXI  ?id ?id1) (viSeRya-of_saMbanXI  ?id ?id1))
(id-root ?id1 day|world)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cinwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  care.clp	care2   "  ?id "  cinwA )" crlf))
)

;@@@ Added by Preeti (4-11-13)
;She chose her words with care. [ Oxford Advanced Learner's Dictionary]
;usane XyAna se apane Sabxa cune.
;Great care is needed when choosing a used car.[ Oxford Advanced Learner's Dictionary]
;jaba eka purAnI gAdI cunanawe hEM waba [viSeRa/bahuwa_aXika] XyAna xene kI AvaSyakawA howI hE.
(defrule care3
(declare (salience 650))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-with_saMbanXI  ? ?id) (kriyA-karma  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  care.clp	care3   "  ?id "  XyAna )" crlf))
)


;#############################Defaults rule#######################################
;$$$ Modified by Preeti (4-11-13)
;A small baby requires constant care. [Cambridge Learner’s Dictionary]
;eka CotA SiSu ko niraMwara xeKaBAla kI AvaSyakawA howI hE.
(defrule care1
(declare (salience 500))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKaBAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  care.clp	care1   "  ?id "  xeKaBAla )" crlf))
)

;$$$ Modified by Preeti (4-11-13)
;Your parents are only doing this because they care about you. [Cambridge Learner’s Dictionary]
;Apake mAz bApa yaha sirPa isalie kara rahe hEM kyozki ve Apake bAre meM paravAha karawe hEM.
;He genuinely cares about his employees. [ Oxford Advanced Learner's Dictionary]
;vaha sacamuca meM usake karmacAriyoM kI paravAha karawA hE.
(defrule care4
(declare (salience 500))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paravAha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  care.clp	care4   "  ?id "  paravAha_kara )" crlf))
)
;################### Need to be handled ####################
;I have done this job more times than I care to remember.
;I do not care how long it takes - just get the job done.
;Would you care for a drink? 
;kyA Apa peya_yA Sarabawa ke lie cAhezge?
;kyA Apa peya_yA Sarabawa lenA cAhezge?[expected]
;################### Old Examples ####################
;default_sense && category=verb	cinwA_karanA/paravAha_kara	0
;"care","V","1.cinwA_karanA/paravAha_karanA"
;I really care about my work.
;
;LEVEL 
;
;
;Headword : Care
;
;Examples --
;
;"care","N"
; 1."sAvaXAnI"      
;  You should take care while handling glasses.
; SISe ke gilAsoM ko pakadZawe samaya wumhe sAvaXAnI barawanI cAhie. 
;
;2."xeKa-BAla"
;Sita decorated house with great care.
;sIwA ne Gara badZI xeKaBAla kara sajAyA.
;
;3."ciMwA" 
;Ram is free from care.
;rAma ciMwAo se mukwa hEM.
;
;"care","V"
;
;4."hiwa-rakRA_karanA"
;She is helpless to take care of herself.
;vaha apane hiwa-rakRA karane meM asamarWa hEM.
;
;
;5."cAhanA"
;Would you care for a drink ?
;kyA Apa eka peya lenA cAheMge ?
;
;6."ciMwA_karanA"
;She doesn't much care about her being unemployed.
;use apane anaEmplAyada hone kI koI viSeRa cinwA nahIM hE.
;
;uparyukwa vAkyo meM vAkya 1, 2, Ora 4 ko 'xeKaBAla' se jodZA jA sakawA hE, 
;
;1.SISe ke gilAso ko pakadZawe samaya wumhe sAvaXAnI barawanI cAhie. <--xeKaBAla kara pakadZanA cAhiye
;2. sIwA ne badZA xeKaBAla ke apanA Gara sajAyA.
;4.vaha apane hiwoM-rakRA karane me asamarWa hEM . <-- xeKaBAla karane meM 
;
;kinwu vAkya 3, 5 Ora 6 meM xeKaBAla vAlA arWa bahuwa spaRta nahIM hE
;
;
;   ???3.rAma ciMwAoM se mukwa hEM. <--ciMwAoM kI xeKaBAla nahIM karawA  
;   ???5. kyA Apa eka peya lenA cAheMge ? <---kyA Apa peya lene ke bAre meM xeKaBAla karanA cAheMge.
;   ???6. use apane anaEmplAyada hone kI koI viSeRa cinwA nahIM hE.<--koI xeKaBAla nahIM hE.
;
;kinwu ina vAkyoM meM 'cinwA' arWa praXAna ho rahA hE
;
;   3.rAma ciMwAoM se mukwa hEM. 
;   6. use apane anaEmplAyada hone kI koI viSeRa cinwA nahIM hE.
;
;vAkya 5 hAzlAki yahAz BI samasyApraxa hE. kinwu yaha muhAvarexAra prayoga hE.
;  ??? 5. kyA Apa eka peya lenA cAheMge ? <---peya lene ke bAre meM vicAra kareMge <--isa baare meM cinwana kareMge Ora lenA cAheMge
;
;eka bAwa jo ina uxAharaNoM se xiKawI hE vaha yaha ki saMjFA rUpa meM wo 'care' Sabxa
;kA praXAnawayA prayoga 'xeKaBAla' ke hI arWa meM hE. kinwu kriyA rUpa meM isameM praXAna arWa 'cinwA_karane' kA lagawA hE.
;
;7. Ram doesn't really care about other people.
;   rAma xUsaroM kI cinwA nahIM karawA.
; 
;8. All he really cares about is his work
;   vaha sirPa apane kAma kI  cinwA karawA hE.
;
;9. She doesn't care as to what happens to her children.
;   usako yaha cinwA nahIM hE ki usake baccoM kA kyA hogA.
;
;'cinwA' kA arWa saMjFA meM BI hE. awaha saMBava hE ki kriyA rUpa meM Awe Awe vahI 
;praXAna ho gayA ho. Ora kisI haxa waka 'xeKaBAla' meM BI 'cinwA' kA BAva nihiwa hE.
;ina uxAharaNoM ke AXAra para 'care' Sabxa kA nimna sUwra banAyA jA sakawA hE -
;
;
;sUwra : xeKaBAla^ciMwA_karanA
;
;################### Additional Examples ####################
;She cares deeply about environmental issues.
;He cares deeply about the environment. 
;I don't care what he thinks.
;I don't care how long it takes - just get the job done.
;She doesn't seem to care that he's been married four times before.
;I knew that Amy still cared for me.
;Would you care to join us for dinner?
;They care an awful lot about each other.
;I've done this job more times than I care to remember.
;He cared for her more than she realized.
;He didn't much care for her friends.
;How much do men share housework and the care of the children?
;I did the cooking while Guy took care of the washing up.
;My parents are going to take care of the house while we're away.
;The roads are very icy so take care when you drive home.
;She planned the trip with great care. 
;He was sixteen years old and didn't have a care in the world.

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_care0
(declare (salience 650))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) for)
(or (kriyA-for_saMbanXI  ?id ?id2) (kriyA-in_saMbanXI ?id ?id3))
(subject-subject_samAnAXikaraNa ?id2 ?id3)
(id-word ?id3 elderly|old|sick|disabled|illness)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) xeKaBAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " care.clp   sub_samA_care0   "   ?id " " (+ ?id 1) " xeKaBAla_kara )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_care0
(declare (salience 650))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) for)
(or (kriyA-for_saMbanXI  ?id ?id2) (kriyA-in_saMbanXI ?id ?id3))
(object-object_samAnAXikaraNa ?id2 ?id3)
(id-word ?id3 elderly|old|sick|disabled|illness)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) xeKaBAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " care.clp   obj_samA_care0   "   ?id " " (+ ?id 1) " xeKaBAla_kara )" crlf))
)
