
(defrule crop0
(declare (salience 5000))
(id-root ?id crop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_kuCa_Gatiwa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " crop.clp	crop0  "  ?id "  " ?id1 "  acAnaka_kuCa_Gatiwa_ho_jA  )" crlf))
)

;Her name cropped up in the conversation.
;usakA nAma acAnaka hI bahasa meM A gayA
(defrule crop1
(declare (salience 4900))
(id-root ?id crop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_uwpanna_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " crop.clp crop1 " ?id "  acAnaka_uwpanna_ho )" crlf)) 
)

(defrule crop2
(declare (salience 4800))
(id-root ?id crop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_uwpanna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " crop.clp	crop2  "  ?id "  " ?id1 "  acAnaka_uwpanna_ho  )" crlf))
)

(defrule crop3
(declare (salience 4700))
(id-root ?id crop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExAvAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crop.clp 	crop3   "  ?id "  pExAvAra )" crlf))
)

;"crop","N","1.pExAvAra"
;Main crops of Andhra Pradesh are rice && maize.
;--"2.samUha"
;This year's crop of junior students are very good. 
;--"3.potA"
;--"4.galaWElI"
;The pelican had three fish in the crop of his beak.
;--"5.cAbuka"
;Some riders use the crop very sparingly.
;--"6.Cote_bAla"
;Mary had a crop cut till she went to college.
;
(defrule crop4
(declare (salience 4600))
(id-root ?id crop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crop.clp 	crop4   "  ?id "  uwpanna_kara )" crlf))
)

;"crop","VI","1.uwpanna_karanA/xenA"
;She wanted her hair cropped short
;A lot of problems of new admissions cropped up.  
;
(defrule crop5
(declare (salience 4500))
(id-root ?id crop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crop.clp 	crop5   "  ?id "  kAta )" crlf))
)

;"crop","VT","1.kAtanA/wodZanA/2.Kewa_kAtanA"
;She wanted her hair cropped short
;The sheep have cropped the grass short. 
;
;LEVEL 
;Headword : crop
;
;
;Examples --
;
;1. Main crops of Andhra Pradesh are rice && maize.
;AnXra praxeSa kI pramuKa upaja cAvala Ora makkA hE.
;2. This year's crop of junior students are very good.
;isa sAla kaniRTa vixyArWioM kI Pasala bahuwa acCI hE. <---'Pasala' kA arWa yahAz hE 'hara sAla AnevAle naye vixyArWI'
;3. A lot of problems of new admissions cropped up.
;naye praveSa kI Dera samasyAez upaja AI.
;4. She wanted her hair cropped short
;use apane bAla Cote kAte hue cAhie We.
;5. The sheep have cropped the grass short.
;BedZa GAsa ko CotA kAta cuke hEM.
;6. Crop the photograph from all sides.
;Poto ko saba waraPa se kAto.
;
;uparaliKiwa vAkyoM meM "crop" ke jo Binna arWa A rahe hEM unameM saMbaMXa isa prakAra
; xiKA sakawe hEM.
;
;vAkya 1-3 meM "crop" ke lie "upaja" yA "Pasala" esA arWa TIka waraha se A rahA hE.
;
;vAkya 4 -6 meM "crop" kA jo arWa A rahA hE vaha hE kAtane kA. yaha arWa Pasala kAtane ke
;arWa se pAyA gayA hE. jEse Pasala kevala upara se kAtI jAwI hE, vEse hI, vAkya 4. meM 
;bAla, vAkya 5. meM GAsa Ora vAkya 6. meM Poto ko upara upara se kAtane kA BAva prakata ho 
;rahA hE.
;
;anwarnihiwa sUwra ;
;
;Pasala-upaja  -  Pasala_kAtanA -- >  uparI katAI -- >  kuCa Upara se kAtanA
;
;sUwra : Pasala^upaja/kAta^katAI
;
;"crop","N","Pasala^upaja"
;"crop","V","kAta-katAI"
;
;
