
(defrule lean0
(declare (salience 5000))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id leaning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id JukAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lean.clp  	lean0   "  ?id "  JukAva )" crlf))
)

;"leaning","N","1.JukAva"
;He has rightist leanings.
;
;
(defrule lean1
(declare (salience 4900))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahAre_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lean.clp	lean1  "  ?id "  " ?id1 "  sahAre_ho  )" crlf))
)

;The blind man leaned on a stick.
;anXe vyakwi ne CadZI kA sahArA liyA
(defrule lean2
(declare (salience 4800))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZora_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lean.clp	lean2  "  ?id "  " ?id1 "  jZora_xe  )" crlf))
)

;I'll have to lean on her to work hard.
;muJe use kadZI mehanawa karane ke lie jZora xenA hogA
(defrule lean3
(declare (salience 4700))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-back_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lean.clp	lean3  "  ?id "  " ?id1 "  pICe_Juka  )" crlf))
)

(defrule lean4
(declare (salience 4600))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lean.clp	lean4  "  ?id "  " ?id1 "  pICe_Juka  )" crlf))
)

;Added by human being
(defrule lean5
(declare (salience 4500))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) over)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JukanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean5   "  ?id "  JukanA )" crlf))
)

;PP_null will absorb over && will not give the ke_upara equivalent.
;PP_null_over	JukanA	0
;pos tagger gives wrong tag, && hence category=verb condition removed
;PP_null_over && category=verb	Juka	0
;He leant over the glass counter.
(defrule lean6
(declare (salience 4400))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xubalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean6   "  ?id "  xubalA )" crlf))
)

;"lean","Adj","1.xubalA"
;She is very lean && thin. 
;--"2.kama"
;A lean harvest. 
;--"3.majjAhIna"
;(of meal) He has been advised to take a lean diet.
;
(defrule lean7
(declare (salience 4300))
(id-root ?id lean)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lean.clp 	lean7   "  ?id "  Juka )" crlf))
)

;"lean","V","1.JukanA"
;She leaned out of the window. 
;--"2.sahAre_tikanA"
;The ladder is leaning against the wall. 
;--"3.sahAre_raKanA"
;He leant his stick against the wall. 
;--"4.nirBara_honA"
;She leans upon her mother for guidance. 
;--"5.pravqwwi_honA"
;His thinking leans towards communism.
;
