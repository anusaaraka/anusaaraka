
(defrule name0
(declare (salience 5000))
(id-root ?id name)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) NNP)
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

;@@@ Added by Nandini (14-12-13)
;A girl named Nimisha gave me her book. 
;nimisha nAmakaraNa kI huI ladakI ne muJe usakI puswaka xI.
;(Note: 2nd parse is correct. named should be VBN. Also relation viSeRya-kqxanwa_viSeRaNa relation should be present)
(defrule name4
(declare (salience 4800))
(id-root ?id name)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-kqxanwa_viSeRaNa  ?id1  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  name.clp 	name4   "  ?id "  nAmaka )" crlf))
)

;@@@ Added by Nandini(16-1-14)
;The University laid down the syllabus for the examinations and named the textbooks.[via mail]
;viSvavixyAlaya ne parIkRAoM ke liye pATyakrama nirXAriwa kiyA Ora pATya puswakoM kA nAma xiye.
(defrule name5
(declare (salience 4950))
(id-root ?id name)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 textbook|notebook)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAma_xe))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  name.clp 	name3   "  ?id "  nAma_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  name.clp      name5   "  ?id "  kA )" crlf)
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
