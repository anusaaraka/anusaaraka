
(defrule cool0
(declare (salience 5000))
(id-root ?id cool)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TaNdA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cool.clp	cool0  "  ?id "  " ?id1 "  TaNdA_kara  )" crlf))
)

;She was very angry but she's cooled down now.
;vaha bahuwa gusse meM WI lekina aba vaha SAnwa hE
;Added by human
(defrule cool1
(declare (salience 4900))
(id-root ?id cool)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TaNdA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cool.clp	cool1  "  ?id "  " ?id1 "  TaNdA_kara  )" crlf))
)

(defrule cool2
(declare (salience 4800))
(id-root ?id cool)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TaNdA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cool.clp	cool2  "  ?id "  " ?id1 "  TaNdA_ho  )" crlf))
)

(defrule cool3
(declare (salience 4700))
(id-root ?id cool)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaMdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cool.clp 	cool3   "  ?id "  TaMdA )" crlf))
)

(defrule cool4
(declare (salience 4600))
(id-root ?id cool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIwala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cool.clp 	cool4   "  ?id "  SIwala )" crlf))
)

(defrule cool5
(declare (salience 4500))
(id-root ?id cool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaNdA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cool.clp 	cool5   "  ?id "  TaNdA_kara )" crlf))
)

;"cool","VT","1.TaNdA_karanA"
;A swim in the pool should cool you(down) 
;--"2.kroXa_TaNdA_karanA"
;Cool down, do not be so angry.
;
;
;LEVEL 
;Headword : cool
;
;Examples --
;
;1.I am enjoying a cool autumn day.
;mEM SIwala Saraxa qwu ke xina kA Ananxa uTA rahA hUz.
;2.Cool greens && blues && violets.
;SIwala hare Ora nIle Ora bEMganI [raMga].
;3.Cool down, do not be so angry.
;SAMwa ho jAo, iwanA gussA mawa ho.
;4.She has a cool head.
;usakA ximAga SAMwa hE.
;5.He was given a cool reception.
;use acCe se svAgawa xiyA gayA WA.
;6.The bike cost me a cool fifty thousand.
;yaha sAikala muJe acCe se pacAsa hajZAra kI padZa gaI.
;
;vAkya 1,2 meM "cool" kA arWa "SIwala-TaMdA" EsA A rahA hE.
;vAkya 3,4 meM "cool" kA arWa "SAMwa" EsA A rahA hE.
;vAkya 5,6 meM "cool" kA arWa "acCA" EsA A rahA hE.
;
;uparaliKiwa vAkyoM meM "cool" ke jo Binna lagawe arWa A rahe hEM, unameM vAswava meM
;saMbaMXa hE.
;
;vAkya 1 Ora 2 meM A rahe arWa "SIwala-TaMdZA" ko viswqwa karane para vAkya 3 Ora 4 meM A 
;rahe arWa "SAMwa" meM usakI arWa CAyA prakata howI hE.
;wo aba hama vAkya 1-4 meM "cool" ke lie "SIwala-TaMdZA" kA arWa prayoga kara sakawe hEM.
;
;vAkya 5-6 meM "cool" kA arWa "acCe se" EsA A rahA hE.
;
;wo aba hama "cool" ke lie sUwra isa prakAra xe sakawe hE.
;
;anwarnihiwa sUwra ;
;
;TaMdA -- SIwala -jo garama nahIM yAni uwwejanA rahiwa --SAMwa/acCe_se 
;
;sUwra :TaMdA^SIwala/acCe_se
;
;
