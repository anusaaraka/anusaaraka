;He carved out a gold watch in the game.
;usane Kela meM sone kI GadZI prApwa kI
(defrule carve0
(declare (salience 5000))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carve.clp	carve0  "  ?id "  " ?id1 "  prApwa_kara  )" crlf))
)


;He always carve up the money between his two sons.
;vaha hameMSAM apane xo betoM ke bIca pEsA bAztawA hE
(defrule carve1
(declare (salience 4900))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carve.clp	carve1  "  ?id "  " ?id1 "  bAzta  )" crlf))
)


;$$$  Modified by Preeti(11-4-14)
;Who is going to carve the turkey? [Oxford Advanced Learner's Dictionary]
;pIrU tukadoM_meM kAtanA kOna jA rahA hE?
;He carved while I made the gravy. [merriam-webster.com]
;usane jaba ki mEMne rasA banAI tukadoM_meM kAtA.
(defrule carve2
(declare (salience 4800))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 up)
;(kriyA-upasarga ?id ?id1)
(or(kriyA-object ?id ?id1) (kriyA-samakAlika_kriyA  ?id ?))
(id-cat_coarse ?id verb)
;(id-root ?id1 ?str)
;(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZoM_meM_kAta));meaning changed by Preeti.
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " carve.clp	carve2  "  ?id "  tukadZoM_meM_kAta )" crlf))
)


(defrule carve3
(declare (salience 4700))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Koxakara_mUrwi_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carve.clp	carve3  "  ?id "  " ?id1 "  Koxakara_mUrwi_banA  )" crlf))
)


;$$$  Modified by Preeti(11-4-14)
;She carves in both stone and wood. [Oxford Advanced Learner's Dictionary]
;vaha  pawWara Ora lakadI xono meM nakkASI karawI hE.
(defrule carve4
(declare (salience 4500))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 up)
;(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakkASI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " carve.clp	carve4  "  ?id "   nakkASI_kara  )" crlf))
)

;$$$  Modified by Preeti(11-4-14)
;The statue was carved out of stone. [Cambridge Learner’s Dictionary]
;prawimA pawWara meM warASI gayI WI.
(defrule carve5
;(declare (salience 4300))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warASa));meaning changed by Preeti.
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carve.clp 	carve5   "  ?id "  warASa )" crlf))
;(assert (kriyA_id-object2_viBakwi ?id ke_liye))
)


;

;There is some fine carving on the wall.
(defrule carve6
(declare (salience 4500))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id carving)
(viSeRya-viSeRaNa ?id =(- ?id 1))
;(id-cat_coarse =(- ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakkASI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carve.clp      carve6   "  ?id "  nakkASI )" crlf))
)


;Carving walls is a difficult job.
(defrule carve7
(declare (salience 4400))
;(id-root ?id carve)
(id-word ?id carving)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakkASI_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carve.clp      carve7   "  ?id "  nakkASI_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  carve.clp      carve7   "  ?id " para )" crlf)
)
)

;@@@ Added by Preeti(11-4-14)
;She has carved a place for herself in the fashion world. [Oxford Advanced Learner's Dictionary]
;usane PESana viSva meM svayaM ke liye sWAna banAyA hE.
(defrule carve8
(declare (salience 4550))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id  ?id1)
(id-root ?id1 place|valley)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carve.clp	carve8   "  ?id "  banA )" crlf))
)

;@@@ Added by Preeti(11-4-14)
;They carved their initials on the desk. [Oxford Advanced Learner's Dictionary]
;unhoMne meja para apane pahale akRara ukere.
(defrule carve9
(declare (salience 4550))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ukera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carve.clp	carve9   "  ?id "  ukera )" crlf))
)

;@@@ Added by Preeti(11-4-14)
;They had carved their initials into the tree. [Cambridge Learner’s Dictionary]
;unhoMne peda para apane pahale akRara ukere We.
(defrule carve10
(declare (salience 4550))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?id1)
(id-root ?id1 tree)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ukera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carve.clp	carve10   "  ?id "  ukera )" crlf))
)


;"carve","V","1.kAta_kara_ciwra_banAnA"
;Some tourists carvename into their name on the bark.
;She carved up the chicken.(old clp)
;usane mAzsa ko cAkU se kAtA
