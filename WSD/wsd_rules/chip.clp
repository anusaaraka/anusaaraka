
(defrule chip0
(declare (salience 5000))
(id-root ?id chip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xaKalaMxAjZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chip.clp	chip0  "  ?id "  " ?id1 "  xaKalaMxAjZI_kara  )" crlf))
)

;I tried to explain things to Seema but Rakesh kept chipping in.
;mEM sImA ko kuCa samaJAne kI koSiSa meM WI lekina rAkeSa usameM adZacana dAla rahA WA
(defrule chip1
(declare (salience 4900))
(id-root ?id chip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chip.clp 	chip1   "  ?id "  cakawI )" crlf))
)

(defrule chip2
(declare (salience 4800))
(id-root ?id chip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kone_se_tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chip.clp 	chip2   "  ?id "  kone_se_tUta )" crlf))
)

;"chip","V","1.kone_se_tUtanA"
;Her tooth chipped.
;
;LEVEL 
;Headword : chip
;
;Examples --
;1. He picked up every chip of wood from the table.
;usane lakadZI kA prawyeka 'tukadA' tebala para se uTA liyA.
;2. This glass has a chip in it.
;yaha gilAsa tUtA huA hE.
;3. He chipped my new tea cup.
;usane mere naye kapa ko kone se woda xiyA hE.
;4. The paint is chipping off the front wall.
;Age kI xIvAra se raMga tukadoM meM nikala rahA hE.
;5. He ate a plateful of chips for breakfast.
;usane jalapAna meM pletaBara ke (AlU) kI kawarI KAI.
;6. Computer chips can be as small as a child's nail.
;kompyUtara kI cipsa bAlaka ke nAKuna jiwanI CotI ho sakawI hE.
;
;uparaliKiwa vAkyoM meM "chip" ke jo arWa A rahe hEM vaha uparIwOra se Binna lagawe heM, 
;kinwu ina saBI meM kuCa saMbaMXa hE. 
;
;vAkya 1. meM "chip" kA jo arWa A rahA hE, vaha hE "tUtA huA tukadZA".
;
;vAkya 2. meM tUte hue tukadZe se viswqwa hokara "chip" kA arWa usa sWAna para lAgU 
;howA hE, jahAz se vaha tukadZA alaga howA hE. 
;
;"chip" kA jo arWa vAkya 1. Ora vAkya 2. meM saMjFA ke arWa meM AwA hE, vahI arWa 
;vAkya 3. Ora 4. meM kriyA ke arWa meM prakata ho rahA hE.
;
;vAkya 5. meM jo "chip" kA arWa A rahA hE, vaha hE "(AlU)kawarI" kA.
;Ora vAkya 6. meM jo arWa A rahA hE vaha hE kompyUtara meM upyoga honevAlI "cakawI" kA.
;
;aba kyoMki tUte hue tukade ke AkAra, AlU kI kawarI ke AkAra Ora kompyUtara kI cakawI 
;ke AkAra meM yaha samAnawA hE ki saBI pawarI jEse howe he.
;aba ina saBI ke AkAra meM jo samAnawA hE,use lekara hama "chip" kA sUwra kuCa isa prakAra xe sakawe hEM.
;
;
;anwarnihiwa sUwra ;
;
;tUtA_huA_tukadZA > jahAz_se_alaga_huA_vaha_jagaha > tukadZe-tukadZe_hone_kI_kriyA 
;     |
;     v
;    kawarI
;     |
;     v
;    cakawI
;
;    
;
;sUwra : pawarI^cakawI 
