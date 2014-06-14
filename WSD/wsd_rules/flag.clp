; Rule removed by Krithika 4/12/2013 as Flagstone has a different root word
;(defrule flag0
;(declare (salience 5000))
;(id-root ?id flag)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id flagged )
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_word_mng ?id pawWara_jadanA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flag.clp  	;flag0   "  ?id "  pawWara_jadanA )" crlf))
;)	
;"flagged","Adj","1.pawWara_jadanA"
;The courtyard is flagged with flagstone.
;
;_____________________________________________________________________
; $$$ Modified by Krithika 7/12/2013
; Changed the meaning from hAWa_xekara_roka to rukane_kA_saMkewa_xe
;You might be able to flag the car down? [OALD]
;kyA Apa gAdZI ko rukane kA saMkewa xe sakawe ho?
(defrule flag1
(declare (salience 4900))
(id-root ?id flag)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
;(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rukane_kA_saMkewa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flag.clp	flag1  "  ?id "  " ?id1 "  rukane_kA_saMkewa_xe  )" crlf))
)
;_____________________________________________________
; Modified by Krithika 7/12/2013  Changed the meaning from JaMdA to JaNdA
; Removed the salience
;"flag","N","1.JaMdA"
;National flag is flown on all Government Buildings. [Old clp]
; rARtra Xvaja saBI sarakArI imArawoM para laharAyA jAwa hE.
(defrule flag2
;(declare (salience 4800))
(id-root ?id flag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JaNdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flag.clp 	flag2   "  ?id "  JaNdA )" crlf))
)
;__________________________________________________________________
;--"2.eka_waraha_kA_pedZa"
;Flag plant normally grows near water.
;__________________________________________________________________
; Modified by Krithika 7/12/2013
; Removed the salience as it is the default rule
(defrule flag3
;(declare (salience 4700))
(id-root ?id flag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flag.clp 	flag3   "  ?id "  saMkewa_xe )" crlf))
)
;_________________________________________________________________
; @@@ Added by Krithika 7/12/2013
;  The conversation was flagging. [Cambridge]	
; vArwAlApa PIkA pada rahA WA.
(defrule flag4
(declare (salience 4700))
(id-root ?id flag)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-word ?id flagging)
(id-cat_coarse ?id verb|adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id PIkA_pada_rahA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  flag.clp 	flag4   "  ?id "  PIkA_pada_rahA )" crlf))
)
; ____________________________________________________________________________
; @@@ Added by Krithika 9/12/2013
; All items in this shop are flagged to indicate the prices. [old clp]
;isa xukAna meM saba viRaya mUlya sUciwa karane ke lie tEga kie gaye hEM.
(defrule flag5
(declare (salience 4700))
(id-root ?id flag)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1) (kriyA-subject  ?id ?id1))
(id-root ?id1 file|record|item)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tEga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flag.clp 	flag5	   "  ?id "  tEga_kara )" crlf))
)
;____________________________________________________________
; @@@ Added by Krithika 9/12/2013
; I was starting to flag after the ninth mile. [Cambridge]
; mEM navAz mIla xUra ke bAxa DilA padane Suru_ho rahA WA.
(defrule flag6
(declare (salience 4700))
(id-root ?id flag)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DIlA_pada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flag.clp 	flag6   "  ?id "  DIlA_pada )" crlf))
)
;###############################Needs to be handled ############################
; Flag plant normally grows near water. ;--"2.eka_waraha_kA_pedZa"
; You might be able to flag the car down? [Parser problem]
; I managed to flag down a passing police car. [Parser problem]
; I was starting to flag after the ninth mile. [Flag is a verb]
; The conversation was flagging. [Flagging is a verb]
; Due to age the chairman's interest in the company was flagging. [Flagging is a verb]
;###############################Additional examples#############################
;Due to age the chairman's interest in the company was flagging. 
; Flag any files that might be useful later.
; We'll flag the records of interest in the database and then we can give you a print-out.

