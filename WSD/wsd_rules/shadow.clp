
(defrule shadow0
(declare (salience 100))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyAvaw))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow0   "  ?id "  CAyAvaw )" crlf))
)

;"shadow","Adj","1.CAyAvaw"
;The shadow ministers helped in solving the scandals of ministers of ruling party.
;



;Modified by Meena (31.8.09)
;changed the spelling "paraCAzI to paraCAI" , as there were different spellings for paraCAI in this rule and in the file female_list.txt(paraCAIM)
; The shadow travels with the sun. 
;$$$ Modified by jagriti(3.1.2014)..viSeRya-det_viSeRaNa relation is not valid for following sentence so I have removed this condition.
;His [shadow] fell on the opposite wall and Nandini recognised him.
;सकी परछाई सामने की दीवार पर पड़ी और नन्दिनी उसे पहचान गयी।
(defrule shadow1
(declare (salience 100))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraCAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow1   "  ?id "  paraCAI )" crlf))
)

;"shadow","N","1.paraCAzI"
;--"2.paraCAI"
;The chair cast a shadow on the wall.
;--"3.CAyA"
;She has shadows under her eyes as she has been suffering from lack of sleep.
;--"4.CAyABAsa/marIcikA"
;You can't spend your life chasing shadows.
;
(defrule shadow2
(declare (salience 4000))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyA_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow2   "  ?id "  CAyA_dAla )" crlf))
)

(defrule shadow3
(declare (salience 100))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyA_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow3   "  ?id "  CAyA_padZa )" crlf))
)

;@@@ Added by jagriti(21.1.2014)
;It was an earlier shadow of what happened later.
;यह उसका आभास था जो बाद में घटित हुआ.
;The shadow of power. 
;शक्ति का आभास.
(defrule shadow4
(declare (salience 5000))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or (subject-subject_samAnAXikaraNa ? ?id )(and(viSeRya-of_saMbanXI  ?id ?id1)(id-root ?id1 power)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ABAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow4   "  ?id "  ABAsa)" crlf))
)

;@@@ Added by jagriti(21.1.2014)
;He felt secure in the shadow of his father. 
;उसने अपने पिता का छाया में सुरक्षित महसूस किया.
(defrule shadow5
(declare (salience 4900))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow5   "  ?id "  CAyA)" crlf))
)

;@@@ Added by jagriti(21.1.2014)
;The police shadowed her.
;पुलिस ने उसका पिछा किया . 
(defrule shadow6
(declare (salience 4800))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-by_saMbanXI  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 police)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow6   "  ?id "  piCA_kara)" crlf))
)

;@@@ Added by jagriti(21.1.2014)
;Her face was shadowed by the death of hif only son.
;उसका चेहरा उसके इकलौते बेटे की मौत से निराश हो गया था. 
(defrule shadow7
(declare (salience 4700))
(id-root ?id shadow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
(id-root ?id1 death)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASa_ho ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shadow.clp 	shadow7   "  ?id "  nirASa_ho)" crlf))
)

;"shadow","V","1.CAyA_dAlanA[padZanA]"
;Her face was shadowed by a wide-brimmed hat.
;--"2.pICe_laganA"
;He was shadowed by the police.
;
