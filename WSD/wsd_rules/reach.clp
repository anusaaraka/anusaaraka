
(defrule reach0
(declare (salience 5000))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mez_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " reach.clp	reach0  "  ?id "  " ?id1 "  mez_jA  )" crlf))
)


(defrule reach1
(declare (salience 4800))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 waka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " reach.clp	reach1  "  ?id "  " ?id1 "  waka_jA  )" crlf))
)


(defrule reach2
(declare (salience 4600))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach2   "  ?id "  pahuzca )" crlf))
)

;"reach","N","1.pahuzca"
;The rice bag is out of my reach. 
;That job is within my reach.
;




;Modified by Meena(9.11.10)
;My car broke down when I reached Lalitpur.
(defrule reach3
(declare (salience 4500))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(or(id-cat_coarse =(+ ?id 1) PropN)(id-word =(+ ?id 1) there|here))
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach3   "  ?id "  pahuzca )" crlf)
)
)



;Modified by Meena(9.11.10)
;Passion is a must to reach your potential.
;Passion is a must to excel and to reach your potential.
(defrule reach4
(declare (salience 4200))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(assert (kriyA_id-object_viBakwi ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach4   "  ?id "  pahuzca )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reach.clp     reach4   "  ?id " waka )" crlf)
)
)

;"reach","VI","1.pahuzcanA"
;Did any news reach your ears? 
;The continous stretch of river Ganga reaches up to the West Bengal.  
;--"2.Age_baDZAnA"
;He reached out his hand for the book but it was too far away.
;--"3.PElA_honA"
;My school reaches as far as the railway line. 
;
(defrule reach5
(declare (salience 4100))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_2 ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzcA))
(assert (kriyA_id-object_viBakwi ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach5   "  ?id "  pahuzcA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reach.clp     reach5   "  ?id " waka )" crlf)
)
)

(defrule reach6
(declare (salience 4000))
(id-root ?id reach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(assert (kriyA_id-object_viBakwi ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reach.clp 	reach6   "  ?id "  pahuzca )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reach.clp     reach6   "  ?id " waka )" crlf)
)
)

;"reach","VT","1.pahuzcAnA"
;Could you reach me that book from the table.
;
;LEVEL 
;Headword : reach
;
;Examples --
;
;"reach","VI","1.pahuzcanA"
;Did any news reach your ears?
;kyA wuma waka koI samAcAra pahuzcA ?
;The continous stretch of river Ganga reaches up to the West Bengal.
;gaMgA naxI kA niranwara pravAha paScima baMgAla waka pahuzcawA hE.
;--"2.baDZAnA"
;He reached across the table for the pen.
;usane pena ke liye tebala ke pAra hAWa baDZAyA. 
;He reached out his hand for the book but it was too far away.
;kiwAba ke liye usane apanA hAWa Age baDZAyA para vaha bahuwa xUra WI.
;--"3.PElA_honA"
;My school reaches as far as the railway line.
;merA skUla relave lAina waka PElA huA hE.
;
;Could you reach me that book from the table.
;kyA wuma mejZa para (raKI) vaha kiwAba muJa waka pahuzcA xoge.  
;
;"reach","N","1.pahuzca"
;The rice bag is out of my reach.
;cAvala kA WElA merI pahuzca ke bAhara hE.
;That job is within my reach.
;vaha nOkarI merI pahuzca ke anxara hE.
;
;ukwa uxAharaNoM se 'reach' Sabxa kA mUla arWa 'pahuzca' A rahA hE jo saMjFA Ora
;kriyA arWoM meM samAna hE. kriyA prayoga meM 'baDZAnA' Ora 'PElAnA' xo 
;arWa Ora BI A rahe hEM. 'pahuzca' eka binxu se xUsare binxu waka howI hE. eka 
;se xUsare binxu waka ke 'PElAva' se 'PElAnA' arWa AwA hE. eka binxu para
;KadZe hokara xUsare binxu waka pahuzcane ke liye baDZane se 'baDZAnA' arWa BI yahAz
;SAmila ho jAwA hE.
;
;awaH isakA anwarnihiwa sUwra kuCa Ese mAnA jA sakawA hE --
;
;anwarnihiwa sUwra ;
;
;pahuzca, pahuzcA -baDZAnA -PElA_huA
;
;sUwra : pahuzca`[>PElA_huA]
;
