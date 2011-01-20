;FILE MODIFIED BY MEENA (26.8.09)

(defrule pick0
(declare (salience 5000))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 WodZA_sA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick0  "  ?id "  " ?id1 "  WodZA_sA_le  )" crlf))
)

;She din't like the food so just picked at on her plate.
;use Bojana pasaMxa nahIM AyA isalie usane apanI WAlI meM WodZA sA liyA
(defrule pick1
(declare (salience 4900))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 eka_ke_bAxa_eka_mArawe_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick1  "  ?id "  " ?id1 "  eka_ke_bAxa_eka_mArawe_jA  )" crlf))
)

;He picked off the enemy as they were going to attack him.
;jEse hI xuSmana ne usapara AkramaNa kiyA,vaha unheM eka ke bAxa eka mArawA gayA
(defrule pick2
(declare (salience 4800))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nArAjZa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick2  "  ?id "  " ?id1 "  nArAjZa_ho  )" crlf))
)

;As i met with her for giving an explanation-she picked on me like anything.
;jEse hI mEM use saPAI xene pahuzcA, vaha burI waraha nArAjZa ho gaI





;;A mother can picked out her child in a crowd.
;eka mAz apane bacce ko BIdZa meM BI pahacAna lewI hE
(defrule pick3
(declare (salience 4700))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?obj)
(id-cat_coarse ?id verb)
(id-root ?obj  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahacAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick3  "  ?id "  " ?id1 "  pahacAna_le  )" crlf))
)




;Added by Meena on 26.8.09
;We picked out some beautiful flowers for her.
;We picked some beautiful flowers out for her.
;We picked them out for her.
(defrule pick4
(declare (salience 4700))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?obj)
;(kriyA-for_saMbanXI  ?id ?id2)
(id-root ?obj  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str))) ;Added by Manju suggested by sukhada
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cuna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick4  "  ?id "  " ?id1 "  cuna_le  )" crlf))
)





(defrule pick5
(declare (salience 4600))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pick.clp	pick5  "  ?id "  " ?id1 "  uTA  )" crlf))
)




(defrule pick6
(declare (salience 4300))
(id-root ?id pick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pick.clp 	pick6   "  ?id "  cUna_le )" crlf))
)

;default_sense && category=verb	cuna le	0
;"pick","V","1.cuna lenA"
;She picked up the most beautiful dress.
;--"2.wodanA"
;He picked the red roses from the plant.
;--"3.sAPZa karanA"
;Please Pick the hair on the floor.
;--"4.kisI nukIlI vaswu se wAlA KolanA"
;The burglars picked the lock of strong room. 
;
;
