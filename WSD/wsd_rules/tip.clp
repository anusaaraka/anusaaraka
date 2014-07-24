;@@@ Added by Prachi Rathore[4-2-14]
;They were tipped off that he might be living in Wales.[oald]
;उन्हे सुचित किया गया था कि शायद वह वेल्स में रह रहा है . 
(defrule tip2
(declare (salience 5000))
(id-root ?id tip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 suciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tip.clp	tip2  "  ?id "  " ?id1 " suciwa_kara)" crlf))
)

;@@@ Added by Prachi Rathore[4-2-14]
;We'll have to tip the sofa up to get it through the door.[oald]
;हमें दरवाजे में से इसे निकालने के लिए सोफे को उलट देना पडेगा .
(defrule tip3
(declare (salience 5000))
(id-root ?id tip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ulata_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tip.clp	tip3  "  ?id "  " ?id1 " ulata_xe)" crlf))
)

;@@@ Added by Prachi Rathore[4-2-14]
;The mug tipped over, spilling hot coffee everywhere.[oald]
;प्याला सर्वत्र गरम कॉफी छलकाता हुआ उलट गया.
(defrule tip4
(declare (salience 5000))
(id-root ?id tip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 over)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ulata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tip.clp	tip4  "  ?id "  " ?id1 " ulata_jA)" crlf))
)

;@@@ Added by Prachi Rathore[4-2-14]
;Three men were arrested after police were tipped off about the raid.[oald]
; पुलीस के धावे के बारे में आगाह करने  के बाद तीन आदमी पकडे गये थे. 
(defrule tip5
(declare (salience 5100))
(id-root ?id tip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
(kriyA-about_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AgAha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tip.clp	tip5  "  ?id "  " ?id1 " AgAha_kara)" crlf))
)

;@@@ Added by Prachi Rathore[4-2-14]
;Did you remember to tip the waiter? [oald]
;क्या आपको वेटर को बख्शीश देना याद रहा? 
(defrule tip6
(declare (salience 5000))
(id-root ?id tip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 waiter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baKSISa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tip.clp 	tip6   "  ?id "  baKSISa_xe )" crlf))
)

;xxxxxxxxxxxxxx default rule xxxxxxxxxxxx
(defrule tip0
(declare (salience 5000))
(id-root ?id tip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agraBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tip.clp 	tip0   "  ?id "  agraBAga )" crlf))
)

;"tip","N","1.agraBAga"
;The ship'Titanic' sunk after hitting the tip of the iceberg.
;--"2.suJAva"
;He got a tip on the stock market.
;
(defrule tip1
(declare (salience 4900))
(id-root ?id tip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tip.clp 	tip1   "  ?id "  sirA_lagA )" crlf))
)

;"tip","VT","1.sirA_lagAnA"
;The hunter tipped the arrow with poison.
;--"2.baKSISa_xenA"
;  Remember to tip the waiter.
;--"3.CU_jAnA"
;The ball tipped the edge of the bat.
;
