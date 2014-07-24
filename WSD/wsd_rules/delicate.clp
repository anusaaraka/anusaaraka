
(defrule delicate0
(declare (salience 4500))
(id-root ?id delicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAjZuka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delicate.clp 	delicate0   "  ?id "  nAjZuka )" crlf))
)


;The doctor did a delicate surgery.             ;sentence of this file
;dOYktara ne eka bahuwa kuSalawApUrNa ApareSana kiyA.
;The eye surgery normally needs delicate handling.              ;sentence of this file
;आँख शल्य चिकित्सा को सामान्यतः कुशलतापूर्ण प्रबन्ध की आवश्यकता है .
;@@@ added by Pramila(BU) on 06-12-2013
(defrule delicate1
(declare (salience 4900))
(id-root ?id delicate)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 handling|surgery|operation)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuSalawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delicate.clp 	delicate1   "  ?id "  kuSalawApUrNa )" crlf))
)

;The dogs have a very delicate sense of smell.
;kuwwoM kI nAka bahuwa saMvexanaSIla howI hE.       ;sentence of this file
;@@@ added by Pramila(BU) on 06-12-2013
(defrule delicate2
(declare (salience 4900))
(id-root ?id delicate)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 sense)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMvexanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delicate.clp 	delicate2   "  ?id "  saMvexanaSIla )" crlf))
)

(defrule delicate3
(declare (salience 4000))
(id-root ?id delicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAjZuka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delicate.clp 	delicate3   "  ?id "  nAjZuka )" crlf))
)

;"delicate","Adj","1.nAjZuka/komala"
;Rose is a delicate flower.
;Silk is a delicate fabric.
;The baby's skin is very delicate .
;The child has a delicate constitution.
;A new born baby has a delicate skin.
;He advised the delicate handling of the situation by his wife.
;The doctor did a delicate surgery.
;This tray is very delicate.
;Crockery made of bone china is extremely delicate.
;--"2.sUkRma"
;The delicate carvings on the temple wall are very impressive.
;--"3.kuSalawApUrNa"
;The eye surgery normally needs delicate handling.
;--"4.saMvexanaSIla"
;The dogs have a very delicate sense of smell.
;
;
;LEVEL 
;Headword : delicate
;
;
;Examples --
;
;"delicate","Adj","1.nAjZuka/komala"
;Rose is a delicate flower.
;gulAba eka nAjZuka PUla hE.
;Silk is a delicate fabric.
;reSama eka nAjZuka kapadZA hE.
;The baby's skin is very delicate .
;SiSu kI wvacA bahuwa komala howI hE.
;The child has a delicate constitution.
;bacce kI sehawa nAjZuka howI hE.
;This tray is very delicate.
;yaha tre bahuwa nAjZuka hE.
;Crockery made of bone china is extremely delicate.
;bona cAinA se bane barwana bahuwa nAjZuka howe hEM
;--"2.sUkRma" <---sUkRmawA se kiyA huA <-- xeKane meM nAjZuka 
;The delicate carvings on the temple wall are very impressive.
;manxira kI xIvAroM para banI sUkRma nakkASI bahuwa praBAvapUrNa hE.
;--"3.kuSalawApUrNa"  <--nAjuka DaMga se
;The doctor did a delicate surgery.
;dOYktara ne eka bahuwa kuSalawApUrNa ApareSana kiyA.
;The eye surgery normally needs delicate handling.
;AzKoM ke ApareSana meM kuSalawA kI apekRA howI hE.
;--"4.saMvexanaSIla"
;The dogs have a very delicate sense of smell.
;kuwwoM kI nAka bahuwa saMvexanaSIla howI hE.  <--sUkRma ko BI sUzGa le
;
;sUwra : nAjZuka[>sUkRma]

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_delicate1
(declare (salience 4900))
(id-root ?id delicate)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 handling|surgery|operation)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuSalawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " delicate.clp   sub_samA_delicate1   "   ?id " kuSalawApUrNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_delicate1
(declare (salience 4900))
(id-root ?id delicate)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 handling|surgery|operation)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuSalawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " delicate.clp   obj_samA_delicate1   "   ?id " kuSalawApUrNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_delicate2
(declare (salience 4900))
(id-root ?id delicate)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 sense)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMvexanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " delicate.clp   sub_samA_delicate2   "   ?id " saMvexanaSIla )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_delicate2
(declare (salience 4900))
(id-root ?id delicate)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 sense)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMvexanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " delicate.clp   obj_samA_delicate2   "   ?id " saMvexanaSIla )" crlf))
)
