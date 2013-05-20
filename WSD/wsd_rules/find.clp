
(defrule find0
(declare (salience 5000))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id finding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAzca_pariNAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  find.clp  	find0   "  ?id "  jAzca_pariNAma )" crlf))
)

;"finding","N","1.jAzca_pariNAma"
;Findings of the enquiry are not in favour of the accused.
;
;
(defrule find1
(declare (salience 4900))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saccAI_kA_pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find1  "  ?id "  " ?id1 "  saccAI_kA_pawA_lagA  )" crlf))
)

;He had been stealing for years,but eventually they found him out. 
;vaha sAloM se corI kara rahA WA para unhone saccAI kA pawA lagA liyA
(defrule find2
(declare (salience 4800))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 against)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEsalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find2  "  ?id "  " ?id1 "  PEsalA_kara  )" crlf))
)

(defrule find3
(declare (salience 4700))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 against)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEsalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find3  "  ?id "  " ?id1 "  PEsalA_kara  )" crlf))
)

(defrule find4
(declare (salience 4600))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEsalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find4  "  ?id "  " ?id1 "  PEsalA_kara  )" crlf))
)

(defrule find5
(declare (salience 4500))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEsalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find5  "  ?id "  " ?id1 "  PEsalA_kara  )" crlf))
)

(defrule find6
(declare (salience 4400))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find6  "  ?id "  " ?id1 "  pawA_kara  )" crlf))
)

(defrule find7
(declare (salience 4300))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find7  "  ?id "  " ?id1 "  pawA_kara  )" crlf))
)

(defrule find8
(declare (salience 4200))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 thief)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  find.clp 	find8   "  ?id "  pawA_lagA )" crlf))
)

(defrule find9
(declare (salience 4100))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find9  "  ?id "  " ?id1 "  pawA_kara  )" crlf))
)

(defrule find10
(declare (salience 4000))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find10  "  ?id "  " ?id1 "  pawA_kara  )" crlf))
)

;Modified by sheetal(26-02-10)
;Police are still hoping to find the dead woman's killer .
(defrule find11
(declare (salience 3900))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA))
(assert (kriyA_id-object_viBakwi ?id ko));added by sheetal
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  find.clp 	find11   "  ?id "  pA )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  find.clp      find11   "  ?id "  ko )" crlf))


(defrule find12
(declare (salience 3800))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  find.clp 	find12   "  ?id "  Koja )" crlf))
)

;"find","N","1.Koja"
;Our new flat is a real find at the rent being charged.
;
;
;
(defrule find13
(declare (salience 3700))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saccAI_kA_pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find13  "  ?id "  " ?id1 "  saccAI_kA_pawA_lagA  )" crlf))
)

;He had been stealing for years,but eventually they found him out. 
;vaha sAloM se corI kara rahA WA para unhone saccAI kA pawA lagA liyA
(defrule find14
(declare (salience 3600))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 against)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEsalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find14  "  ?id "  " ?id1 "  PEsalA_kara  )" crlf))
)

(defrule find15
(declare (salience 3500))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 against)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEsalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find15  "  ?id "  " ?id1 "  PEsalA_kara  )" crlf))
)

(defrule find16
(declare (salience 3400))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEsalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find16  "  ?id "  " ?id1 "  PEsalA_kara  )" crlf))
)

(defrule find17
(declare (salience 3300))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEsalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find17  "  ?id "  " ?id1 "  PEsalA_kara  )" crlf))
)

(defrule find18
(declare (salience 3200))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find18  "  ?id "  " ?id1 "  pawA_kara  )" crlf))
)

(defrule find19
(declare (salience 3100))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find19  "  ?id "  " ?id1 "  pawA_kara  )" crlf))
)

(defrule find20
(declare (salience 3000))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id found )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  find.clp  	find20   "  ?id "  pA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  find.clp       find20   "  ?id " yA )" crlf))
)

;given_word=found && word_category=verb	$sWApanA_kara)

;"found","VT","1.sWApanA_karanA"
;Her father founded the hospital in 1958.
;
(defrule find21
(declare (salience 2900))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 thief)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  find.clp 	find21   "  ?id "  pawA_lagA )" crlf))
)

(defrule find22
(declare (salience 2800))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find22  "  ?id "  " ?id1 "  pawA_kara  )" crlf))
)

(defrule find23
(declare (salience 2700))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " find.clp	find23  "  ?id "  " ?id1 "  pawA_kara  )" crlf))
)

(defrule find24
(declare (salience 2600))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  find.clp 	find24   "  ?id "  pA )" crlf))
)

(defrule find25
(declare (salience 2500))
(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  find.clp 	find25   "  ?id "  Koja )" crlf))
)

;"find","N","1.Koja"
;Our new flat is a real find at the rent being charged.
;
;
