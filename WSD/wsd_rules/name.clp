
;$$$ Modified category 'NNP' to 'PropN' by Roja(27-12-13).Suggested by Sukhada
(defrule name0
(declare (salience 5000))
(id-root ?id name)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) PropN)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisakA_nAma_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  name.clp 	name0   "  ?id "  jisakA_nAma_WA )" crlf))
)

(defrule name1
(declare (salience 4900))
(id-root ?id name)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id named )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmakaraNa_kara))
;(assert (id-H_vib_mng ?id ed_en)) ;Suggested by Sukhada(20-05-13)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  name.clp  	name1   "  ?id "  nAmakaraNa_kara )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  name.clp       name1   "  ?id " ed_en )" crlf))
))

(defrule name2
(declare (salience 4800))
(id-root ?id name)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  name.clp 	name2   "  ?id "  nAma )" crlf))
)

(defrule name3
(declare (salience 4700))
(id-root ?id name)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmakaraNa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  name.clp 	name3   "  ?id "  nAmakaraNa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  name.clp      name3   "  ?id "  kA )" crlf)
)
)

;default_sense && category=verb	nAma_raKa	0
;"name","VT","1.nAma_raKanA"
;I have named my son Kapil.
;--"2.nAma_bawAnA/pahacAnanA"
;He named the person accused of stealing.
;--"3.niyukwa_karanA"
;He has been named the captain of the team.
;
;
