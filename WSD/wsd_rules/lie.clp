
;Added by human
(defrule lie0
(declare (salience 5000))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 man)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id letA_WA))
(assert (id-H_vib_mng ?id 0))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lie.clp 	lie0   "  ?id "  letA_WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  lie.clp       lie0   "  ?id "  0 )" crlf)
))

;The beds in which the two men lay vibrated


(defrule lie1
(declare (salience 4900))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 egg)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(assert (id-H_vib_mng ?id 0))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lie.clp 	lie1   "  ?id "  xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  lie.clp       lie1   "  ?id " 0 )" crlf))
)

;They lay eggs.


(defrule lie2
(declare (salience 4800))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) still)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id letA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lie.clp 	lie2   "  ?id "  letA_WA )" crlf))
)

;particle_down_-	leta_{0/ed/en}	0



(defrule lie3
(declare (salience 4700))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lay )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nOsiKiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lie.clp  	lie3   "  ?id "  nOsiKiyA )" crlf))
)

;"lay","Adj","1.nOsiKiyA"
;A lay musician.
;
;


(defrule lie4
(declare (salience 4600))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ArAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lie.clp	lie4  "  ?id "  " ?id1 "  ArAma_kara  )" crlf))
)

;You've worked a lot,I think you should lie back now.
;wuma bahuwa kAma kara cuke ho ,aba wumheM ArAma karanA cAhie




(defrule lie5
(declare (salience 4500))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 so))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lie.clp	lie5  "  ?id "  " ?id1 "  so  )" crlf))
)

;I like to lie in on holidays.
;muJe avakASa meM sonA pasaMxa hE




(defrule lie6
(declare (salience 4400))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nirBara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lie.clp	lie6  "  ?id "  " ?id1 "  nirBara_ho  )" crlf))
)

; The decision lies with you to do it or not..
;ise karane yA na karane kA PZEsalA wuma para nirBara karawA hE




(defrule lie7
(declare (salience 4300))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 so))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lie.clp	lie7  "  ?id "  " ?id1 "  so  )" crlf))
)





(defrule lie8
(declare (salience 4100))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) on )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lie.clp 	lie8   "  ?id "  leta )" crlf))
)



(defrule lie9
(declare (salience 4000))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lay )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aviSeRajFa-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lie.clp  	lie9   "  ?id "  aviSeRajFa- )" crlf))
)





(defrule lie10
(declare (salience 3900))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lie.clp 	lie10   "  ?id "  JUTa )" crlf))
)

;"lie","N","1.JUTa"
;Whatever he has said is a pack of lies.
;



;Added by Meena(12.5.11)
;She always leaves her clothes lying about on the floor.
(defrule lie11
(declare (salience 3800))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lying)
(kriyA-kqxanwa_karma  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pade_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lie.clp       lie11   "  ?id "  pade_hue )" crlf))
)






;Salience reduced by Meena(12.5.11)
(defrule lie12
;(declare (salience 3800))
(id-root ?id lie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUTa_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lie.clp 	lie12   "  ?id "  JUTa_bola )" crlf))
)

;"lie","V","1.JUTa_bolanA"
;He lied to me about his experience.
;--"2.Bramiwa_karanA"
;The mirror does not lie.
;--"V","1.letanA"
;Lie down on the bed.
;--"2.pade_rahanA"
;A thick sheet of snow is lying all around.
;--"3.sWiwa_honA"
;The whole future lies before you. I know where my interest lies.
;--"4.sWiwi_meM_honA"
;He lies fourth in the merit list.
;
;LEVEL 
;
;
;Headword : lie
;
;Examples --
;V
;1.The corpse was lying, unattended, on the road.
;Sava rAswe para binA raKavAlI ke padZA huA WA
;
;2.His books always lie open.
;usakI kiwAbeM hameSA KulI padZI howI hE
;
;3.The snow is lying thick on the ground.
;jZamIna para GanA barPa padZA huA hE
;
;4.You are young && your whole life lies ahead of you.
;wuma javAna ho Ora wumhArI sArI jZinxagI wumhAre sAmane padZI hE
;
;5.That village lies on the Southern coast.
;vaha gAzva xakRiNI samuxra wata para sWiwa hE
;
;6.Mohan lies in the second place.
;mohana xUsare sWAna para hE    <--sWAna_para_honA<--sWiwa_honA<--sWiwi_meM_honA
;
;7.The valley lay before us.
;hamAre sAmane GAtI WI   < -- honA <--sWiwa_honA<--kI_sWiwi_meM_honA
;
;Upara xie gae vAkyoM se "lie" kriyA kA "padZA_huA_honA" EsA arWa prApwa kara sakawe 
;hEM. isa arWa ko hama Ora BI uciwa isa prakAra banA sakawe hE "[padZI_huI]sWiwi_meM honA"
;lekina pAzcave, Cate Ora sAwave vAkyo ke sanxarBoM meM yaha arWa nahIM bETa rahA hE. isalie ina sanxarBoM meM hama arWa isa prakAra spaRta kara sakawe hEM : 
;
;"[padZA_huA]_sWiwi_meM_honA"
;
;Upara liKiwa vAkyoM meM "lie" kriyA kA jo arWa A rahA hE, use hama viswqwa karake
;"lie" saMjFA kA arWa BI xe sakawe hEM jEse:
;
;N
;He found his ball in a difficult lie.
;usane apanI geMxa ko kaTina sWiwi meM padZA huA pAyA
;They will investigate the lie of the land before making any decisions.
;ve koI BI nirNaya lene se pahale sWala kI sWiwi meM honA jAzceMge
;
;
;'lie' ke kuCa anya uxAharaNa ;
;
;V
;Ravi lied to Mohan when he told him that he was not present in the room.
;ravi ne mohana se 'JUTa_bolA' jaba usane mohana se kahA ki vaha kamare meM nahIM WA.
;
;N
;It was clear from his face that he was speaking a lie.
;usake cehare se yaha sAPa WA ki vaha 'JUTa' bola rahA WA.
;
;awaH 'lie' kA eka anya arWa 'JUTa' BI howA hE. 'lie' kA sUwra hogA ;
;
;sUwra : JUTa/[[sAmane]padZA_huA]_sWiwi_meM_honA
;
;
;
