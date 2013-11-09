
(defrule lock0
(declare (salience 5000))
(id-root ?id lock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jela_meM_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lock.clp	lock0  "  ?id "  " ?id1 "  jela_meM_dAla  )" crlf))
)

;The police caught the thief && locked him up
;pulisa ne cora ko pakadZA Ora jela meM dAla xiyA
(defrule lock1
(declare (salience 4900))
(id-root ?id lock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jela));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " lock.clp lock1 " ?id "  jela )" crlf)) 
)

(defrule lock2
(declare (salience 4800))
(id-root ?id lock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lock.clp	lock2  "  ?id "  " ?id1 "  jela  )" crlf))
)

(defrule lock3
(declare (salience 4700))
(id-root ?id lock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " lock.clp lock3 " ?id "  banxa_kara )" crlf)) 
)

(defrule lock4
(declare (salience 4600))
(id-root ?id lock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lock.clp	lock4  "  ?id "  " ?id1 "  banxa_kara  )" crlf))
)

(defrule lock5
(declare (salience 4500))
(id-root ?id lock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lock.clp 	lock5   "  ?id "  wAlA )" crlf))
)

(defrule lock6
(declare (salience 4400))
(id-root ?id lock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlA_lagA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lock.clp 	lock6   "  ?id "  wAlA_lagA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  lock.clp      lock6   "  ?id " ko )" crlf)
)
)

;"lock","V","1.wAlA lagAnA"
;Lock the door please!
;--"2.Pazsa jAnA"
;The scooter skidded because the brakes got locked suddenly.
;
;LEVEL 
;
;
;
;"lock"
;
;OHG - Loc
;OHG - l  Skr - ?? ruj
;
;yahAz xo asaMbanXa arWa hEM. inakA srowa (OHG=olda hAi jarmana, Skr=saMskqwa)
;BI alaga alaga hE.
;
;wAlA
;Put the lock on the table
;bAzXa{prAkqwika}
;The boat had to be taken through the lock carefully.
;gucCA
;A lock of hair fell on her forehead.
;The basket had a lock of wool blue in color.
;
;yahAz sUwra hogA :-
;
;sUwra : wAlA`/gucCa 
;
;xono SabxoM ke bIca '/' isa bAwa kA xyowaka hE ki ye xo alaga alaga arWa hEM
;
;'wAlA`' meM '`' cihna yaha bawAwA hE ki 'yahAz arWa mAwra wAlA hI nahIM 
;usase aXika BI kuCa hE'.
;
;kisI BI Sabxa ke xo arWa yaxi bilkula alaga alaga lagawe hEM wo yaha
;kEse nirXAriwa kareM ki usa Sabxa kA mUla arWa eka hI hE yA xo ?
;
;EsI sWiwi meM usa Sabxa kI etymology xeKanA sahAyaka hogA. jEse Upara
;'lock' Sabxa ke xo arWoM ke nirXAraNa meM unake xo alaga alaga swrowa sahAyaka
;sixXa howe hEM.
;
;'etymology' kI sahAyawA se arWa nirXAraNa meM kAPI AsAnI ho jAwI hE. isakA 
;eka Ora uxAharaNa aMgrejZI Sabxa 'passage' meM BI xeKiye:-
;
;
