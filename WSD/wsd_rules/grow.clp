
(defrule grow0
(declare (salience 5000))
(id-root ?id grow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahuwa_badZA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grow.clp	grow0  "  ?id "  " ?id1 "  bahuwa_badZA_ho  )" crlf))
)

;He has grown into of that shirt.
;yaha kamIjZa usake pahanane ke lie bahuwa badZI hE 
;
;
(defrule grow1
(declare (salience 4900))
(id-root ?id grow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XIre-XIre_pasaMxa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grow.clp	grow1  "  ?id "  " ?id1 "  XIre-XIre_pasaMxa_A  )" crlf))
)

;muJe yaha kamIjZa pasaMxa nahIM WI jaba wumane ise KarIxA WA,lekina aba XIre-XIre yaha muJe pasaMxa Ane lagI hE
;I didn't like this shirt when you bought it,but it's growing on me now.
(defrule grow2
(declare (salience 4800))
(id-root ?id grow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahuwa_badZA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grow.clp	grow2  "  ?id "  " ?id1 "  bahuwa_badZA_ho  )" crlf))
)

;He has grown out of that shirt.
;yaha kamIjZa usake pahanane ke lie bahuwa badZI hE
;Added by human
(defrule grow3
(declare (salience 4700))
(id-root ?id grow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(id-cat_coarse =(+ ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grow.clp 	grow3   "  ?id "  ho )" crlf))
)

;adj_comp_-_nervous && category=verb	ho	0
;adj_comp_-_angry && category=verb	ho	0
(defrule grow4
(declare (salience 4600))
(id-root ?id grow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grow.clp	grow4  "  ?id "  " ?id1 "  baDa  )" crlf))
)

(defrule grow5
(declare (salience 4500))
(id-root ?id grow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grow.clp	grow5  "  ?id "  " ?id1 "  baDa  )" crlf))
)

(defrule grow6
(declare (salience 4400))
(id-root ?id grow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grow.clp 	grow6   "  ?id "  baDZa )" crlf))
)

;default_sense && category=verb	upajA	0
;"grow","V","1.upajAnA"
;Sugarcane is grown mainly in Uttar Pradesh.
;
;
